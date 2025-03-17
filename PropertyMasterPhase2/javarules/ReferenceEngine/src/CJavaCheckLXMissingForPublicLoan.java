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

/**
 * Java rule for implementation of below Jira: 
 * [TLNSM-1219] ID Resolution - Custom Java Rule to - raise exception for LXID update (incl. Temp LX scenario)
 * 1. Incoming msg has Figi present in DB but incoming LX is blank (i.e. there is an update to the existing LXID)
 * 2. Incoming msg does not have a LX ID and Private flag is N (to be covered in another rule probably)
 * There are chances that to #1, we have LXIDs that are temporarily assigned. But we leave it up to 
 * DMAC team to decide and take action as there is no indicator for Temporary LX 
 */

public class CJavaCheckLXMissingForPublicLoan implements JavaRule, CJavaNvnConstants {

	/** Declaration of global variables */
	private static Logger logger = Logger.getLogger(CJavaCheckLXMissingForPublicLoan);
	private boolean isDebugEnabled;
	private CJavaNvnConfig nvnConfig;
	private CJavaNvnCommons nvnCommons;
	private String msgType;
	private String tblType;

	public CJavaCheckLXMissingForPublicLoan() {
		this.isDebugEnabled = logger.isDebugEnabled();
	}

	@Override
	public boolean initialize(String[] params) {
		int paramsLength = 1;
		nvnConfig = new CJavaNvnConfig();
		nvnConfig.init(params, CJavaCheckLXMissingForPublicLoan, paramsLength, "=", ",");
		return nvnConfig.isStatus();
	}

	@Override
	public boolean process(XMLMessage xmlmsg, DatabaseObjectContainer dbObjContainer, ProcessorContext procCtxt, DatabaseAccess dbAccess, NotificationCreator notifCreator) throws GSException {

		/**initialize nuveenCommons*/
		nvnCommons = new CJavaNvnCommons(xmlmsg, dbObjContainer, procCtxt, dbAccess, notifCreator);
		this.msgType = nvnCommons.getMsgType();
		this.tblType = nvnCommons.getMainEntityTableType();

		/** Print the initial incoming XML message*/
		printXMLMessage(START);

		/**
		 * Validate if an incoming message has message type attribute and
		 * if is it eligible for further processing as per the rule xml configuration.
		 */
		if (!(nvnConfig.parametersMap.get(MESSAGETYPE).contains(this.msgType))) {
			log("Exiting rule since message type is missing/different.", " : Message Type value : " + this.msgType, false);
			printXMLMessage(END);			
			return true;
		}

		/**
		 * Validate whether the incoming message is an instrument.
		 */
		if (!(ISSU).equals(this.tblType)) {
			log("Exiting rule since table type is not an instrument.", " : Table Type value : " + this.tblType, false);
			printXMLMessage(END);
			return true;
		}

		/**
		 * Check the issue type from the message
		 */
		SegmentId issueSegment = nvnCommons.getSegmentId("Issue") ;
		String issueType = xmlmsg.getStringField(ISS_TYP, issueSegment);
		log("Issue type is: " +  issueType, "", true);

		if (ISSUE_TYPE_LOAN.equals(issueType)){
			/**log("Rule: CJavaCheckLXMissingForPublicLoan could be applicable as Issue Type is: " +  issueType, "", true);*/

			String msgLxid = BLANK;
			String isPrivate = PRIVATE_FLAG_N;

			/** Get BBGLOBAL and LXID from Message **/
			SegmentId isidSegment = nvnCommons.getSegmentId("IssueIdentifier") ;
			for (int i = 0; i < xmlmsg.getSegmentCount(); i++) {
				SegmentId segId = new SegmentId(i);
				if (xmlmsg.getSegmentType(segId).equals(xmlmsg.getSegmentType(isidSegment))) {
					if (LXID.equals(xmlmsg.getStringField(ID_CTXT_TYP,segId))){
						msgLxid = xmlmsg.getStringField(ISS_ID, segId);
						log("LXID from message is: " +  msgLxid, "", true);
					}
				}
			}

			/** Get Private Flag Here **/			
			SegmentId isstSegment = nvnCommons.getSegmentId("IssueStatistic") ;
			for (int i = 0; i < xmlmsg.getSegmentCount(); i++) {
				SegmentId segId = new SegmentId(i);
				if (xmlmsg.getSegmentType(segId).equals(xmlmsg.getSegmentType(isstSegment))) {
					if (NPRVTFLG.equals(xmlmsg.getStringField(STAT_DEF_ID,segId))) {
						isPrivate = xmlmsg.getStringField(STAT_CHAR_VAL_TXT, segId);
						log("Private Flag from Message is: " +  isPrivate, "", true);
					}
				}
			}

			/*
			 * Check if LX is blank in incoming message else exit
			 * */
			if (BLANK.equals(msgLxid) || msgLxid == null || msgLxid.isEmpty()) {
				log("LXID is blank in the incoming message: " + " LXID = " +msgLxid, "", true);

				/**
				 * Check if Private Flag is present in the incoming file
				 * */
				if (PRIVATE_FLAG_N.equals(isPrivate) || isPrivate == null || isPrivate.isEmpty()) {
					log("Private Flag is either blank or is N in the incoming message: " + " Private Flag = " +isPrivate, "", true);

					log("Rule: CJavaCheckLXMissingForPublicLoan is Applicable here as LXID is blank in incoming message and the Private flag is either N or blank."
							+ " LXID= "+msgLxid+ ", Private Flag= "+isPrivate+". So raising an exception to DMAC "
							+ "to check why LXID is missing for Public Loan.", "", true);
					log("LXID is blank in incoming msg and private flag is N. Raising fatal exception.", "", true);
					HashMap<String,String> notfcnDescMap = new HashMap<String, String>();	
					notfcnDescMap.put("msgLxid", msgLxid);
					notfcnDescMap.put("isPrivate", isPrivate);
					CJavaNvnCommons.raiseNotifcn("STRDATA", "RULEPRC", nvnCommons.getNotificationCreator(), 70004, notfcnDescMap);
				}else {
					/* Default return to gracefully exit rule processing */
					log("Rule: CJavaCheckLXMissingForPublicLoan is Not applicable here as private flag is Y in the incoming message. Private Flag= "+isPrivate, "", true);
					printXMLMessage(END);
				}
			}else {
				/* Default return to gracefully exit rule processing */
				log("Rule: CJavaCheckLXMissingForPublicLoan is Not applicable here as LXID is present in the incoming message. LXID= "+msgLxid, "", true);
				printXMLMessage(END);
			}
		}else {
			/* Default return to gracefully exit rule processing */
			log("Rule: CJavaCheckLXMissingForPublicLoan is not applicable here as issue type is: " +issueType, "", true);
			printXMLMessage(END);
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
			log("Processing started.", " - Before XML Message processed :\n"
					+ nvnCommons.getXMLMessage().getXMLString(), false);
			break;
		case END:
			log("Processing ended.", " - After XML Message processed :\n"
					+ nvnCommons.getXMLMessage().getXMLString(), false);
			break;
		}
	}

	/**
	 * Decides based on inputs whether to log debug or info
	 * */
	private void log(String msg, String additionalDebugMsg, boolean isDebugOnly){
		if(isDebugEnabled)
			if(isDebugOnly) logger.debug(msg);
			else logger.debug(msg + additionalDebugMsg); 
		else logger.info(msg);

	}
}
