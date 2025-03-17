import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;

import org.apache.log4j.Logger;

import com.thegoldensource.jbre.DatabaseAccess;
import com.thegoldensource.jbre.DatabaseObjectContainer;
import com.thegoldensource.jbre.GSException;
import com.thegoldensource.jbre.JavaRule;
import com.thegoldensource.jbre.NotificationCreator;
import com.thegoldensource.jbre.ProcessorContext;
import com.thegoldensource.jbre.SegmentId;
import com.thegoldensource.jbre.XMLMessage;

public class CJavaNREAPIMailAddCstmErr implements CJavaNvnConstants, JavaRule {
	private static Logger logger = Logger.getLogger(CJavaNREAPIMailAddCstmErr);
	private boolean isDebugEnabled = logger.isDebugEnabled();

	/*
	 * XMLMessage xmg = null; DatabaseObjectContainer doc = null;
	 * ProcessorContext pcx = null; DatabaseAccess dbc = null;
	 * NotificationCreator nct = null;
	 */

	private CJavaNvnConfig config = null;
	private CJavaNvnCommons commons = null;

	private String msgClassification = null;

	private SegmentId pprySegId = null;
	private SegmentId ppidBSegId = null;
	private SegmentId ppidPSegId = null;
	private String mainEntityType = null;
	private String ppryOid = null;
	private String nreIdCtxtTyp = null;
	private String ppidNreId = null;
	private String nreAssetNo = null;
	private String ppryAdtpAddrTyp = null;

	public CJavaNREAPIMailAddCstmErr() {
		this.isDebugEnabled = logger.isDebugEnabled();
	}

	@Override
	public boolean initialize(String[] params) {
		int paramsLength = 1;
		config = new CJavaNvnConfig();
		config.init(params, CJavaNREAPIMailAddCstmErr, paramsLength, "=", ",");
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

		/* Initializing common processing functions */
		commons = new CJavaNvnCommons(xmg, doc, pcx, dbc, nct);

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
		if (checkPropertySegment())
			if (checkPropertyIdSegment())
				cstmErrFromMailAddSeg();

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

			if (isDebugEnabled)
				logger.debug("Segment for Property : " + PPRYProperty);
			else
				logger.info("Segment for Property is present in the incoming message.");
			return true;
		}
	}

	/**
	 * Check existence of Building ID Property Identifier segment in the
	 * incoming message
	 */
	private boolean checkPropertyIdSegment() {

		ppidBSegId = commons.getSegmentId(PPRYPropertyIdentifier, "PROP_ID_CTXT_TYP", "BLDNG_ID");
		ppidPSegId = commons.getSegmentId(PPRYPropertyIdentifier, "PROP_ID_CTXT_TYP", "PROP_ID");

		if ((ppidBSegId == null || "".equals(ppidBSegId)) && (ppidPSegId == null || "".equals(ppidPSegId)))  {
			logger.info("Segment for Property/Building ID Property Identifier is not present in the incoming message.");
			return false;
		}
		else if (isDebugEnabled)
			logger.debug("Segment for Property/Building ID Property Identifier : " + PPRYPropertyIdentifier);
		else
			logger.info("Segment for Property/Building ID Property Identifier is present in the incoming message.");
		return true;
	}

	private void cstmErrFromMailAddSeg() {

		/* Fetch CCRF for Address segment from the message */
		SegmentId ppryCcrfSeg = commons.getSegmentId(PPRYCentralCrossReference, "CROSS_REF_PURP_TYP", "ADDRESS");

		/* CCRF for Address segment not found in the message */
		if (ppryCcrfSeg == null || "".equals(ppryCcrfSeg))
			logger.info("Address CCRF for Property segment is not present in the incoming message.");
		else {

			/* Fetch VERFMAPS Address Type segment from the message */
			SegmentId ppryAdtpSeg = commons.getSegmentId(AddressType, "ADDR_TYP", "VERFMAPS");

			/* VERFMAPS Address Type segment not found in the message */
			if (ppryAdtpSeg == null || "".equals(ppryAdtpSeg))
				logger.info("VERFMAPS Address Type for Property segment is not present in the incoming message.");
			else {
				ppryAdtpAddrTyp = "VERFMAPS";

				SegmentId ppryMadrSeg = commons.getSegmentId(MailingAddress);

				if (ppryMadrSeg == null || "".equals(ppryMadrSeg))
					logger.info("VERFMAPS Address for Property segment is not present in the incoming message.");
				else {
					HashMap<String, ArrayList<String>> verfAddMap = new HashMap<String, ArrayList<String>>();
					verfAddMap.computeIfAbsent("ADDR_LN1_TXT", k -> new ArrayList<>()).add("Address Line 1");
					verfAddMap.computeIfAbsent("CITY_NME", k -> new ArrayList<>()).add("City Name");
					verfAddMap.computeIfAbsent("CNTRY_NME", k -> new ArrayList<>()).add("Country Name");
					verfAddMap.computeIfAbsent("CNTY_NME", k -> new ArrayList<>()).add("County Name");
					verfAddMap.computeIfAbsent("STE_PRV_NME", k -> new ArrayList<>()).add("State/Province Name");
					verfAddMap.computeIfAbsent("NEIGHBORHOOD_NME", k -> new ArrayList<>()).add("Neighborhood Name");
					verfAddMap.computeIfAbsent("POSTAL_CDE", k -> new ArrayList<>()).add("Postal Code");
					verfAddMap.computeIfAbsent("ATTENTION_TXT", k -> new ArrayList<>()).add("Point of Interest");
					verfAddMap.entrySet().parallelStream()
							.peek(e -> e.getValue().add(1,
									commons.getXMLMessage().getFieldAttribute(e.getKey(), ppryMadrSeg, "CUSTOM_ERR")))
							.filter(e -> e.getValue().get(1) != null)
							.forEach(e -> CJavaNvnCommons.raiseNotifcn("STRDATA", "RULEPRC",
									commons.getNotificationCreator(), 60001,
									Collections.singletonMap("MsgText",
											e.getValue().get(0)
													+ " information is unverified. Confirmation Level from Maps API : "
													+ e.getValue().get(1))));
				}
			}
		}
	}
}
