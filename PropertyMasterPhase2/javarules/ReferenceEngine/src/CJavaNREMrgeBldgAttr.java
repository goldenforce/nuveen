import java.util.ArrayList;
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

public class CJavaNREMrgeBldgAttr implements CJavaNvnConstants, JavaRule {
	private static Logger logger = Logger.getLogger("CJavaNREMrgeBldgAttr");
	private boolean isDebugEnabled = logger.isDebugEnabled();

	/* Declaration of global variables */
	private CJavaNvnConfig config;
	private CJavaNvnCommons commons;

	private String msgClassification;

	private SegmentId pprySegId;
	private SegmentId ppryNetRntAreSegId;
	private String mainEntityType;
	private String ppryOid;
	private String ppryAdtpAddrTyp;
	private String ppryAttTxt;

	private Integer ppryBedCnt;
	private Integer ppryLivUntCnt;
	private Integer ppryNetRntAre;
	private String dbppryBedCnt;
	private String dbppryLivUntCnt;
	private String dbppryNetRntAre;

	public CJavaNREMrgeBldgAttr() {
		this.isDebugEnabled = logger.isDebugEnabled();
	}

	@Override
	public boolean initialize(String[] params) {
		int paramsLength = 1;
		config = new CJavaNvnConfig();
		config.init(params, "CJavaNREMrgeBldgAttr", paramsLength, "=", ",");
		return config.isStatus();
	}

	public boolean process(XMLMessage xmg, DatabaseObjectContainer doc, ProcessorContext pcx, DatabaseAccess dbc,
			NotificationCreator nct) throws GSException {
		/* Initialization of global variables */
		commons = new CJavaNvnCommons(xmg, doc, pcx, dbc, nct);
		msgClassification = null;
		pprySegId = null;
		ppryNetRntAreSegId = null;
		mainEntityType = null;
		ppryOid = null;
		ppryAdtpAddrTyp = null;
		ppryAttTxt = null;
		ppryBedCnt = null;
		ppryLivUntCnt = null;
		ppryNetRntAre = null;
		dbppryBedCnt = null;
		dbppryLivUntCnt = null;
		dbppryNetRntAre = null;

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
			checkPPRYNetRentAreaSegment();
			if (dbLkpBldgUsgOid()) {
				if (dbLkpBldgAttrUsgOid())
					mrgeBldgAttr();
			} else if (dbLkpMailAdd()) {
				if (dbLkpBldgAttrUsgOid())
					mrgeBldgAttr();
			}
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
			ppryBedCnt = commons.getIntegerFieldFromMsg(pprySegId, "BEDROOM_CNT");
			ppryLivUntCnt = commons.getIntegerFieldFromMsg(pprySegId, "LIVING_UNIT_CNT");

			if (isDebugEnabled) {
				logger.debug("Segment for Property : " + PPRYProperty);
				logger.debug("PPRY_OID from Property Segment : " + ppryOid);
				logger.debug("Number of Bed(s) from Property Segment : " + ppryBedCnt);
				logger.debug("Number Of Living Unit(s) from Property Segment : " + ppryLivUntCnt);
			} else
				logger.info("Segment for Property is present in the incoming message.");
			return true;
		}
	}

	/**
	 * Check existence of Net Rentable Area segment in the incoming message
	 */
	private boolean checkPPRYNetRentAreaSegment() {

		ppryNetRntAreSegId = commons.getSegmentId("PPRYPropertyStatistic", "STAT_DEF_ID", "NRERNTAR");

		if (ppryNetRntAreSegId == null || "".equals(ppryNetRntAreSegId)) {
			logger.info("Segment for Net Rentable Area is not present in the incoming message.");
			return false;
		} else {

			ppryNetRntAre = commons.getIntegerFieldFromMsg(ppryNetRntAreSegId, "STAT_VAL_CAMT");

			if (isDebugEnabled) {
				logger.debug("Segment for Net Rentable Area : " + "PPRYPropertyStatistic");
				logger.debug("Net Rentable Area from Segment : " + ppryNetRntAre);
			} else
				logger.info("Segment for Net Rentable Area is present in the incoming message.");
			return true;
		}
	}

	private boolean dbLkpBldgUsgOid() {
		String bldgQuery = "select ppry.ppry_oid from ft_t_ppry ppry join ft_t_ppty ppty on ppry.ppty_oid = ppty.ppty_oid where ppry.ppry_oid = :ppry_oid<char[11]> and ppty.prop_typ = 'Building' and (ppry.start_tms <= sysdate() and (ppry.end_tms is null or ppry.end_tms > sysdate())) and (ppty.start_tms <= sysdate() and (ppty.end_tms is null or ppty.end_tms > sysdate()))";
		List<String> params = new ArrayList<String>();
		params.add(ppryOid);

		HashMap<Integer, List<String>> rowNumberToRowColumnsResultMap = commons
				.getQueryResultFromDB(commons.getDbConnection(), bldgQuery, params, 1);

		if (rowNumberToRowColumnsResultMap == null || rowNumberToRowColumnsResultMap.isEmpty()) {
			logger.info(
					"The incoming Building is not present in the database. Hence, lookup with Mailing Address details.");
			return false;
		} else {
			logger.info("The incoming Building is not present in the database.");
			return true;
		}
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

		String ppryAddQuery = "select ppry.ppry_oid from ft_t_ppry ppry join ft_t_ccrf ccrf on ppry.ppry_oid = ccrf.ppry_oid join ft_t_adtp adtp on ccrf.cntl_cross_ref_oid = adtp.cntl_cross_ref_oid join ft_t_madr madr on adtp.mail_addr_id = madr.mail_addr_id where"
				+ " ccrf.cross_ref_purp_typ = 'ADDRESS'" + " and adtp.addr_typ = :ppryAdtpAddrTyp<char[41]>"
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
			logger.info("Building Property Address in the incoming message is not present in the database.");
			return false;
		} else {

			logger.info("Building Property Address in the incoming message is present in the database.");

			ppryOid = rowNumberToRowColumnsResultMap.get(1).get(0);

			commons.getXMLMessage().setFieldValue("PPRY_OID", pprySegId, ppryOid);
			return true;
		}
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
	 * Check existence of incoming Building ID in the database
	 */
	private boolean dbLkpBldgAttrUsgOid() {

		String bldgAttrQuery = "with "
				+ "prty as (select ppry.* from ft_t_ppry ppry join ft_t_ppty ppty on ppry.ppty_oid = ppty.ppty_oid where ppty.prop_typ ='Property' and (ppry.start_tms <= sysdate() and (ppry.end_tms is null or ppry.end_tms > sysdate())) and (ppty.start_tms <= sysdate() and (ppty.end_tms is null or ppty.end_tms > sysdate()))), "
				+ "bldg as (select ppry.* from ft_t_ppry ppry join ft_t_ppty ppty on ppry.ppty_oid = ppty.ppty_oid where ppty.prop_typ ='Building' and (ppry.start_tms <= sysdate() and (ppry.end_tms is null or ppry.end_tms > sysdate())) and (ppty.start_tms <= sysdate() and (ppty.end_tms is null or ppty.end_tms > sysdate()))), "
				+ "batt as (select bldg.* from ft_t_pprl pprl join bldg on pprl.ppry_oid = bldg.ppry_oid join prty on pprl.prnt_ppry_oid = prty.ppry_oid where pprl.ppry_rl_typ ='Property' and (pprl.start_tms <= sysdate() and (pprl.end_tms is null or pprl.end_tms > sysdate()))), "
				+ "bnra as (select ppst.* from ft_t_ppst ppst join ft_t_ppry ppry on ppst.ppry_oid = ppry.ppry_oid where ppst.stat_def_id ='NRERNTAR' and (ppst.start_tms <= sysdate() and (ppst.end_tms is null or ppst.end_tms > sysdate()))) "
				+ "select batt.ppry_oid, batt.bedroom_cnt, batt.living_unit_cnt, bnra.stat_val_camt from batt left join bnra on batt.ppry_oid=bnra.ppry_oid where batt.ppry_oid = :ppry_oid<char[11]> "
		// + "group by batt.ppry_oid, bnra.stat_val_camt, batt.bedroom_cnt,
		// batt.living_unit_cnt having count(batt.ppry_oid)>1"
		;

		List<String> params = new ArrayList<String>();
		params.add(ppryOid);

		HashMap<Integer, List<String>> rowNumberToRowColumnsResultMap = commons
				.getQueryResultFromDB(commons.getDbConnection(), bldgAttrQuery, params, 4);

		if (rowNumberToRowColumnsResultMap == null || rowNumberToRowColumnsResultMap.isEmpty()) {
			logger.info(
					"The incoming Building is not present in the database. Hence, lookup with Mailing Address details.");
			return false;
		} else if (rowNumberToRowColumnsResultMap.size() <= 1) {
			logger.info(
					"The incoming Building does not have multiple Properties present in the database. Hence, exiting rule processing.");
			return false;
		} else {
			logger.info("The incoming Building have multiple Properties present in the database.");

			dbppryBedCnt = rowNumberToRowColumnsResultMap.get(1).get(1);
			dbppryLivUntCnt = rowNumberToRowColumnsResultMap.get(1).get(2);
			dbppryNetRntAre = rowNumberToRowColumnsResultMap.get(1).get(3);

			if (isDebugEnabled) {
				logger.debug("Number of Bed(s) from database : " + dbppryBedCnt);
				logger.debug("Number Of Living Unit(s) from database : " + dbppryLivUntCnt);
				logger.debug("Net Rentable Area from database : " + dbppryNetRntAre);
			}

			return true;
		}
	}

	private void mrgeBldgAttr() {

		if (ppryBedCnt == null)
			;
		else if (dbppryBedCnt == null || dbppryBedCnt.isEmpty())
			;
		else
			commons.getXMLMessage().setFieldValue("BEDROOM_CNT", pprySegId,
					Math.addExact(ppryBedCnt, Integer.parseInt(dbppryBedCnt)));

		if (ppryLivUntCnt == null)
			;
		else if (dbppryLivUntCnt == null || dbppryLivUntCnt.isEmpty())
			;
		else
			commons.getXMLMessage().setFieldValue("LIVING_UNIT_CNT", pprySegId,
					Math.addExact(ppryLivUntCnt, Integer.parseInt(dbppryLivUntCnt)));

		if (ppryNetRntAre == null)
			;
		else if (dbppryNetRntAre == null || dbppryNetRntAre.isEmpty())
			;
		else
			commons.getXMLMessage().setFieldValue("STAT_VAL_CAMT", ppryNetRntAreSegId,
					Math.addExact(ppryNetRntAre, Integer.parseInt(dbppryNetRntAre)));
	}
}
