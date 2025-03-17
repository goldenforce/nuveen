import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;

import org.apache.log4j.Logger;

import com.thegoldensource.jbre.DatabaseAccess;
import com.thegoldensource.jbre.DatabaseObjectContainer;
import com.thegoldensource.jbre.GSException;
import com.thegoldensource.jbre.NotificationCreator;
import com.thegoldensource.jbre.ProcessorContext;
import com.thegoldensource.jbre.SegmentId;
import com.thegoldensource.jbre.XMLMessage;

public class CJavaNRECommons {
	private static Logger logger = Logger.getLogger("CJavaNRECommons");
	private static final int PARTIAL_FAILURE_TECHNICAL_ERROR = 89;
	private static final int FATAL_ERROR = 153;

	private static XMLMessage msg = null;
	private DatabaseObjectContainer dboc = null;
	private ProcessorContext pContext = null;
	private DatabaseAccess dbConnection = null;
	private static NotificationCreator notificationCreator = null;
	private List<SegmentId> segIdsPPRY = new ArrayList<SegmentId>();

	public CJavaNRECommons(XMLMessage msg, DatabaseObjectContainer dboc, ProcessorContext pContext,
			DatabaseAccess dbConnection, NotificationCreator notificationCreator) {
		this.msg = msg;
		this.dboc = dboc;
		this.pContext = pContext;
		this.dbConnection = dbConnection;
		this.notificationCreator = notificationCreator;
	}

	public DatabaseAccess getDbConnection() {
		return dbConnection;
	}

	public XMLMessage getXMLMessage() {
		return msg;
	}

	public NotificationCreator getNotificationCreator() {
		return notificationCreator;
	}

	/**
	 * Get Segments of a specific Type
	 * 
	 * @param msg
	 *            XMLMessage
	 * @param segType
	 *            Type of segement e.g. Issue, IssueIdentifier
	 * @return A list of SegmentId objects
	 */
	public List<SegmentId> getSegmentIds(String segType) {
		List<SegmentId> segIdList = new ArrayList<SegmentId>();
		for (int i = 0; i < msg.getSegmentCount(); i++) {
			SegmentId segId = new SegmentId(i);
			if (msg.getSegmentType(segId).equals(segType)) {
				segIdList.add(segId);
			}
		}
		return segIdList;
	}

	public SegmentId getSegmentId(String segType) {
		List<SegmentId> segIdList = getSegmentIds(segType);
		if (segIdList.size() > 0) {
			return segIdList.get(0);
		} else {
			return null;
		}
	}

	public SegmentId getSegmentId(String segType, String filterColNme, String filterColVal) {
		List<SegmentId> segIdList = getSegmentIds(segType, filterColNme, filterColVal);
		if (segIdList.size() > 0) {
			return segIdList.get(0);
		} else {
			return null;
		}
	}

	public HashMap<Integer, List<String>> getQueryResultFromDB(DatabaseAccess dbConnection, String query,
			List<String> params, int noOfColumsInSelect) {
		HashMap<Integer, List<String>> rowNumberToRowColumnsMap = new HashMap<Integer, List<String>>();
		List<String> rowColumns = new ArrayList<String>();
		if (query == null || "".equals(query)) {
			return null;
		}
		logger.debug("Executing: " + query);
		try {
			dbConnection.setSQL(query);
			for (String param : params)
				dbConnection.addParameter(param);
			boolean isExecute = dbConnection.execute();
			if (!isExecute) {
				logger.error("ERROR: Failed to execute SQL statement.");
			}
			int rowNumber = 1;
			while (!dbConnection.isEndOfStream()) {
				int columnNumber = 1;
				while (columnNumber <= noOfColumsInSelect) {
					String queryNextString = dbConnection.getNextString().trim();
					rowColumns.add(queryNextString);
					columnNumber++;
				}
				rowNumberToRowColumnsMap.put(rowNumber, rowColumns);
				logger.debug("Records present: row" + rowNumber + " : " + rowColumns.toString());
				rowColumns = new ArrayList<String>();
				columnNumber = 1;
				rowNumber++;
			}
		} catch (Exception e) {
			if (!(e instanceof GSException)) {
				logger.error("ERROR: " + e.getMessage());
			}
		} finally {
			try {
				dbConnection.close();
			} catch (Exception e) {
				logger.debug("Connection is not open.");
			}
		}
		return rowNumberToRowColumnsMap;
	}

	public List<SegmentId> getSegmentIds(String segType, String filterColNme, Integer filterColVal) {
		List<SegmentId> segIdList = new ArrayList<SegmentId>();
		logger.debug("getSegmentIds Before For each segType: " + segType + " Column Name : " + filterColNme + " Value :"
				+ filterColVal);
		for (int i = 0; i < msg.getSegmentCount(); i++) {
			SegmentId segId = new SegmentId(i);
			if (msg.getSegmentType(segId).equals(segType)) {

				logger.debug("getSegmentIds in If statement segType: " + segType + " Column Name : " + filterColNme
						+ " Value :" + filterColVal);

				if (filterColNme != null && !"".equalsIgnoreCase(filterColNme) && filterColVal != null
						&& !"".equals(filterColVal)) {
					Integer fColNameInt = msg.getIntegerField(filterColNme, segId);

					logger.debug("getSegmentIds in If statement segType: " + segType + " Column Name : " + filterColNme
							+ " Value :" + filterColVal + "fColNameInt: " + fColNameInt);
					String fColNameStr = null;
					if (fColNameInt == null || "".equals(fColNameInt)) {
						fColNameStr = getKeyColFromOID(segId, filterColNme);
						logger.debug("getSegmentIds in If statement segType: " + segType + " Column Name : "
								+ filterColNme + " Value :" + filterColVal + "fColNameInt: " + fColNameInt
								+ "fColNameStr: " + fColNameStr);
					}
					if (fColNameStr == null && fColNameInt == null) {
						logger.debug("getSegmentIds in CONTINUE block segType: " + segType + " Column Name : "
								+ filterColNme + " Value :" + filterColVal + "fColNameInt: " + fColNameInt
								+ "fColNameStr: " + fColNameStr);
						continue;
					}

					logger.debug("Adding equals");
					if (filterColVal.equals(fColNameInt)) {
						segIdList.add(segId);
						logger.debug("Segment added 1 - getSegmentIds in If statement segType: " + segType
								+ " Column Name : " + filterColNme + " Value :" + filterColVal + "fColNameInt: "
								+ fColNameInt + "filterColVal: " + filterColVal + "fColNameStr: " + fColNameStr);
					}

					else if (fColNameStr != null) {
						if (filterColVal == Integer.parseInt(fColNameStr)) {
							segIdList.add(segId);
							logger.debug("Segment added 2 getSegmentIds in If statement segType: " + segType
									+ " Column Name : " + filterColNme + " Value :" + filterColVal + "fColNameInt: "
									+ fColNameInt + "filterColVal: " + filterColVal + "fColNameStr: " + fColNameStr);
						}
					}

				} else {
					segIdList.add(segId);
				}
			}
		}
		return segIdList;
	}

	public List<SegmentId> getSegmentIds(String segType, String filterColNme, String filterColVal) {
		List<SegmentId> segIdList = new ArrayList<SegmentId>();
		for (int i = 0; i < msg.getSegmentCount(); i++) {
			SegmentId segId = new SegmentId(i);
			if (msg.getSegmentType(segId).equals(segType)) {

				if (filterColNme != null && !"".equalsIgnoreCase(filterColNme) && filterColVal != null
						&& !"".equals(filterColVal)) {
					String fColNameStr = msg.getStringField(filterColNme, segId);

					if (fColNameStr == null || "".equals(fColNameStr)) {
						fColNameStr = getKeyColFromOID(segId, filterColNme);
					}
					if (fColNameStr == null) {
						continue;
					}
					if (filterColVal.equalsIgnoreCase(fColNameStr)) {
						segIdList.add(segId);
					}
				} else {
					segIdList.add(segId);
				}
			}
		}
		return segIdList;
	}

	/**
	 * Returns the message classification from the header
	 * 
	 * @param msg
	 * @return
	 */
	public String getMsgClassification() {

		String classification = msg.getStringField("MSG_CLASSIFICATION", new SegmentId(0));
		if (classification == null) {
			return "";
		}

		return classification;
	}

	/**
	 * Returns the data_src_id from the header/0th segment
	 * 
	 * @param msg
	 * @return
	 */
	public String getMsgDataSourceID() {

		String strDataSrcID = msg.getStringField("DATA_SRC_ID", new SegmentId(0));
		if (strDataSrcID == null)
			strDataSrcID = new String("");

		return strDataSrcID;
	}

	/**
	 * Check if the given message is a message from the Web Screens
	 * 
	 * @return true if a screen message, false if it is a vendor message
	 */
	public boolean isScreenMessage() {
		if ("WEBMSG".equals(getMsgClassification())) {
			return true;
		}

		return false;
	}

	/**
	 * Returns the main segemnet type e.g. Issue, Issuer,
	 * FinancialInstituion,...
	 * 
	 * @return main segment type
	 */
	public String getMainEntityTableType() {
		String entityTableType = msg.getStringField("MAIN_ENTITY_TBL_TYP", new SegmentId(0));
		if (entityTableType == null)
			entityTableType = new String("");

		return entityTableType;
	}

	/**
	 * Returns the main entity type e.g. Building, Asset, Investment
	 * 
	 * @return main entity type
	 */
	public String getMainEntityType() {
		String entityType = msg.getStringField("MAIN_ENTITY_TYP", new SegmentId(0));
		if (entityType == null)
			entityType = new String("");
		return entityType;
	}

	/**
	 * Returns if the message is "manually" overriden
	 * 
	 * @param msg
	 * @return
	 */
	public boolean isMsgOverride() {
		String value = msg.getStringField("DATA_ID", new SegmentId(0));
		if (value != null && "Y".equalsIgnoreCase(value)) {
			return true;
		}
		return false;
	}

	private String getKeyColFromOID(SegmentId segId, String filterColNme) {
		String oid = "";
		String oidColName = "";
		String tblName = "";
		if (segId == null || "".equals(segId)) {
			logger.error("Empty segment Id ");
			return null;
		}
		String segmentName = msg.getSegmentType(segId);

		if (segmentName == null || "".equals(segmentName)) {
			logger.error("Error fetching segment name for segId=" + segId);
			return null;
		}
		if (segmentName.equals("PPTYPropertyType")) {
			oidColName = "PPTY_OID";
			tblName = "FT_T_PPTY";
		} else if (segmentName.equals("PPRYProperty")) {
			oidColName = "PPRY_OID";
			tblName = "FT_T_PPRY";
		} else if (segmentName.equals("PPRYPropertyIdentifier")) {
			oidColName = "PPID_OID";
			tblName = "FT_T_PPID";
		} else {
			logger.error("Kindly provide details of SegmentName" + segmentName + " filterColName" + filterColNme);
		}

		oid = getStringFieldFromMsg(segId, oidColName);
		if (oid == null || "".equals(oid))
			return null;

		String query = "SELECT " + filterColNme + " FROM " + tblName + " WHERE " + oidColName + " = ? ";

		return getFirstValDB(query, oid);
	}

	public String getFirstValDB(String query, String val) {
		if (query == null || "".equals(query))
			return null;

		logger.debug("Executing: " + query);

		try {
			dbConnection.setSQL(query);
			dbConnection.addParameter(val);

			if (!dbConnection.execute())
				logger.error("ERROR: Failed to execute SQL statement.");

			if (!dbConnection.isEndOfStream())
				return dbConnection.getNextString().trim();
		} catch (Exception e) {
			if (!(e instanceof GSException))
				logger.error("ERROR: " + e.getMessage());
		}
		return null;
	}

	public String getFirstValDB(String query) {

		if (query == null || "".equals(query)) {
			return null;
		}

		logger.debug("Executing: " + query);

		try {
			dbConnection.setSQL(query);

			if (!dbConnection.execute()) {
				logger.error("ERROR: Failed to execute SQL statement.");
			}
			if (!dbConnection.isEndOfStream()) {
				return dbConnection.getNextString().trim();
			}
		} catch (Exception e) {
			if (!(e instanceof GSException)) {
				logger.error("ERROR: " + e.getMessage());
			}
		}
		return null;

	}

	public String getStringFieldFromMsg(String segmentNme, String colNme, String filterColNme, String filterColVal) {
		return getStringFromMsgWithFilter(segmentNme, colNme, filterColNme, filterColVal);
	}

	public String getStringFromMsgWithFilter(String segmentNme, String colNme, String filterColNme,
			String filterColVal) {
		String rtStr = null;
		List<SegmentId> segList = getSegmentIds(segmentNme);
		if (segList == null || segList.size() == 0) {
			return null;
		} else {
			if (filterColNme != null && !"".equalsIgnoreCase(filterColNme) && filterColVal != null
					&& !"".equals(filterColVal)) {
				for (SegmentId segId : segList) {
					if (getSegmentProcessInd(segId).equals("D") || getSegmentProcessInd(segId).equals("P")) {
						continue;
					}
					String fColNameStr = msg.getStringField(filterColNme, segId);

					if (fColNameStr == null || "".equals(fColNameStr)) {
						fColNameStr = getKeyColFromOID(segId, filterColNme);
					}
					if (fColNameStr == null) {
						continue;
					}
					if (filterColVal.equalsIgnoreCase(fColNameStr)) {
						rtStr = msg.getStringField(colNme, segId);
						if (rtStr != null) {
							break;
						}
					}
				}
			} else {
				if (!(getSegmentProcessInd(segList.get(0)).equals("D")
						|| getSegmentProcessInd(segList.get(0)).equals("P"))) {
					rtStr = msg.getStringField(colNme, segList.get(0));
				}

			}
		}

		return rtStr;
	}

	public String getStringFieldFromMsg(String segment_nme, String col_nme) {
		String val = null;
		List<SegmentId> seg = getSegmentIds(segment_nme);
		if (seg == null || seg.size() > 0) {
			for (SegmentId segId : seg) {
				if (getSegmentProcessInd(segId).equals("D") || getSegmentProcessInd(segId).equals("P")) {
					continue;
				}
				val = msg.getStringField(col_nme, segId);
				if (val != null && !"".equals(val)) {
					return val;
				}
			}
		}

		return val;
	}
	
	public Integer getIntegerFieldFromMsg(SegmentId segmentId, String col_nme) {
		Integer val = null;
		if (segmentId != null) {
			if (!(getSegmentProcessInd(segmentId).equals("D") || getSegmentProcessInd(segmentId).equals("P"))) {
				val = msg.getIntegerField(col_nme, segmentId);
			}
		}

		return val;
	}

	public String getStringFieldFromMsg(SegmentId segmentId, String col_nme) {
		String val = null;
		if (segmentId != null) {
			if (!(getSegmentProcessInd(segmentId).equals("D") || getSegmentProcessInd(segmentId).equals("P"))) {
				val = msg.getStringField(col_nme, segmentId);
			}
		}

		return val;
	}

	public String getSegmentProcessInd(SegmentId segId) {
		String segProcessedInd = msg.getSegmentAttribute(segId, "SEGPROCESSEDIND");

		if (segProcessedInd == null) {
			return "";
		} else {
			return segProcessedInd;
		}

	}

	// Add segment
	public boolean addSegment(XMLMessage xmlMsg, String segmentName, String action, Map<String, String> attributesMap,
			Map<String, ?> fieldsMap, NotificationCreator notificationCreator) {
		addSegment(xmlMsg, segmentName, action, attributesMap, fieldsMap, notificationCreator, null, null);
		return true;
	}

	// Add derived/nested segment
	public boolean addSegment(XMLMessage xmlMsg, String segmentName, String action, Map<String, String> attributesMap,
			Map<String, ?> fieldsMap, NotificationCreator notificationCreator, String segType,
			SegmentId parentSegmentId) {

		SegmentId segmentId;
		segType = segType == null ? "" : segType;

		if ("nested".equalsIgnoreCase(segType))
			segmentId = xmlMsg.addSegment(action, segmentName, parentSegmentId);
		else
			segmentId = xmlMsg.addSegment(action, segmentName);

		if (segmentId.equals(-1)) {
			logger.debug("Failed to add " + segType + " segment : " + segmentName);
			HashMap<String, String> notfcnDescMap = new HashMap<String, String>();
			notfcnDescMap.put("MsgText",
					"Segment addition failed for segment :" + segmentName + "with fields :" + fieldsMap.toString());
			raiseNotifcn("STRDATA", "RULEPRC", notificationCreator, PARTIAL_FAILURE_TECHNICAL_ERROR, notfcnDescMap);
			raiseNotifcn("STRDATA", "RULEPRC", notificationCreator, FATAL_ERROR, notfcnDescMap);
			return false;
		}
		if (attributesMap != null) {
			for (Map.Entry<String, String> attribute : attributesMap.entrySet()) {
				xmlMsg.setSegmentAttribute(segmentId, attribute.getKey(), attribute.getValue());
			}
		}
		/*
		 * TODO : Improve below piece of code
		 */
		if (fieldsMap != null) {
			for (Map.Entry<String, ?> field : fieldsMap.entrySet()) {
				Object fieldValue = field.getValue();
				if (field.getValue() instanceof String)
					xmlMsg.addField(field.getKey(), segmentId, (String) fieldValue);
				else if (field.getValue() instanceof Integer)
					xmlMsg.addField(field.getKey(), segmentId, (Integer) field.getValue());
				else if (field.getValue() instanceof Date)
					xmlMsg.addField(field.getKey(), segmentId, (Date) field.getValue());
				else if (field.getValue() instanceof BigDecimal)
					xmlMsg.addField(field.getKey(), segmentId, (BigDecimal) field.getValue());
			}
		}
		logger.debug(
				"Successfully added " + segType + " segment :" + segmentName + " with fields :" + fieldsMap.toString());
		return true;
	}

	public boolean addSegmentWithNested(XMLMessage xmlMsg, NotificationCreator notificationCreator,
			String nestedSegmentName, String nestedAction, Map<String, String> nestedAttributesMap,
			Map<String, ?> nestedFieldsMap, String parentSegmentName, String parentAction,
			Map<String, String> parentAttributesMap, Map<String, ?> parentFieldsMap) {

		SegmentId parentSegmentId = xmlMsg.addSegment(parentAction, parentSegmentName);

		if (parentSegmentId.equals(-1)) {
			logger.debug("Failed to add derived segment : " + parentSegmentName);
			HashMap<String, String> notfcnDescMap = new HashMap<String, String>();
			notfcnDescMap.put("MsgText", "Segment addition failed for segment :" + parentSegmentName + "with fields :"
					+ parentFieldsMap.toString());
			raiseNotifcn("STRDATA", "RULEPRC", notificationCreator, PARTIAL_FAILURE_TECHNICAL_ERROR, notfcnDescMap);
			raiseNotifcn("STRDATA", "RULEPRC", notificationCreator, FATAL_ERROR, notfcnDescMap);
			return false;
		} else
			addSegment(xmlMsg, nestedSegmentName, nestedAction, nestedAttributesMap, nestedFieldsMap,
					notificationCreator, "nested", parentSegmentId);

		if (parentAttributesMap != null) {
			for (Map.Entry<String, String> attribute : parentAttributesMap.entrySet()) {
				xmlMsg.setSegmentAttribute(parentSegmentId, attribute.getKey(), attribute.getValue());
			}
		}
		/*
		 * TODO : Improve below piece of code
		 */
		if (parentFieldsMap != null) {
			for (Map.Entry<String, ?> field : parentFieldsMap.entrySet()) {
				Object fieldValue = field.getValue();
				if (field.getValue() instanceof String)
					xmlMsg.addField(field.getKey(), parentSegmentId, (String) fieldValue);
				else if (field.getValue() instanceof Integer)
					xmlMsg.addField(field.getKey(), parentSegmentId, (Integer) fieldValue);
				else if (field.getValue() instanceof Date)
					xmlMsg.addField(field.getKey(), parentSegmentId, (Date) fieldValue);
				else if (field.getValue() instanceof BigDecimal)
					xmlMsg.addField(field.getKey(), parentSegmentId, (BigDecimal) fieldValue);
			}
		}
		logger.debug("Successfully added derived segment :" + parentSegmentName + " with fields :"
				+ parentFieldsMap.toString());
		return true;
	}

	// Raise Notification
	public static void raiseNotifcn(String appId, String partId, NotificationCreator notificationCreator, int notifcnId,
			Map<String, String> errorDesc) {
		try {
			logger.debug("Raising Notification");
			String[] paramNames = new String[errorDesc.size()];
			String[] paramValues = new String[errorDesc.size()];
			int index = 0;
			for (Entry<String, String> errorDescEntry : errorDesc.entrySet()) {
				paramNames[index] = errorDescEntry.getKey();
				paramValues[index] = errorDescEntry.getValue();
				index++;
			}
			logger.debug("Notification description paramNames = " + Arrays.toString(paramNames));
			logger.debug("Notification description paramValues = " + Arrays.toString(paramValues));
			logger.debug("Error notification id  = " + notifcnId);
			if (notificationCreator.raiseException(appId, partId, notifcnId, paramNames, paramValues)) {
				logger.debug("Successfully raised notification with notification ID : " + notifcnId);
			}
		} catch (Exception e) {
			logger.debug("Java Exception occured inside method raiseNotifcn()");
			e.printStackTrace();
		}
	}
}