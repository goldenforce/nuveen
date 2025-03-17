import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
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

public class CJavaNSMMoodysLTRatingMaster implements JavaRule, CJavaNvnConstants {

	private static Logger logger = Logger.getLogger(CJavaNSMMoodysLTRatingMaster);
	private boolean isDebugEnabled = logger.isDebugEnabled();

	/* Declaration of global variables */
	private CJavaNvnConfig config;
	private CJavaNvnCommons commons;

	private String msgType;
	private SegmentId entSegType;
	private SegmentId rtngSegType;

	public CJavaNSMMoodysLTRatingMaster() {
		this.isDebugEnabled = logger.isDebugEnabled();
	}

	@Override
	public boolean initialize(String[] params) {
		int paramsLength = 3;
		config = new CJavaNvnConfig();
		config.init(params, CJavaNSMMoodysLTRatingMaster, paramsLength, "=", ",");
		return config.isStatus();
	}

	@Override
	public boolean process(XMLMessage xmg, DatabaseObjectContainer doc, ProcessorContext pcx, DatabaseAccess dbc,
			NotificationCreator nct) throws GSException {
		commons = new CJavaNvnCommons(xmg, doc, pcx, dbc, nct);
		msgType = null;

		/* Print the initial incoming XML message */
		printXMLMessage(START);

		/**
		 * Validate whether the incoming message has message type attribute and
		 * is it eligible for further processing as per the rule xml
		 * configuration.
		 */
		if (validateMessageType()) {
			printXMLMessage(END);
			return true;
		} else if (isDebugEnabled)
			logger.debug("Message Type value : " + this.msgType);

		/**
		 * Validate whether the incoming message has segment type attribute and
		 * is it eligible for further processing as per the rule xml
		 * configuration.
		 */
		if (validateEntitySegmentType()) {
			printXMLMessage(END);
			return true;
		} else if (isDebugEnabled)
			logger.debug("Entity Segment Type value : " + commons.getXMLMessage().getSegmentType(this.entSegType));

		/**
		 * Validate whether the incoming message has segment type attribute and
		 * is it eligible for further processing as per the rule xml
		 * configuration.
		 */
		if (validateRatingSegmentType()) {
			printXMLMessage(END);
			return true;
		} else if (isDebugEnabled)
			logger.debug("Rating Segment Type value : " + commons.getXMLMessage().getSegmentType(this.rtngSegType));

		processLTRatingSegment(this.rtngSegType);

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

	private boolean validateEntitySegmentType() {

		this.entSegType = commons.getSegmentId(config.parametersMap.get(ENTSEGMENTTYPE).get(0));

		if (entSegType == null || entSegType.isEmpty()) {
			if (isDebugEnabled)
				logger.debug("Exiting rule since entity segment type is missing : " + this.entSegType);
			else
				logger.info("Exiting rule since entity segment type is missing.");
			return true;
		}
		return false;
	}

	private boolean validateRatingSegmentType() {

		this.rtngSegType = commons.getSegmentId(config.parametersMap.get(RTNGSEGMENTTYPE).get(0));

		if (rtngSegType == null || rtngSegType.isEmpty()) {
			if (isDebugEnabled)
				logger.debug("Exiting rule since rating segment type is missing : " + this.rtngSegType);
			else
				logger.info("Exiting rule since rating segment type is missing.");
			return true;
		}
		return false;
	}

	private void processLTRatingSegment(SegmentId segId) {

		String instrId = commons.getStringFieldFromMsg(segId, "INSTR_ID");
		logger.debug("Instr ID : " + instrId);

		if (instrId != null && !instrId.isEmpty()) {
			String query = "select isrt.rtng_cde, max(isrt.rtng_eff_tms), min(rtvl.rank_num) from ft_t_isrt isrt join ft_t_rtvl rtvl on isrt.rtng_value_oid = rtvl.rtng_value_oid join ft_t_rtng rtng on isrt.rtng_set_oid = rtng.rtng_set_oid where rtng.rtng_set_mnem in ('534','534U','534I') and rtng.end_tms is null and isrt.data_src_id = 'MOODYS_RDS' and isrt.sys_eff_end_tms is null and isrt.instr_id = :instr_id<char[11]> group by isrt.rtng_cde order by min(rtvl.rank_num)";
			List<String> params = new ArrayList<String>();
			params.add(instrId);

			HashMap<Integer, List<String>> rowNumberToRowColumnsResultMap = commons
					.getQueryResultFromDB(commons.getDbConnection(), query, params, 3);

			if (rowNumberToRowColumnsResultMap != null && !rowNumberToRowColumnsResultMap.isEmpty()) {

				String rtng_cde = rowNumberToRowColumnsResultMap.get(1).get(0);
				logger.debug("Rating Code : " + rtng_cde);

				String str_rtng_eff_tms = rowNumberToRowColumnsResultMap.get(1).get(1);
				logger.debug("Rating Effective TMS before parse : " + str_rtng_eff_tms);

				Date rtng_eff_tms = null;
				try {
					SimpleDateFormat sdf = new SimpleDateFormat("MM-dd-yyyy hh:mm:ss aa");
					rtng_eff_tms = sdf.parse(str_rtng_eff_tms);
				} catch (ParseException e) {
					e.printStackTrace();
				}
				logger.debug("Rating Effective TMS : " + rtng_eff_tms);

				query = null;
				query = "select rtvl.rtng_set_oid, rtvl.rtng_value_oid "
						+ "from ft_t_rtvl rtvl join ft_t_rtng rtng on rtng.rtng_set_oid = rtvl.rtng_set_oid "
						+ "where rtng.end_tms is null and rtng.rtng_set_mnem = :rtng_set_mnem<char[9]>"
						+ "and rtvl.end_tms is null and rtvl.rtng_cde = :rtng_cde<char[41]>";

				params.clear();
				params.add("534N");
				params.add(rtng_cde);

				rowNumberToRowColumnsResultMap.clear();
				rowNumberToRowColumnsResultMap = commons.getQueryResultFromDB(commons.getDbConnection(), query, params,
						2);

				String rtng_set_oid = rowNumberToRowColumnsResultMap.get(1).get(0);
				logger.debug("Rating Set OID : " + rtng_set_oid);

				String rtng_value_oid = rowNumberToRowColumnsResultMap.get(1).get(1);
				logger.debug("Rating Value OID : " + rtng_value_oid);

				/*
				 * Create a new Nuveen LT Issue Rating segment
				 */
				createSegment(instrId, rtng_cde, rtng_eff_tms, rtng_set_oid, rtng_value_oid);
			}
		}
	}

	private void createSegment(String instrId, String rtng_cde, Date rtng_eff_tms, String rtng_set_oid,
			String rtng_value_oid) {
		HashMap<String, Object> isrtFieldsMap = new HashMap<String, Object>();
		isrtFieldsMap.put("INSTR_ID", instrId);
		isrtFieldsMap.put("RTNG_SET_OID", rtng_set_oid);
		isrtFieldsMap.put("RTNG_VALUE_OID", rtng_value_oid);
		isrtFieldsMap.put("RTNG_CDE", rtng_cde);
		isrtFieldsMap.put("RTNG_EFF_TMS", rtng_eff_tms);

		HashMap<String, String> isrtAttributesMap = new HashMap<String, String>();
		isrtAttributesMap.put("MATCH", "ISRT_MATCH_1");
		isrtAttributesMap.put("TSOPTION", "N");

		commons.addSegment(commons.getXMLMessage(), IssueRating,
				commons.getXMLMessage().A_D_UNKNOWN, isrtAttributesMap, isrtFieldsMap, commons.getNotificationCreator(),
				DERIVED, null);
	}
}