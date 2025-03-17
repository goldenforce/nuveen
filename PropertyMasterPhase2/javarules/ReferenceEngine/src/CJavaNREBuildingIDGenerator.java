import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Optional;

import org.apache.log4j.Logger;

import com.thegoldensource.jbre.DatabaseAccess;
import com.thegoldensource.jbre.DatabaseObjectContainer;
import com.thegoldensource.jbre.GSException;
import com.thegoldensource.jbre.JavaRule;
import com.thegoldensource.jbre.NotificationCreator;
import com.thegoldensource.jbre.ProcessorContext;
import com.thegoldensource.jbre.SegmentId;
import com.thegoldensource.jbre.XMLMessage;

public class CJavaNREBuildingIDGenerator implements JavaRule, CJavaNvnConstants {

	private static Logger logger = Logger.getLogger(CJavaNREBuildingIDGenerator);
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
	private SegmentId ppidBSegId;
	private String mainEntityType;
	private String ppryOid;
	private String nreBldngId;
	private String ppryAdtpAddrTyp;
	private String ppryAttTxt;

	public CJavaNREBuildingIDGenerator() {
		this.isDebugEnabled = logger.isDebugEnabled();
	}

	@Override
	public boolean initialize(String[] params) {
		int paramsLength = 1;
		config = new CJavaNvnConfig();
		config.init(params, CJavaNREBuildingIDGenerator, paramsLength, "=", ",");
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
		ppidBSegId = null;
		mainEntityType = null;
		ppryOid = null;
		nreBldngId = null;
		ppryAdtpAddrTyp = null;
		ppryAttTxt = null;

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

		if (checkPropertySegment())
			if (checkPropertyIdSegment())
				dbLkpBldngId();
			else if (dbLkpBldngIdUsingPpryOid())
				;
			else if (dbLkpMailAdd())
				;
			else {
				addBldngIdSegment();
				addAssetNoSegment();
			}

		/* Default return to gracefully exit rule processing */
		printXMLMessage(END);
		return true;
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

	private boolean checkBldgIdUIMsg() {

		if (mainEntityType == null || "".equals(mainEntityType) || !"Building".equalsIgnoreCase(mainEntityType)) {
			logger.info(
					"Main Entity Type value is not Building in the incoming UI message. Hence, exiting rule processing.");
			return false;
		} else
			logger.info("Main Entity Type value is Building in the incoming UI message.");

		return true;
	}

	private String fetchMailAddFromSegment() {

		String mailAdd1 = null;

		/* Fetch CCRF for Address segment from the message */
		SegmentId ppryCcrfSeg = commons.getSegmentId(PPRYCentralCrossReference, "CROSS_REF_PURP_TYP", "ADDRESS");

		/* CCRF for Address segment not found in the message */
		if (ppryCcrfSeg == null || "".equals(ppryCcrfSeg))
			logger.info("Address CCRF for Property segment is not present in the incoming message.");
		else {

			/* Fetch Mailing Address Type segment from the message */
			SegmentId ppryAdtpSeg = commons.getSegmentId(AddressType, "ADDR_TYP", "MAILING");

			/* Mailing Address Type segment not found in the message */
			if (ppryAdtpSeg == null || "".equals(ppryAdtpSeg))
				logger.info("Mailing Address Type for Property segment is not present in the incoming message.");
			else {
				ppryAdtpAddrTyp = "MAILING";

				SegmentId ppryMadrSeg = commons.getSegmentId(MailingAddress);

				if (ppryMadrSeg == null || "".equals(ppryMadrSeg))
					logger.info("Mailing Address for Property segment is not present in the incoming message.");
				else
					mailAdd1 = commons.getStringFieldFromMsg(ppryMadrSeg, "ADDR_LN1_TXT");
			}
		}
		return mailAdd1;
	}

	private String fetchUCAddFromSegment() {

		String mailAdd1 = null;

		/* Fetch CCRF for Address segment from the message */
		SegmentId ppryCcrfSeg = commons.getSegmentId(PPRYCentralCrossReference, "CROSS_REF_PURP_TYP", "ADDRESS");

		/* CCRF for UnConfirmed Address segment not found in the message */
		if (ppryCcrfSeg == null || "".equals(ppryCcrfSeg))
			logger.info("Address CCRF for Property segment is not present in the incoming message.");
		else {

			/* Fetch UnConfirmed Address Type segment from the message */
			SegmentId ppryAdtpSeg = commons.getSegmentId(AddressType, "ADDR_TYP", "UNCONFIRM");

			/* UnConfirmed Address Type segment not found in the message */
			if (ppryAdtpSeg == null || "".equals(ppryAdtpSeg))
				logger.info("UnConfirmed Address Type for Property segment is not present in the incoming message.");
			else {
				ppryAdtpAddrTyp = "UNCONFIRM";

				SegmentId ppryMadrSeg = commons.getSegmentId(MailingAddress);

				if (ppryMadrSeg == null || "".equals(ppryMadrSeg))
					logger.info("UnConfirmed Address for Property segment is not present in the incoming message.");
				else {
					mailAdd1 = commons.getStringFieldFromMsg(ppryMadrSeg, "ADDR_LN1_TXT");
					ppryAttTxt = commons.getStringFieldFromMsg(ppryMadrSeg, "ATTENTION_TXT");
				}
			}
		}
		return mailAdd1;
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

			ppryOid = commons.getStringFieldFromMsg(pprySegId, "PPRY_OID");

			if (isDebugEnabled)
				logger.debug("Segment for Property : " + PPRYProperty);
			else
				logger.info("Segment for Property is present in the incoming message.");

			/* Check whether the incoming message is from UI */
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
			 * Check whether the UI message has Main Entity Type attribute as
			 * value 'Building'
			 */
			return checkBldgIdUIMsg();
		}
	}

	/**
	 * Check existence of Building ID Property Identifier segment in the
	 * incoming message
	 */
	private boolean checkPropertyIdSegment() {

		ppidBSegId = commons.getSegmentId(PPRYPropertyIdentifier, "PROP_ID_CTXT_TYP", "BLDNG_ID");

		if (ppidBSegId == null || "".equals(ppidBSegId)) {
			logger.info("Segment for Building ID Property Identifier is not present in the incoming message.");
			return false;
		} else if (isDebugEnabled)
			logger.debug("Segment for Building ID Property Identifier : " + PPRYPropertyIdentifier);
		else
			logger.info("Segment for Building ID Property Identifier is present in the incoming message.");
		return true;
	}

	/**
	 * Check existence of incoming Building ID in the database
	 */
	private void dbLkpBldngId() {

		String ppidBPropId = commons.getStringFieldFromMsg(ppidBSegId, "PROP_ID");
		String ppidBQuery = "select 1 from ft_t_ppid where prop_id_ctxt_typ = :prop_id_ctxt_typ<char[21]> and prop_id = :prop_id<char[81]> and (start_tms <= sysdate() and (end_tms is null or end_tms > sysdate()))";

		List<String> params = new ArrayList<String>();
		params.add("BLDNG_ID");
		params.add(ppidBPropId);

		HashMap<Integer, List<String>> rowNumberToRowColumnsResultMap = commons
				.getQueryResultFromDB(commons.getDbConnection(), ppidBQuery, params, 1);

		if (rowNumberToRowColumnsResultMap == null || rowNumberToRowColumnsResultMap.isEmpty())
			logger.info(
					"Building ID in the incoming message is not present in the database. Hence, exiting rule processing.");
		else {
			logger.info(
					"Building ID in the incoming message is present in the database. Hence, exiting rule processing.");
		}
	}

	/**
	 * Check existence of incoming Building ID in the database using Property
	 * Oid
	 */
	private boolean dbLkpBldngIdUsingPpryOid() {

		String ppidPpryBQuery = "select prop_id from ft_t_ppid where prop_id_ctxt_typ = :prop_id_ctxt_typ<char[21]> and ppry_oid = :ppry_oid<char[11]> and (start_tms <= sysdate() and (end_tms is null or end_tms > sysdate()))";

		List<String> params = new ArrayList<String>();
		params.add("BLDNG_ID");
		params.add(ppryOid);

		HashMap<Integer, List<String>> rowNumberToRowColumnsResultMap = commons
				.getQueryResultFromDB(commons.getDbConnection(), ppidPpryBQuery, params, 1);

		if (rowNumberToRowColumnsResultMap == null || rowNumberToRowColumnsResultMap.isEmpty()) {
			logger.info(
					"Building ID is not present in the database for the Property in the incoming message. Hence, lookup with Property Name and Mailing Address details.");
			return false;
		} else {
			logger.info(
					"Building ID is present in the database for the Property in the incoming message. Hence, exiting rule processing.");
			nreBldngId = rowNumberToRowColumnsResultMap.get(1).get(0);
		}
		return true;
	}

	private boolean dbLkpMailAdd() {

		String ppryPropNme = commons.getStringFieldFromMsg(pprySegId, "PROPERTY_NME");

		String ppryAdd1 = Optional.ofNullable(fetchMailAddFromSegment())
				.orElseGet(() -> Optional.ofNullable(fetchUCAddFromSegment()).orElse(""));

		if (isDebugEnabled) {
			logger.debug("Property Name : " + ppryPropNme);
			logger.debug("Property Address Type : " + (ppryAdtpAddrTyp == null ? "" : ppryAdtpAddrTyp));
			logger.debug("Property Address Line 1 : " + ppryAdd1);
		}

		String ppryAddQuery = "select ppry.ppry_oid from ft_t_ppry ppry join ft_t_ccrf ccrf on ppry.ppry_oid = ccrf.ppry_oid join ft_t_adtp adtp on ccrf.cntl_cross_ref_oid = adtp.cntl_cross_ref_oid join ft_t_madr madr on adtp.mail_addr_id = madr.mail_addr_id join fT_t_ppty ppty on ppty.ppty_oid = ppry.ppty_oid where ppty.prop_typ = 'Building' "
				+ " and ccrf.cross_ref_purp_typ = 'ADDRESS'" + " and adtp.addr_typ = :ppryAdtpAddrTyp<char[41]>"
				+ " and upper(ppry.property_nme) = upper(:ppryPropNme<char[257]>)"
				+ " and upper(madr.addr_ln1_txt) = upper(:ppryMadrAdd1<char[501]>)"
				+ (ppryAdtpAddrTyp != null && "UNCONFIRM".equalsIgnoreCase(ppryAdtpAddrTyp)
						? " and upper(madr.attention_txt) = upper(:ppryAttTxt<char[501]>)" : "");

		List<String> params = new ArrayList<String>();
		params.add(ppryAdtpAddrTyp == null ? "" : ppryAdtpAddrTyp);
		params.add(ppryPropNme);
		params.add(ppryAdd1);
		if (ppryAdtpAddrTyp != null && "UNCONFIRM".equalsIgnoreCase(ppryAdtpAddrTyp))
			params.add(ppryAttTxt);

		HashMap<Integer, List<String>> rowNumberToRowColumnsResultMap = commons
				.getQueryResultFromDB(commons.getDbConnection(), ppryAddQuery, params, 1);

		if (rowNumberToRowColumnsResultMap == null || rowNumberToRowColumnsResultMap.isEmpty()) {
			logger.info(
					"Building Property Address in the incoming message is not present in the database. Hence, creating new Building ID.");
			return false;
		} else {

			logger.info(
					"Building Property Address in the incoming message is present in the database. Hence, raising an exception and rejecting the incoming message.");

			ppryOid = rowNumberToRowColumnsResultMap.get(1).get(0);

			commons.getXMLMessage().setFieldValue("PPRY_OID", pprySegId, ppryOid);

			dbLkpBldngIdUsingPpryOid();

			/*
			 * Commented - To be replaced with warning exception HashMap<String,
			 * String> notfcnDescMap = new HashMap<String, String>();
			 * notfcnDescMap.put("EntityType", mainEntityType);
			 * notfcnDescMap.put("Entity", mainEntityType);
			 * notfcnDescMap.put("LookupFieldData", "Property Name: " +
			 * ppryPropNme + " , " + "Mailing Address Line 1: " + ppryAdd1);
			 * CJavaNvnCommons.raiseNotifcn("STRDATA", "RULEPRC",
			 * commons.getNotificationCreator(), 359, notfcnDescMap);
			 * CJavaNvnCommons.raiseNotifcn("STRDATA", "RULEPRC",
			 * commons.getNotificationCreator(), 661, notfcnDescMap);
			 */
			// return false;
		}
		return false;
	}

	private void addBldngIdSegment() {
		/*
		 * Create new Building ID segment for the Property in the incoming
		 * message
		 */

		nreBldngId = nreBldngId == null || nreBldngId.isEmpty() ? commons.getFirstValDB("select NREBLDGIDSEQ()")
				: nreBldngId;

		HashMap<String, Object> parentFieldsMap = new HashMap<String, Object>();
		parentFieldsMap.compute("PPRY_OID", (k, v) -> ppryOid);
		parentFieldsMap.compute("PROP_ID", (k, v) -> nreBldngId);
		parentFieldsMap.put("PROP_ID_CTXT_TYP", "BLDNG_ID");

		if (ppryOid == null || "".equals(ppryOid)) {

			HashMap<String, String> nestedAttributesMap = new HashMap<String, String>();
			nestedAttributesMap.put("COPY_FROM", "PPRY_OID");
			nestedAttributesMap.put("COPY_TO", "PPRY_OID");

			HashMap<String, Object> nestedFieldsMap = new HashMap<String, Object>();
			nestedFieldsMap.put("PROPERTY_NME", commons.getStringFieldFromMsg(pprySegId, "PROPERTY_NME"));

			commons.addSegmentWithNested(commons.getXMLMessage(), commons.getNotificationCreator(), PPRYProperty,
					XMLMessage.A_REFERENCE, nestedAttributesMap, nestedFieldsMap, PPRYPropertyIdentifier,
					XMLMessage.A_D_UNKNOWN, null, parentFieldsMap);
		} else
			commons.addSegment(commons.getXMLMessage(), PPRYPropertyIdentifier, XMLMessage.A_D_UNKNOWN, null,
					parentFieldsMap, commons.getNotificationCreator(), "derived", null);
	}

	private void addAssetNoSegment() {
		/*
		 * Create new Asset Number segment for the Property in the incoming
		 * message
		 */

		HashMap<String, Object> parentFieldsMap = new HashMap<String, Object>();
		parentFieldsMap.compute("PPRY_OID", (k, v) -> ppryOid);
		parentFieldsMap.compute("PROP_ID", (k, v) -> nreBldngId);
		parentFieldsMap.put("PROP_ID_CTXT_TYP", "ASSETNO");

		if (ppryOid == null || "".equals(ppryOid)) {

			HashMap<String, String> nestedAttributesMap = new HashMap<String, String>();
			nestedAttributesMap.put("COPY_FROM", "PPRY_OID");
			nestedAttributesMap.put("COPY_TO", "PPRY_OID");

			HashMap<String, Object> nestedFieldsMap = new HashMap<String, Object>();
			nestedFieldsMap.put("PROPERTY_NME", commons.getStringFieldFromMsg(pprySegId, "PROPERTY_NME"));

			commons.addSegmentWithNested(commons.getXMLMessage(), commons.getNotificationCreator(), PPRYProperty,
					XMLMessage.A_REFERENCE, nestedAttributesMap, nestedFieldsMap, PPRYPropertyIdentifier,
					XMLMessage.A_D_UNKNOWN, null, parentFieldsMap);
		} else
			commons.addSegment(commons.getXMLMessage(), PPRYPropertyIdentifier, XMLMessage.A_D_UNKNOWN, null,
					parentFieldsMap, commons.getNotificationCreator(), "derived", null);
	}

	private String dbLkpMainEntTyp() {

		String pptyPpryQuery = "select pt.prop_typ from ft_t_ppty pt join ft_t_ppry py on pt.ppty_oid = py.ppty_oid where py.ppry_oid = :ppry_oid<char[11]>";

		List<String> params = new ArrayList<String>();
		params.add(ppryOid);

		HashMap<Integer, List<String>> rowNumberToRowColumnsResultMap = commons
				.getQueryResultFromDB(commons.getDbConnection(), pptyPpryQuery, params, 1);

		if (rowNumberToRowColumnsResultMap == null || rowNumberToRowColumnsResultMap.isEmpty())
			logger.info("Main Entity Type is not present in the database for the Property in the incoming message.");
		else
			logger.info("Main Entity Type " + rowNumberToRowColumnsResultMap.get(1).get(0)
					+ " is present in the database for the Property in the incoming message.");

		return rowNumberToRowColumnsResultMap.getOrDefault(1, Arrays.asList("")).get(0);
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
}
