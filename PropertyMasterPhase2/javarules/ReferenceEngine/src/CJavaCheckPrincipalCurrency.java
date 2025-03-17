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

/**
 * Java rule for implementation of jira 
 * [TLNSM-170] Principal Currency Code is Blank in SMF Security Canonical - TIAA Jira (techopscloud.com)
 */

public class CJavaCheckPrincipalCurrency implements JavaRule, CJavaNvnConstants {

	private static Logger logger = Logger.getLogger(CJavaCheckPrincipalCurrency);
	private boolean isDebugEnabled = logger.isDebugEnabled();

	/* Declaration of global variables */
	private CJavaNvnConfig config;
	private CJavaNvnCommons commons;


	private String msgType;
	private String tblType;

	public CJavaCheckPrincipalCurrency() {
		this.isDebugEnabled = logger.isDebugEnabled();
	}

	@Override
	public boolean initialize(String[] params) {
		int paramsLength = 1;
		config = new CJavaNvnConfig();
		config.init(params, CJavaCheckPrincipalCurrency, paramsLength, "=", ",");
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
		String issuesegmentderived="Issue";

		SegmentId nvnderivedsegment = commons.getSegmentId("NuveenDerivedFields") ;

		String issuetype = null;
		String msgprincipalcurrency = null;
		String instridvalue = null;
		String msgdistributioncurrency = null;
		String msgnvndistributioncurrency	= null;
		String currencyvalue = null;


		issuetype = xmg.getStringField("ISS_TYP", issuesegment);
		msgprincipalcurrency = xmg.getStringField("DENOM_CURR_CDE",issuesegment);
		instridvalue=xmg.getStringField("INSTR_ID", issuesegment);
		msgdistributioncurrency = xmg.getStringField("DISTRIBUTION_CURR_CDE",issuesegment);
		msgnvndistributioncurrency = xmg.getStringField("NUVEEN_INCOME_CURRENCY	",nvnderivedsegment);


		loggerDebug("Issue type is: " +  issuetype);

		if (("LOAN".equals(issuetype)) || ("MISC".equals(issuetype)))
		{
			loggerDebug("Rule is applicable as issue type is: " +  issuetype);
			loggerDebug("Principal Currency is: " +  msgprincipalcurrency);
			/** Check the message to find values in the file*/
			if (msgprincipalcurrency == null)
			{
				/**Check if instrument is new or not able to retrieve the instrument id*/
				if (instridvalue == null) 
				{	
					loggerDebug("Not Found Instrument ID");
					printXMLMessage(END);
					return true;
				}	
				/** For Existing Security, data needs to be checked in the database as well*/
				else {
					loggerDebug("Found Instrument ID");
					String querydbPrincipalCurrency = "select DENOM_CURR_CDE from ft_T_issu where instr_id= :instr_id<char[11]> and end_tms is null";
					String params;
					params=instridvalue;
					String dbPrincipalCurrency=null ;
					dbPrincipalCurrency = commons.getFirstValDB(querydbPrincipalCurrency, params);
					loggerDebug("Database Principal Curreny is: "+dbPrincipalCurrency);

					String incomingmsgtyp=commons.getMsgType();

					if (dbPrincipalCurrency == null || dbPrincipalCurrency.isEmpty() || "Eagle_GSInstrument".equals(incomingmsgtyp) || "LRD_Facility".equals(incomingmsgtyp))
					{
						if ("MISC".equals(issuetype))
						{
							currencyvalue="USD";
							addcurrencyvalue(xmg,instridvalue,currencyvalue);
							return true;
						}
						if ("LOAN".equals(issuetype))
						{
							loggerDebug("Security is already present and issue type is LOAN");
							String querydbdistributionCurrency = "select DISTRIBUTION_CURR_CDE from ft_T_issu where instr_id= :instr_id<char[11]> and end_tms is null";
							String querydbnvndistributionCurrency = "select NUVEEN_INCOME_CURRENCY from ft_T_ndf1 where instr_id= :instr_id<char[11]> and end_tms is null";

							String dbnvndistributionCurrency=null ;
							dbnvndistributionCurrency = commons.getFirstValDB(querydbnvndistributionCurrency, params);

							String dbdistributionCurrency=null ;
							dbdistributionCurrency = commons.getFirstValDB(querydbdistributionCurrency, params);

							loggerDebug("Distribution Currenct is: "+dbdistributionCurrency+ ". Nuveen Distribution Currenct is: "+dbnvndistributionCurrency );


							if (msgdistributioncurrency != null && !msgdistributioncurrency.isEmpty())
							{
								loggerDebug("Value from msgdistributioncurrency");
								currencyvalue=msgdistributioncurrency;
								addcurrencyvalue(xmg,instridvalue,currencyvalue);
							}
							else if (dbdistributionCurrency != null && !dbdistributionCurrency.isEmpty())
							{
								loggerDebug("Value from dbdistributionCurrency");
								currencyvalue=dbdistributionCurrency;
								addcurrencyvalue(xmg,instridvalue,currencyvalue);
							}
							else if (msgnvndistributioncurrency != null && !msgnvndistributioncurrency.isEmpty())
							{
								loggerDebug("Value from msgnvndistributioncurrency");
								currencyvalue=msgnvndistributioncurrency;
								addcurrencyvalue(xmg,instridvalue,currencyvalue);
							}
							else if (dbnvndistributionCurrency != null && !dbnvndistributionCurrency.isEmpty())
							{
								loggerDebug("Value from dbnvndistributionCurrency");
								currencyvalue=dbnvndistributionCurrency;
								addcurrencyvalue(xmg,instridvalue,currencyvalue);
							}
							else
							{
								loggerDebug("Defaulted to USD.");
								currencyvalue="USD";
								addcurrencyvalue(xmg,instridvalue,currencyvalue);
							}
						}
					}
				}
				printXMLMessage(END);

				return true; 
			}
			loggerDebug("Principal Currency is not null hence exiting the rule");
			printXMLMessage(END);
		}
		else
		{
			/* Default return to gracefully exit rule processing */
			loggerDebug("Rule is not applicable as issue type is: " +  issuetype);
			printXMLMessage(END);
		}
		return true;
	}

	/**Add the derived issue segment as per the condition to populate Principal Currency*/
	private void addcurrencyvalue (XMLMessage xmg,String instridvalue,String currencyvalue){
		SegmentId newSeg = xmg.addSegment("D_UPDATE", "Issue");
		xmg.addField("INSTR_ID",newSeg,instridvalue);
		xmg.addField("DENOM_CURR_CDE",newSeg,currencyvalue);
		printXMLMessage(END);
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
