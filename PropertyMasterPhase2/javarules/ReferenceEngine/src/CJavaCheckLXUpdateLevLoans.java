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
 * 1. Incoming msg has Figi present in DB but incoming LX is not present in DB (i.e. there is an update to the existing LXID)
 * 2. Incoming msg does not have a LX ID, Private flag is Y and FIGI is associated to a different LX in database
 * There are chances that to #1, we have LXIDs that are temporarily assigned. But we leave it up to 
 * DMAC team to decide and take action as there is no indicator for Temporary LX 
 */

public class CJavaCheckLXUpdateLevLoans implements JavaRule, CJavaNvnConstants {

	/** Declaration of global variables */
	private static Logger logger = Logger.getLogger(CJavaCheckLXUpdateLevLoans);
	private boolean isDebugEnabled;
	private CJavaNvnConfig nvnConfig;
	private CJavaNvnCommons nvnCommons;
	private String msgType;
	private String tblType;

	public CJavaCheckLXUpdateLevLoans() {
		this.isDebugEnabled = logger.isDebugEnabled();
	}

	@Override
	public boolean initialize(String[] params) {
		int paramsLength = 1;
		nvnConfig = new CJavaNvnConfig();
		nvnConfig.init(params, CJavaCheckLXUpdateLevLoans, paramsLength, "=", ",");
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
			/**log("Rule: CJavaCheckLXUpdateLevLoans could be applicable as Issue Type is: " +  issueType, "", true);*/

			String msgBBGlobal = BLANK;
			String msgLxid = BLANK;

			/** Get BBGLOBAL and LXID from Message **/
			SegmentId isidSegment = nvnCommons.getSegmentId("IssueIdentifier") ;

			for (int i = 0; i < xmlmsg.getSegmentCount(); i++) {
				SegmentId segId = new SegmentId(i);
				if (xmlmsg.getSegmentType(segId).equals(xmlmsg.getSegmentType(isidSegment))) {
					if (BBGLOBAL.equals(xmlmsg.getStringField(ID_CTXT_TYP,segId))) {
						msgBBGlobal = xmlmsg.getStringField(ISS_ID, segId);
						log("BBGlobal from Message is: " +  msgBBGlobal, "", true);
					}
					if (LXID.equals(xmlmsg.getStringField(ID_CTXT_TYP,segId))){
						msgLxid = xmlmsg.getStringField(ISS_ID, segId);
						log("LXID from message is: " +  msgLxid, "", true);
					}
				}
			}

			/*
			 * Check if both Figi and LX are present in incoming message else exit
			 * */
			if (!BLANK.equals(msgBBGlobal) && !BLANK.equals(msgLxid) && msgBBGlobal != null && !msgBBGlobal.isEmpty() && msgLxid != null && !msgLxid.isEmpty()) {
				log("Both BBGlobal and LXID are present in the incoming message: " + ": BBGLOBAL= "+msgBBGlobal+", LXID= "+msgLxid, "", true);

				String dbBBGlobal = "";
				String queryDbBBGlobal = "select isid.ISS_ID from FT_T_ISID isid, FT_T_ISSU issu where isid.instr_id = issu.instr_id and isid.id_ctxt_Typ='BBGLOBAL' and isid.end_tms is null and issu.end_tms is null and isid.iss_id=:iss_id<char[101]>";
				dbBBGlobal = nvnCommons.getFirstValDB(queryDbBBGlobal, msgBBGlobal);

				/**
				 * Check if incoming Figi is present in Database and incoming LXID is not present in Database else exit
				 * */
				if (dbBBGlobal != null && !dbBBGlobal.isEmpty()){
					/*String queryDbLXID = "select lxisid.ISS_ID from FT_T_ISID lxisid, FT_T_ISID bbisid, FT_T_ISSU issu where lxisid.instr_id = issu.instr_id and lxisid.id_ctxt_Typ='LXID' and lxisid.end_tms is null and issu.end_tms is null and lxisid.iss_id=:iss_id<char[101]> and lxisid.instr_id = bbisid.instr_id and bbisid.id_ctxt_Typ='BBGLOBAL' and bbisid.end_tms is null and bbisid.iss_id=:iss_id<char[101]>";
					List<String> params = new ArrayList<String>();
					params.add(msgLxid);
					params.add(dbBBGlobal);
					HashMap<Integer, List<String>> dbLxIdRowNumberToRowColumnsResultMap = nvnCommons.getQueryResultFromDB(dbAccess, queryDbLXID, params, 1);*/

					String dbLXID = "";
					String queryDbLXID = "select isid.ISS_ID from FT_T_ISID isid, FT_T_ISSU issu where isid.instr_id = issu.instr_id and isid.id_ctxt_Typ='LXID' and isid.end_tms is null and issu.end_tms is null and isid.iss_id=:iss_id<char[101]>";
					dbLXID = nvnCommons.getFirstValDB(queryDbLXID, msgLxid);

					if (dbLXID == null || dbLXID.isEmpty()){/*dbLxIdRowNumberToRowColumnsResultMap == null || dbLxIdRowNumberToRowColumnsResultMap.isEmpty()){*/
						log("Rule: CJavaCheckLXUpdateLevLoans is applicable here as incoming FIGI is present in GS database and incoming LXID is not present in database: BBGLOBAL= "+msgBBGlobal+", LXID= "+msgLxid+". So raising an exception to DMAC for resolution.", "", true);
						log("FIGI is present in database but incoming LXID is missing in database. Raising fatal exception.", "", true);
						HashMap<String,String> notfcnDescMap = new HashMap<String, String>();	
						notfcnDescMap.put("msgLxid", msgLxid);
						notfcnDescMap.put("dbBBGlobal", dbBBGlobal);
						CJavaNvnCommons.raiseNotifcn("STRDATA", "RULEPRC", nvnCommons.getNotificationCreator(), 70003, notfcnDescMap);
					}else {
						/* Default return to gracefully exit rule processing */
						log("Rule: CJavaCheckLXUpdateLevLoans is not applicable here as incoming FIGI and LXID both are present in the database: BBGLOBAL= "+msgBBGlobal+", LXID= "+msgLxid, "", true);
						printXMLMessage(END);
					}				
				}else {
					/* Default return to gracefully exit rule processing */
					log("Rule: CJavaCheckLXUpdateLevLoans is not applicable here as incoming FIGI is not present in GS database: BBGLOBAL= "+msgBBGlobal, "", true);
					printXMLMessage(END);
				}			
			}else if(!BLANK.equals(msgBBGlobal)  && msgBBGlobal != null && !msgBBGlobal.isEmpty()){
				String isPrivate = PRIVATE_FLAG_N;
				
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

				/**
				 * Check if incoming private flag is Y and incoming LXID is blank else exit
				 * */
				if(isPrivate.equals(PRIVATE_FLAG_Y) && (BLANK.equals(msgLxid) || msgLxid == null || msgLxid.isEmpty())){
					String dbAnotherLX = "";
					String queryDbAnotherLX = "select isid.ISS_ID from FT_T_ISID isid, FT_T_ISSU issu where isid.instr_id = issu.instr_id and isid.id_ctxt_Typ='LXID' and isid.end_tms is null and issu.end_tms is null and isid.instr_id=(select instr_id from ft_t_isid where id_ctxt_Typ = 'BBGLOBAL' and iss_id = :iss_id<char[101]> and end_tms is null)";
					dbAnotherLX = nvnCommons.getFirstValDB(queryDbAnotherLX, msgBBGlobal);

					/**
					 * Check if incoming Figi is present in Database and has some LXID associated in Database else exit
					 * */
					if (dbAnotherLX != null && !dbAnotherLX.isEmpty()){
						log("Rule: CJavaCheckLXUpdateLevLoans is applicable here as incoming FIGI is present in GS database with a different LX, having private flag as Y: BBGLOBAL= "+msgBBGlobal+", LXID= "+msgLxid+", Private Flag= "+isPrivate+", dbAnotherLX = "+dbAnotherLX+". So raising an exception to DMAC for resolution.", "", true);
						log("FIGI is present in database but associated to a different LX and private flag is Y. Raising fatal exception.", "", true);
						HashMap<String,String> notfcnDescMap = new HashMap<String, String>();	
						notfcnDescMap.put("msgLxid", msgLxid);
						notfcnDescMap.put("isPrivate", isPrivate);
						notfcnDescMap.put("dbBBGlobal", msgBBGlobal);
						notfcnDescMap.put("dbAnotherLX", dbAnotherLX);
						
						CJavaNvnCommons.raiseNotifcn("STRDATA", "RULEPRC", nvnCommons.getNotificationCreator(), 70006, notfcnDescMap);
					}else{
						/* Default return to gracefully exit rule processing */
						log("Rule: CJavaCheckLXUpdateLevLoans is not applicable here as either incoming FIGI is not present in the database or it is not associated with any LXID in the DB: BBGLOBAL= "+msgBBGlobal+", LXID= "+msgLxid+", isPrivateFlag= "+isPrivate+", dbAnotherLX= "+dbAnotherLX, "", true);
						printXMLMessage(END);
					}

				}else{
					/* Default return to gracefully exit rule processing */
					log("Rule: CJavaCheckLXUpdateLevLoans is not applicable here as either private flag is N or LXID is not present in the incoming message: isPrivateFlag= "+isPrivate+", LXID= "+msgLxid, "", true);
					printXMLMessage(END);
				}	
			}
			else{
				/* Default return to gracefully exit rule processing */
				log("Rule: CJavaCheckLXUpdateLevLoans is not applicable here as either FIGI/ LXID is not present in the incoming message: BBGLOBAL= "+msgBBGlobal+", LXID= "+msgLxid, "", true);
				printXMLMessage(END);
			}

		}else {
			/* Default return to gracefully exit rule processing */
			log("Rule: CJavaCheckLXUpdateLevLoans is not applicable here as issue type is: " +issueType, "", true);
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