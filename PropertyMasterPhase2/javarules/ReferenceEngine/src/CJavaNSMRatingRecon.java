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

public class CJavaNSMRatingRecon implements JavaRule, CJavaNvnConstants {

	private static Logger logger = Logger.getLogger(CJavaNSMRatingRecon);
	private boolean isDebugEnabled = logger.isDebugEnabled();

	/* Declaration of global variables */
	private CJavaNvnConfig config;
	private CJavaNvnCommons commons;

	private String msgType;
	private String triggerRule;
	String issRtngOid = null;
	String finsRtngOid  = null;;
	String rtopOid  = null;;
	DatabaseAccess dbConnection  = null;;
	XMLMessage msg  = null;

	public CJavaNSMRatingRecon() {
		this.isDebugEnabled = logger.isDebugEnabled();
	}

	@Override
	public boolean initialize(String[] params) {
		int paramsLength = 3;
		config = new CJavaNvnConfig();
		config.init(params, CJavaNSMRatingRecon, paramsLength, "=", ",");
		return config.isStatus();
	}

	@Override
	public boolean process(XMLMessage xmg, DatabaseObjectContainer doc, ProcessorContext pcx, DatabaseAccess dbc,
			NotificationCreator nct) throws GSException {
		commons = new CJavaNvnCommons(xmg, doc, pcx, dbc, nct);
		msgType = null;
		triggerRule = null;
		

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
		 * Check whether rule trigger has been disabled
		 */
		if (ruleDisabled()) {
			printXMLMessage(END);
			return true;
		} else if (isDebugEnabled)
			logger.debug("Rule enabled ::::: " + this.triggerRule);
		else
			logger.info("Rule enabled.");

		if (!config.parametersMap.get(ENTSEGMENTTYPE).isEmpty())
			config.parametersMap.get(ENTSEGMENTTYPE).forEach((entSegType) -> {
				entityRatingsSegment(entSegType);
			});
			
			

		/* Default return to gracefully exit rule processing */
		printXMLMessage(END);
		return true;
	}

	/**
	 * Check existence of segment in the incoming message
	 */
	private void entityRatingsSegment(String entSegTyp) {

		SegmentId segId = commons.getSegmentId(entSegTyp);
		if (segId != null && !segId.isEmpty()) {
			if (!config.parametersMap.get(RTNGSEGMENTTYPE).isEmpty())
				config.parametersMap.get(RTNGSEGMENTTYPE).forEach((rtngSegType) -> {
					reconRatingsSegment(rtngSegType);
				});
		} else if (isDebugEnabled)
			logger.debug("Entity does not exist in the incoming message ::::: " + entSegTyp);
		else
			logger.info("Entity does not exist in the incoming message.");
	}
	
	/**
	 * Check existence of segment in the incoming message
	 */
	private void reconRatingsSegment(String segTyp) {

		List<SegmentId> segIds = commons.getSegmentIds(segTyp);
		if (segIds != null && !segIds.isEmpty()) {
			segIds.forEach((seg) -> {
				switch (segTyp) {
				case "IssueRating": {
			 issRtngOid = commons.getXMLMessage().getStringField("ISS_RTNG_OID", seg);
			  if (isDebugEnabled)
            logger.debug("ISS_RTNG_OID :" + issRtngOid);
			  CreateRRC1(commons.getXMLMessage(),dbConnection,issRtngOid,null,null);
			  issRtngOid=null;
			  break;
				}
				case "FinancialInstitutionRating": {
			 finsRtngOid = commons.getXMLMessage().getStringField("FINS_RTNG_OID", seg);
				  if (isDebugEnabled)
            logger.debug("FINS_RTNG_OID :" + finsRtngOid);
				  CreateRRC1(commons.getXMLMessage(),dbConnection,null,finsRtngOid,null);	
				  finsRtngOid=null;
				  break;
				}
				case "FINSRatingOpinions":
				case "ISSRRatingOpinions":
				case "ISSURatingOpinions":
				case "RTNGRatingOpinions": {
			 rtopOid = commons.getXMLMessage().getStringField("RTOP_OID", seg);
				  if (isDebugEnabled)
            logger.debug("RTOP_OID :" + rtopOid);
				  CreateRRC1(commons.getXMLMessage(),dbConnection,null,null,rtopOid);
				  rtopOid=null;
				  break;
				}}
			});
			
			}
			}
	
	private boolean CreateRRC1(XMLMessage msg, DatabaseAccess dbConnection, String issRtngOid,String finsRtngOid,String rtopOid)
    {
        /*if (isDebugEnabled)
            logger.debug("Creating new RRC1 Segment");*/

		String query = "insert into ft_t_rrc1 (rrc1_oid, start_tms, last_chg_tms, last_chg_usr_id, tbl_id, iss_rtng_oid, fins_rtng_oid, rtop_oid) values (new_oid(), sysdate(), sysdate(), :last_chg_usr_id<char[257]>, :tbl_id<char[5]>, :iss_rtng_oid<char[11]>, :fins_rtng_oid<char[11]>, :rtop_oid<char[11]>)";

		String replacedQuery = null;

		List<String> params = new ArrayList<String>();
		params.add(0, "NUVEEN:CSTM");
		params.add(1, null);
		params.add(2, null);

		if (issRtngOid != null)
		{       
			replacedQuery = query.replaceAll("\\:fins_rtng_oid\\<char\\[11\\]\\>|\\:rtop_oid\\<char\\[11\\]\\>", "null");
			params.set(1, "ISRT");
			params.set(2, issRtngOid);
			
			commons.insertQueryDB(replacedQuery, params);

			replacedQuery = null;
			params.set(1, null);
			params.set(2, null);

		logger.debug("issRtngOid is inserted into RRC1 :" + issRtngOid);
        /*SegmentId rrc1Seg1 = msg.addSegment("D_UNKNOWN", "RRC1RatingRecon");
        if (rrc1Seg1.equals(new SegmentId(-1)))
        {
            if (isDebugEnabled)
                logger.debug("Failed to add segment " + rrc1Seg1 + " with ACTION = 'D_UNKNOWN'");
        }
		
        msg.addField("ISS_RTNG_OID", rrc1Seg1, issRtngOid);
        if (isDebugEnabled)
            logger.debug("Added ISS_RTNG_OID :" + issRtngOid);

        msg.addField("TBL_ID", rrc1Seg1, "ISRT");
        if (isDebugEnabled)
            logger.debug("Added TBL_ID :" +  "ISRT");
        msg.addField("LAST_CHG_USR_ID", rrc1Seg1, "NUVEEN:CSTM");
        if (isDebugEnabled)
            logger.debug("Added LAST_CHG_USR_ID :" +  "NUVEEN:CSTM");*/
		}
	   
	   if (finsRtngOid != null)
		{
			replacedQuery = query.replaceAll("\\:iss_rtng_oid\\<char\\[11\\]\\>|\\:rtop_oid\\<char\\[11\\]\\>", "null");
			params.set(1, "FIRT");
			params.set(2, finsRtngOid);
			
			commons.insertQueryDB(replacedQuery, params);

			replacedQuery = null;
			params.set(1, null);
			params.set(2, null);
			
		   logger.debug("finsRtngOid is inserted into RRC1 :" + finsRtngOid);
        /*SegmentId rrc1Seg2 = msg.addSegment("D_UNKNOWN", "RRC1RatingRecon");
        if (rrc1Seg2.equals(new SegmentId(-1)))
        {
            if (isDebugEnabled)
                logger.debug("Failed to add segment " + rrc1Seg2 + " with ACTION = 'D_UNKNOWN'");
        }
		
        msg.addField("FINS_RTNG_OID", rrc1Seg2, finsRtngOid);
        if (isDebugEnabled)
            logger.debug("Added FINS_RTNG_OID :" + finsRtngOid);

        msg.addField("TBL_ID", rrc1Seg2, "FIRT");
        if (isDebugEnabled)
            logger.debug("Added TBL_ID :" +  "FIRT");
        msg.addField("LAST_CHG_USR_ID", rrc1Seg2, "NUVEEN:CSTM");
        if (isDebugEnabled)
            logger.debug("Added LAST_CHG_USR_ID :" +  "NUVEEN:CSTM");*/
       }
	   
	   if (rtopOid != null)
		{		   
			replacedQuery = query.replaceAll("\\:iss_rtng_oid\\<char\\[11\\]\\>|\\:fins_rtng_oid\\<char\\[11\\]\\>", "null");
			params.set(1, "RTOP");
			params.set(2, rtopOid);
			
			commons.insertQueryDB(replacedQuery, params);

			replacedQuery = null;
			params.set(1, null);
			params.set(2, null);

		   logger.debug("rtopOid is inserted into RRC1 :" + rtopOid);
        /*SegmentId rrc1Seg3 = msg.addSegment("D_UNKNOWN", "RRC1RatingRecon");
        if (rrc1Seg3.equals(new SegmentId(-1)))
        {
        if (isDebugEnabled)
                logger.debug("Failed to add segment " + rrc1Seg3 + " with ACTION = 'D_UNKNOWN'");
        }
		
        msg.addField("RTOP_OID", rrc1Seg3, rtopOid);
        if (isDebugEnabled)
            logger.debug("Added RTOP_OID :" + rtopOid);

        msg.addField("TBL_ID", rrc1Seg3, "RTOP");
        if (isDebugEnabled)
            logger.debug("Added TBL_ID :" +  "RTOP");
        msg.addField("LAST_CHG_USR_ID", rrc1Seg3, "NUVEEN:CSTM");
        if (isDebugEnabled)
            logger.debug("Added LAST_CHG_USR_ID :" +  "NUVEEN:CSTM");*/
       }

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

	private boolean ruleDisabled() {

		String query = "select run_rtng_recon from ft_t_rrr1";

		this.triggerRule = commons.getFirstValDB(query);

		if (this.triggerRule == null || !("Y".equalsIgnoreCase(this.triggerRule))) {
			if (isDebugEnabled)
				logger.debug("Rule disabled ::::: " + this.triggerRule);
			else
				logger.info("Rule disabled.");
			return true;
		}
		return false;
	}
}
