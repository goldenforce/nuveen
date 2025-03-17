import java.util.ArrayList;
import java.util.Arrays;
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

public class CJavaNREAssetNoGenerator implements CJavaNvnConstants, JavaRule {

	private static Logger logger = Logger.getLogger(CJavaNREAssetNoGenerator);
	private boolean isDebugEnabled = logger.isDebugEnabled();

	/*
	 * XMLMessage xmg = null; DatabaseObjectContainer doc = null;
	 * ProcessorContext pcx = null; DatabaseAccess dbc = null;
	 * NotificationCreator nct = null;
	 */

	/* Declaration of global variables */
	private CJavaNvnConfig config;
	private CJavaNvnCommons commons;

	private String msgClassification;

	private SegmentId pprySegId;
	private SegmentId ppidNreIdSeg;
	private String mainEntityType;
	private String ppryOid;
	private String nreIdCtxtTyp;
	private String ppidNreId;
	private String nreAssetNo;

	public CJavaNREAssetNoGenerator() {
		this.isDebugEnabled = logger.isDebugEnabled();
	}

	@Override
	public boolean initialize(String[] params) {
		int paramsLength = 1;
		config = new CJavaNvnConfig();
		config.init(params, CJavaNREAssetNoGenerator, paramsLength, "=", ",");
		return config.isStatus();
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see com.thegoldensource.jbre.JavaRule#process(com.thegoldensource.jbre.
	 * XMLMessage, com.thegoldensource.jbre.DatabaseObjectContainer,
	 * com.thegoldensource.jbre.ProcessorContext,
	 * com.thegoldensource.jbre.DatabaseAccess,
	 * com.thegoldensource.jbre.NotificationCreator)
	 * 
	 */
	@Override
	public boolean process(XMLMessage xmg, DatabaseObjectContainer doc, ProcessorContext pcx, DatabaseAccess dbc,
			NotificationCreator nct) throws GSException {

		/* Initialization of global variables */
		commons = new CJavaNvnCommons(xmg, doc, pcx, dbc, nct);
		msgClassification = null;
		pprySegId = null;
		ppidNreIdSeg = null;
		mainEntityType = null;
		ppryOid = null;
		nreIdCtxtTyp = null;
		ppidNreId = null;
		nreAssetNo = null;

		/* Print the initial incoming XML message */
		printXMLMessage(START);

		/*
		 * Validate whether: 1. The incoming incoming street ref xml message has
		 * message classification attribute 2. If it eligible for further
		 * processing as per the rule xml configuration.
		 */
		if (validateMessage()) {
			printXMLMessage(END);
			return true;
		} else if (isDebugEnabled)
			logger.debug("Message Classification value : " + commons.getMsgClassification());

		/*
		 * Fetch the Main Entity Type attribute value
		 */
		mainEntityType = commons.getMainEntityType();
		if (isDebugEnabled)
			logger.debug("Main Entity Type value in the incoming message : " + mainEntityType);

		/*
		 * Check whether Property segment exists in the incoming message
		 */
		if (checkPropertySegment()) {

			/*
			 * Check whether NRE ID segment exists in the incoming message
			 */
			checkNreIdSegment();

			/*
			 * Check existence of Asset Number in the database only if
			 * Investment ID exists
			 */
			if (dbLkpAssetNo())
				;
			else
				/* Create Asset Number */
				addAssetNoSegment();
		}

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

	private boolean validateMessage() {

		this.msgClassification = commons.getMsgClassification();

		if (!(config.parametersMap.get("MessageClassification").contains(this.msgClassification))) {
			if (isDebugEnabled)
				logger.debug("Exiting rule since message classification is missing ::::: " + this.msgClassification);
			else
				logger.info("Exiting rule since message classification is missing.");
			return true;
		}
		return false;
	}

	private boolean checkNreIdUIMsg() {

		if (mainEntityType == null || "".equals(mainEntityType)) {
			logger.info(
					"Main Entity Type value is not populated in the incoming message. Hence, exiting rule processing.");
			return false;
		} else {

			switch (mainEntityType.toLowerCase()) {

			case "invstmnt":
				nreIdCtxtTyp = INVSTMT_ID;
				break;
			case "asset":
				nreIdCtxtTyp = ASST_ID;
				break;
			case "property":
				nreIdCtxtTyp = PROP_ID;
				break;

			default:
				logger.info("Main Entity Type value is " + mainEntityType
						+ " in the incoming message. Hence, exiting rule processing.");
				return false;
			}
		}

		logger.info("Main Entity Type value is " + mainEntityType + " in the incoming UI message.");

		return true;
	}

	/**
	 * Check existence of Property segment in the incoming message
	 */
	private boolean checkPropertySegment() {

		pprySegId = commons.getSegmentId(PPRYProperty);

		if (pprySegId == null || "".equals(pprySegId)) {
			logger.info("Segment for Property not present in the incoming message. Hence, exiting rule processing.");
			return false;
		} else {

			ppryOid = commons.getStringFieldFromMsg(pprySegId, PPRY_OID);

			if (isDebugEnabled)
				logger.debug("Segment for Property : " + PPRYProperty);
			else
				logger.info("Segment for Property is present in the incoming message.");

			/* Check whether incoming message is from UI */
			if (commons.isScreenMessage()) {

				/* Perform DB lookup for main entity type */
				String dbLkpMainEntTyp = dbLkpMainEntTyp();

				/*
				 * Exit rule processing if main entity type value found in the
				 * DB does not match with the one found in the incoming message
				 */
				if (dbLkpMainEntTyp != null && !"".equals(dbLkpMainEntTyp)
						&& !dbLkpMainEntTyp.equalsIgnoreCase(mainEntityType))
					return false;
			}

			/*
			 * Check whether the UI message has Main Entity Type attribute
			 * populated
			 */
			return checkNreIdUIMsg();
		}
	}

	/*
	 * Check existence of NRE ID Property Identifier segment in the incoming
	 * message
	 */
	private void checkNreIdSegment() {

		ppidNreIdSeg = commons.getSegmentId(PPRYPropertyIdentifier, PROP_ID_CTXT_TYP, nreIdCtxtTyp);

		if (ppidNreIdSeg == null || "".equals(ppidNreIdSeg))
			logger.info("Segment for " + mainEntityType
					+ " ID Property Identifier is not present in the incoming message.");
		else {
			ppidNreId = commons.getStringFieldFromMsg(ppidNreIdSeg, PROP_ID);

			if (isDebugEnabled)
				logger.debug("Segment for " + mainEntityType + " ID Property Identifier : " + PPRYPropertyIdentifier);
			else
				logger.info("Segment for " + mainEntityType
						+ " ID Property Identifier is present in the incoming message.");
		}
	}

	private String dbLkpMainEntTyp() {

		String pptyPpryQuery = "select pt.prop_typ from ft_t_ppty pt join ft_t_ppry py on pt.ppty_oid = py.ppty_oid where py.ppry_oid = :ppry_oid<char[11]>";

		List<String> params = new ArrayList<String>();
		params.add(ppryOid);

		HashMap<Integer, List<String>> rowNumberToRowColumnsResultMap = commons
				.getQueryResultFromDB(commons.getDbConnection(), pptyPpryQuery, params, 1);

		if (rowNumberToRowColumnsResultMap == null || rowNumberToRowColumnsResultMap.isEmpty())
			logger.info("Main Entity Type is not present in the database for the Property in the incoming message.");
		else {
			if (isDebugEnabled)
				logger.debug("Main Entity Type " + rowNumberToRowColumnsResultMap.get(1).get(0)
						+ " is present in the database for the Property in the incoming message.");
			else
				logger.info("Main Entity Type is present in the database for the Property in the incoming message.");
		}

		return rowNumberToRowColumnsResultMap.getOrDefault(1, Arrays.asList("")).get(0);
	}

	/**
	 * Check existence of Asset Number in the database
	 */
	private boolean dbLkpAssetNo() {

		String ppidGQuery = "select a.prop_id from ft_t_ppid a join ft_t_ppid n on a.ppry_oid = n.ppry_oid where (a.prop_id_ctxt_typ = :a_prop_id_ctxt_typ<char[21]> and (a.start_tms <= sysdate() and (a.end_tms is null or a.end_tms > sysdate()))) and (n.prop_id_ctxt_typ = :n_prop_id_ctxt_typ<char[21]> and "
				+ ((ppidNreId == null || "".equals(ppidNreId)) ? "n.ppry_oid = :n_ppry_oid<char[11]>"
						: "n.prop_id = :n_prop_id<char[81]>")
				+ " and (n.start_tms <= sysdate() and (n.end_tms is null or n.end_tms > sysdate())));";

		List<String> params = new ArrayList<String>();
		params.add(ASSETNO);
		params.add(nreIdCtxtTyp);
		params.add((ppidNreId == null || "".equals(ppidNreId)) ? ppryOid : ppidNreId);

		HashMap<Integer, List<String>> rowNumberToRowColumnsResultMap = commons
				.getQueryResultFromDB(commons.getDbConnection(), ppidGQuery, params, 1);

		if (rowNumberToRowColumnsResultMap == null || rowNumberToRowColumnsResultMap.isEmpty()) {
			logger.info("Asset Number is not present in the database.");
			return false;
		} else {
			logger.info("Asset Number is present in the database.");
		}
		return true;
	}

	/**
	 * Create new Asset Number segment for the Property in the incoming message
	 */
	private void addAssetNoSegment() {

		nreAssetNo = commons.getFirstValDB("select nreassetnoseq('" + mainEntityType.charAt(0) + "')");

		HashMap<String, Object> parentFieldsMap = new HashMap<String, Object>();
		parentFieldsMap.compute("PPRY_OID", (k, v) -> ppryOid);
		parentFieldsMap.compute("PROP_ID", (k, v) -> nreAssetNo);
		parentFieldsMap.put("PROP_ID_CTXT_TYP", ASSETNO);

		if (ppryOid == null || "".equals(ppryOid)) {

			HashMap<String, String> nestedAttributesMap = new HashMap<String, String>();
			nestedAttributesMap.put("COPY_FROM", PPRY_OID);
			nestedAttributesMap.put("COPY_TO", PPRY_OID);

			HashMap<String, Object> nestedFieldsMap = new HashMap<String, Object>();
			nestedFieldsMap.put(PROPERTY_NME, commons.getStringFieldFromMsg(pprySegId, PROPERTY_NME));

			commons.addSegmentWithNested(commons.getXMLMessage(), commons.getNotificationCreator(), PPRYProperty,
					XMLMessage.A_REFERENCE, nestedAttributesMap, nestedFieldsMap, PPRYPropertyIdentifier,
					XMLMessage.A_D_UNKNOWN, null, parentFieldsMap);
		} else
			commons.addSegment(commons.getXMLMessage(), PPRYPropertyIdentifier, XMLMessage.A_D_UNKNOWN, null,
					parentFieldsMap, commons.getNotificationCreator(), DERIVED, null);
	}
}
