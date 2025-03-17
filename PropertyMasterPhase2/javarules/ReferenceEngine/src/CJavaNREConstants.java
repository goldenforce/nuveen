import com.thegoldensource.jbre.SegmentId;

public interface CJavaNREConstants {
	/*
	 * TODO : Segregate and try to use ENUMS
	 */
	SegmentId HEADER_SEGMENT = new SegmentId(0);
	String SEGMENT_PROCESS_INDICATOR_CREATE = "C";
	String SEGMENT_PROCESS_INDICATOR_UPDATE = "U";
	String SEGMENT_PROCESS_INDICATOR_NEW = "N";
	String SEGMENT_ACTION_UNKNOWN = "UNKNOWN";
	String SEGMENT_ACTION_UPDATE = "UPDATE";
	String SEGMENT_ACTION_DELETE = "DELETE";
	String SEGMENT_ACTION_REFERENCE = "REFERENCE";

	String CJavaNREAPIMailAddCstmErr = "CJavaNREAPIMailAddCstmErr",
			CJavaNREBuildingIDGenerator = "CJavaNREBuildingIDGenerator",
			CJavaNREAssetNoGenerator = "CJavaNREAssetNoGenerator", START = "START", END = "END",
			PPTYProperty = "PPTYProperty", PPRYProperty = "PPRYProperty",
			PPRYPropertyIdentifier = "PPRYPropertyIdentifier", PPRYCentralCrossReference = "PPRYCentralCrossReference",
			AddressType = "AddressType", MailingAddress = "MailingAddress", INVSTMT_ID = "INVSTMT_ID",
			ASST_ID = "ASST_ID", PROP_ID = "PROP_ID", ASSETNO = "ASSETNO", PPRY_OID = "PPRY_OID",
			PROP_ID_CTXT_TYP = "PROP_ID_CTXT_TYP", PROPERTY_NME = "PROPERTY_NME", DERIVED = "DERIVED";
}