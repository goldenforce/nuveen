import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.apache.log4j.Logger;

import com.thegoldensource.jbre.DatabaseAccess;
import com.thegoldensource.jbre.DatabaseObjectContainer;
import com.thegoldensource.jbre.GSException;
import com.thegoldensource.jbre.JavaRule;
import com.thegoldensource.jbre.NotificationCreator;
import com.thegoldensource.jbre.ProcessorContext;
import com.thegoldensource.jbre.SegmentId;
import com.thegoldensource.jbre.XMLMessage;

public class CJavaNSMISINCUSIPIgnore implements JavaRule, CJavaNvnConstants {

	private static Logger logger = Logger.getLogger(CJavaNSMISINCUSIPIgnore);
	private boolean isDebugEnabled = logger.isDebugEnabled();

	/* Declaration of global variables */
	private CJavaNvnConfig config;
	private CJavaNvnCommons commons;

	private String msgType;
	private String tblType;
	private SegmentId isinSegId;
	private SegmentId cusipSegId;

	public CJavaNSMISINCUSIPIgnore() {
		this.isDebugEnabled = logger.isDebugEnabled();
	}

	@Override
	public boolean initialize(String[] params) {
		int paramsLength = 1;
		config = new CJavaNvnConfig();
		config.init(params, CJavaNSMISINCUSIPIgnore, paramsLength, "=", ",");
		return config.isStatus();
	}

	@Override
	public boolean process(XMLMessage xmg, DatabaseObjectContainer doc, ProcessorContext pcx, DatabaseAccess dbc,
			NotificationCreator nct) throws GSException {
		commons = new CJavaNvnCommons(xmg, doc, pcx, dbc, nct);
		msgType = null;
		tblType = null;

		/* Print the initial incoming XML message */
		printXMLMessage(START);

		/**
		 * Validate whether the incoming incoming message has message type
		 * attribute and is it eligible for further processing as per the rule
		 * xml configuration.
		 */
		if (validateMessageType()) {
			printXMLMessage(END);
			return true;
		} else if (isDebugEnabled)
			logger.debug("Message Type value : " + this.msgType);

		/**
		 * Validate whether the incoming message is an instrument.
		 */
		if (validateInstrument()) {
			printXMLMessage(END);
			return true;
		} else if (isDebugEnabled)
			logger.debug("Table Type value : " + this.tblType);

		/**
		 * Check whether ISIN segment exists in the message.
		 */
		logger.info("Looking for " + ISIN_ID_CTXT_VAL + " " + IssueIdentifier + " segment in the incoming message.");
		if (checkIsidSegment(IssueIdentifier, ISID_ID_CTXT_COL, ISIN_ID_CTXT_VAL))
			/**
			 * Check whether ISIN identifier exists in the database.
			 */
			if (!dbLookupIsid(isinSegId, ISIN_ID_CTXT_VAL))
				/**
				 * If ISIN does not exist in the database then ignore the
				 * segment.
				 */
				chgSegActNFldVal(xmg, isinSegId, ISID_ID_CTXT_COL, ISIN_ID_CTXT_VAL);

		/**
		 * Check whether CUSIP segment exists in the message.
		 */
		logger.info("Looking for " + CUSIP_ID_CTXT_VAL + " " + IssueIdentifier + " segment in the incoming message.");
		if (checkIsidSegment(IssueIdentifier, ISID_ID_CTXT_COL, CUSIP_ID_CTXT_VAL))
			/**
			 * Check whether CUSIP identifier exists in the database.
			 */
			if (!dbLookupIsid(cusipSegId, CUSIP_ID_CTXT_VAL))
				/**
				 * If CUSIP does not exist in the database then ignore the
				 * segment.
				 */
				chgSegActNFldVal(xmg, cusipSegId, ISID_ID_CTXT_COL, CUSIP_ID_CTXT_VAL);

		/* Default return to gracefully exit rule processing */
		printXMLMessage(END);
		return true;
	}

	/**
	 * Rule processing starts/ends with printing the initial/modified incoming
	 * XML message
	 */
	private void printXMLMessage(String processState) {

		switch (processState) {

		case START:
			if (isDebugEnabled)
				logger.debug("Processing start - Before XML Message processed :::::\n"
						+ commons.getXMLMessage().getXMLString());
			else
				logger.info("Processing started.");
			break;

		case END:
			if (isDebugEnabled)
				logger.debug("Processing ended - After XML Message processed :::::\n"
						+ commons.getXMLMessage().getXMLString());
			else
				logger.info("Processing ended.");
			break;
		}
	}

	private boolean validateMessageType() {

		this.msgType = commons.getMsgType();

		if (!(config.parametersMap.get(MESSAGETYPE).contains(this.msgType))) {
			if (isDebugEnabled)
				logger.debug("Exiting rule since message type is missing : " + this.msgType);
			else
				logger.info("Exiting rule since message type is missing.");
			return true;
		}
		return false;
	}

	private boolean validateInstrument() {

		this.tblType = commons.getMainEntityTableType();

		if (!(ISSU).equals(this.tblType)) {
			if (isDebugEnabled)
				logger.debug("Exiting rule since table type is not an instrument ::::: " + this.tblType);
			else
				logger.info("Exiting rule since table type is not an instrument.");
			return true;
		}
		return false;
	}

	/**
	 * Check existence of Issue Identifier segment in the incoming message
	 */
	private boolean checkIsidSegment(String segTyp, String idCtxtCol, String idCtxtVal) {

		SegmentId segId = commons.getSegmentId(segTyp, idCtxtCol, idCtxtVal);

		if (segId == null || "".equals(segId)) {
			logger.info("Segment for " + idCtxtVal + " Issue Identifier is not present in the incoming message.");
			return false;
		} else {
			logger.info("Segment for " + idCtxtVal + " Issue Identifier is present in the incoming message.");

			switch (idCtxtVal) {
			case ISIN_ID_CTXT_VAL:
				isinSegId = segId;
			case CUSIP_ID_CTXT_VAL:
				cusipSegId = segId;
			}
		}
		return true;
	}

	/**
	 * Check existence of incoming Issue Identifier in the database
	 */
	private boolean dbLookupIsid(SegmentId segId, String idCtxtVal) {

		String issIdVal = commons.getStringFieldFromMsg(segId, ISID_ISS_ID_COL);
		String query = "select 1 from ft_t_isid id where id.id_ctxt_typ = :id_ctxt_typ<char[21]> and id.iss_id = :iss_id<char[101]> and (id.start_tms <= sysdate() and (id.end_tms is null or id.end_tms > sysdate()))";

		List<String> params = new ArrayList<String>();
		params.add(idCtxtVal);
		params.add(issIdVal);

		HashMap<Integer, List<String>> rowNumberToRowColumnsResultMap = commons
				.getQueryResultFromDB(commons.getDbConnection(), query, params, 1);

		if (rowNumberToRowColumnsResultMap == null || rowNumberToRowColumnsResultMap.isEmpty()) {
			if (isDebugEnabled)
				logger.debug(idCtxtVal + " " + issIdVal + " in the incoming message is not present in the database.");
			else
				logger.info(idCtxtVal + " identifier in the incoming message is not present in the database.");
			return false;
		} else if (isDebugEnabled)
			logger.debug(idCtxtVal + " " + issIdVal + " in the incoming message is present in the database.");
		else
			logger.info(idCtxtVal + " identifier in the incoming message is present in the database.");
		return true;
	}

	private void chgSegActNFldVal(XMLMessage xmg, SegmentId segId, String idCtxt, String idCtxtVal) {

		/* Change action as IGNORE */
		logger.info(idCtxtVal + " " + xmg.getSegmentType(segId) + " segment action before change : "
				+ commons.getSegmentAction(segId));
		xmg.setAction(segId, xmg.A_IGNORE);
		logger.info(idCtxtVal + " " + xmg.getSegmentType(segId) + " segment action after change : "
				+ commons.getSegmentAction(segId));

		/* Change ID Context Value of actual segment */
		logger.info(xmg.getSegmentType(segId) + " segment's " + idCtxt + " value before change : "
				+ commons.getStringFieldFromMsg(segId, idCtxt));
		xmg.setFieldValue(idCtxt, segId, idCtxtVal + "1");
		logger.info(xmg.getSegmentType(segId) + " segment's " + idCtxt + " value after change : "
				+ commons.getStringFieldFromMsg(segId, idCtxt));

		/* Change ID Context value of nested segments */
		for (int i = 0; i < xmg.getSegmentCount(); i++) {

			SegmentId prtSegId = new SegmentId(i);

			for (int j = i; j < xmg.countSegmentChildren(prtSegId); j++) {

				SegmentId nstSegId = new SegmentId(i + "-" + j);
				String nstSegIdCtxVal = xmg.getStringField(idCtxt, nstSegId);

				if (nstSegIdCtxVal != null && !("".equals(nstSegIdCtxVal)) && idCtxtVal.equals(nstSegIdCtxVal)) {

					/* Change action as IGNORE */
					logger.info(idCtxtVal + " " + xmg.getSegmentType(nstSegId) + " nested segment action before change : "
							+ commons.getSegmentAction(nstSegId));
					xmg.setAction(nstSegId, xmg.A_IGNORE);
					logger.info(idCtxtVal + " " + xmg.getSegmentType(nstSegId) + " nested segment action after change : "
							+ commons.getSegmentAction(nstSegId));

					/* Change ID Context Value of actual segment */
					logger.info(xmg.getSegmentType(nstSegId) + " nested segment's " + idCtxt + " value before change : "
							+ commons.getStringFieldFromMsg(nstSegId, idCtxt));
					xmg.setFieldValue(idCtxt, nstSegId, idCtxtVal + "1");
					logger.info(xmg.getSegmentType(nstSegId) + " nested segment's " + idCtxt + " value after change : "
							+ commons.getStringFieldFromMsg(nstSegId, idCtxt));
				}
			}
		}
	}
}
