import org.apache.log4j.Logger;
import java.util.HashMap;
import com.thegoldensource.jbre.DatabaseAccess;
import com.thegoldensource.jbre.DatabaseObjectContainer;
import com.thegoldensource.jbre.GSException;
import com.thegoldensource.jbre.JavaRule;
import com.thegoldensource.jbre.NotificationCreator;
import com.thegoldensource.jbre.ProcessorContext;
import com.thegoldensource.jbre.SegmentId;
import com.thegoldensource.jbre.XMLMessage;

/**
 * Java rule for implementation of jira 
 * [TLNSM-1185] ID Resolution - Custom Java Rule to raise exception when FIGI is absent for Public Loans in WSO
 */

public class CJavaMatchEagleSecurity implements JavaRule, CJavaNvnConstants {

	private static Logger logger = Logger.getLogger(CJavaMatchEagleSecurity);
	private boolean isDebugEnabled = logger.isDebugEnabled();

	/* Declaration of global variables */
	private CJavaNvnConfig config;
	private CJavaNvnCommons commons;


	private String msgType;
	private String tblType;

	public CJavaMatchEagleSecurity() {
		this.isDebugEnabled = logger.isDebugEnabled();
	}

	@Override
	public boolean initialize(String[] params) {
		int paramsLength = 1;
		config = new CJavaNvnConfig();
		config.init(params, CJavaMatchEagleSecurity, paramsLength, "=", ",");
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
		 * Check the issue type from the message
		 */
		SegmentId issuesegment = commons.getSegmentId("Issue") ;


		String issuetype = null;
		String msgWsoid = "";
		String msgWsoidctxt = "";
		//		String dbgLxid = "";
		String isPrivate="NA";
		SegmentId isstsegment = commons.getSegmentId("IssueStatistic") ;
		
		issuetype = xmg.getStringField("ISS_TYP", issuesegment);
//		msgWsoid = xmg.getStringField("PREF_ISS_ID", issuesegment);
//		msgWsoidctxt = xmg.getStringField("PREF_ID_CTXT_TYP", issuesegment);
		msgWsoid = xmg.getStringField("MAIN_ENTITY_ID", new SegmentId(0));
		msgWsoidctxt = xmg.getStringField("MAIN_ENTITY_ID_CTXT_TYP", new SegmentId(0));
		loggerDebug("Issue type is: " +  issuetype);
		

		if ("LOAN".equals(issuetype))
		{

			String msgBBGlobal = "NOTPRESENT";
			String dbBBGlobal = "";
			String dblxid = "";
			String msgLxid = "NOTPRESENT";
			
			loggerDebug("Rule is applicable as issue type is: " +  issuetype);

			/** Get BBGLOBAL and LXID from Message **/
			SegmentId isidsegment = commons.getSegmentId("IssueIdentifier") ;
			for (int i = 0; i < xmg.getSegmentCount(); i++) {
				SegmentId segId = new SegmentId(i);
//				loggerDebug("For loop Segments for ID Check: " +  segId);
				if (xmg.getSegmentType(segId).equals("IssueIdentifier")) {
					if ("BBGLOBAL".equals(xmg.getStringField("ID_CTXT_TYP",segId))){/** Get BBGLOBAL Here **/
						msgBBGlobal = xmg.getStringField("ISS_ID",segId);
//						loggerDebug("BBGlobal from Message is: " +  msgBBGlobal);
					}
					if ("LXID".equals(xmg.getStringField("ID_CTXT_TYP",segId))){ /** Get LXID Here **/
						msgLxid = xmg.getStringField("ISS_ID",segId);
//						loggerDebug("LXID from message is: " +  msgLxid);
					}
				}
			}
			
			loggerDebug("BBGlobal from Message is: " +  msgBBGlobal);
			loggerDebug("LXID from message is: " +  msgLxid);
			
//			if (!("NOTPRESENT".equals(msgBBGlobal)) &&!("NOTPRESENT".equals(msgLxid))){
//				loggerDebug("BBGlobal and LXID both are present hence Raising Exception");
//				HashMap<String,String> notfcnDescMap = new HashMap<String, String>();
//				notfcnDescMap.put("msgLxid", msgLxid);
//				CJavaNvnCommons.raiseNotifcn("STRDATA", "RULEPRC",commons.getNotificationCreator(), 70001, notfcnDescMap);
//				printXMLMessage(END);
//				return true;
//			}

			/** Check FIGI for Private Loan Here **/
			
			if ("NOTPRESENT".equals(msgBBGlobal)) {
				loggerDebug("BBGLOBAL is not present in the input file, mismatch not possible. Exiting Rule.");
				return true;
			}
			
			/** Check LXID for Public Loan Here **/
			
			if ("NOTPRESENT".equals(msgLxid)) {
				loggerDebug("LXID is not Present in the input file, mismatch not possible. Exiting Rule.");
				return true;
			}

			
			
			if (!("NOTPRESENT".equals(msgBBGlobal)) && !("NOTPRESENT".equals(msgLxid)))
			{
				loggerDebug("Both FIGI and LXID are preent int he message, Proceeding with the database check");
				String querydbBBGlobal = null;
				querydbBBGlobal = "select ISS_ID from ft_T_isid where instr_id in (select instr_id from ft_T_isid where iss_id=:iss_id<char[101]> and end_tms is null and id_ctxt_Typ='BBGLOBAL') and end_tms is null and id_ctxt_Typ='NUVGBLSECID'";
				String paramsbbg;
				paramsbbg=msgBBGlobal;
				String querydbLxid = null;
				querydbLxid = "select ISS_ID from ft_T_isid where instr_id in (select instr_id from ft_T_isid where iss_id=:iss_id<char[101]> and end_tms is null and id_ctxt_Typ='LXID') and end_tms is null and id_ctxt_Typ='NUVGBLSECID'";
				String paramslxid;
				paramslxid=msgLxid;
				
	
				dbBBGlobal=	commons.getFirstValDB(querydbBBGlobal, paramsbbg);
				dblxid=	commons.getFirstValDB(querydbLxid, paramslxid);
				
				loggerDebug("BBGlobal from Database is: " +  dbBBGlobal);
				loggerDebug("LXID from database is is: " +  dblxid);
				
				
				if (dbBBGlobal == null || dbBBGlobal.isEmpty() || dblxid == null || dblxid.isEmpty())
				{
					if ((dbBBGlobal == null || dbBBGlobal.isEmpty()) && !(dblxid == null || dblxid.isEmpty()))
					{
					loggerDebug("BBGlobal is not present in the Database. Security cannot be uniquely Identified.Raising Exception");
					HashMap<String,String> notfcnDescMap = new HashMap<String, String>();
					notfcnDescMap.put("msgBBGlobal", msgBBGlobal);
					notfcnDescMap.put("msgLxid", msgLxid);
					notfcnDescMap.put("dbBBGlobal", "");
					notfcnDescMap.put("dblxid", dblxid);
					CJavaNvnCommons.raiseNotifcn("STRDATA", "RULEPRC",commons.getNotificationCreator(), 70007, notfcnDescMap);
					return true;
					}
					if (!(dbBBGlobal == null || dbBBGlobal.isEmpty()) && (dblxid == null || dblxid.isEmpty()))
					{
					loggerDebug("LXID is nither present is message nor in database. Exiting Rule as pair cannot be validated");
					return true;
					}
					loggerDebug("One of the ID cannot ne retived from the database. Exiting Rule as pair cannot be validated");
				return true;
				}			
				else 
				{
					if(dbBBGlobal.equals(dblxid))
					{
						loggerDebug("Both IDs are pointing to a Single security");
						return true;
					}
					else{
					loggerDebug("Both IDs are not pointing to a Single security");
					HashMap<String,String> notfcnDescMap = new HashMap<String, String>();
					notfcnDescMap.put("msgBBGlobal", msgBBGlobal);
					notfcnDescMap.put("msgLxid", msgLxid);
					notfcnDescMap.put("dbBBGlobal", dbBBGlobal);
					notfcnDescMap.put("dblxid", dblxid);
					CJavaNvnCommons.raiseNotifcn("STRDATA", "RULEPRC",commons.getNotificationCreator(), 70007, notfcnDescMap);
					return true;
					}
				}
			}
			else{
				/** Default return to gracefully exit rule processing **/
				loggerDebug("One of the ID is missing in the incoming file. Mismatch not possilbe");
				printXMLMessage(END);
			}
		}
		else
		{
			/** Default return to gracefully exit rule processing **/
			loggerDebug("Rule is not applicable as issue type is: " +  issuetype);
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

	public void loggerDebug(String msg)
	{
		if(logger.isDebugEnabled())
		{
			logger.debug(msg); 
		}
	}
}
