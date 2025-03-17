import com.thegoldensource.jbre.SegmentId;

public interface CJavaNvnConstants {

	/*
	 * TODO : Segregate and try to use ENUMS
	 */
	SegmentId HEADER_SEGMENT = new SegmentId(0);
	public static final String SEGMENT_PROCESS_INDICATOR_CREATE = "C";
	public static final String SEGMENT_PROCESS_INDICATOR_UPDATE = "U";
	public static final String SEGMENT_PROCESS_INDICATOR_NEW = "N";
	public static final String SEGMENT_ACTION_UNKNOWN = "UNKNOWN";
	public static final String SEGMENT_ACTION_UPDATE = "UPDATE";
	public static final String SEGMENT_ACTION_DELETE = "DELETE";
	public static final String SEGMENT_ACTION_REFERENCE = "REFERENCE";
	public static final String ISSUE_TYPE_LOAN = "LOAN";
	public static final String BBGLOBAL = "BBGLOBAL";
	public static final String LXID = "LXID";
	public static final String NPRVTFLG = "NPRVTFLG";
	public static final String ID_CTXT_TYP = "ID_CTXT_TYP";
	public static final String STAT_DEF_ID = "STAT_DEF_ID";
	public static final String STAT_CHAR_VAL_TXT = "STAT_CHAR_VAL_TXT";
	public static final String ISS_ID = "ISS_ID";
	public static final String ISS_TYP = "ISS_TYP";
	public static final String BLANK = "blank";
	public static final String PRIVATE_FLAG_Y = "Y";
	public static final String PRIVATE_FLAG_N = "N";

	public static final String CJavaNREAPIMailAddCstmErr = "CJavaNREAPIMailAddCstmErr",
			CJavaNREBuildingIDGenerator = "CJavaNREBuildingIDGenerator",
			CJavaNREAssetNoGenerator = "CJavaNREAssetNoGenerator", START = "START", END = "END",
			PPTYProperty = "PPTYProperty", PPRYProperty = "PPRYProperty",
			PPRYPropertyIdentifier = "PPRYPropertyIdentifier", PPRYCentralCrossReference = "PPRYCentralCrossReference",
			AddressType = "AddressType", MailingAddress = "MailingAddress", INVSTMT_ID = "INVSTMT_ID",
			ASST_ID = "ASST_ID", PROP_ID = "DEALPATH_PROP_ID", ASSETNO = "ASSETNO", PPRY_OID = "PPRY_OID",
			PROP_ID_CTXT_TYP = "PROP_ID_CTXT_TYP", PROPERTY_NME = "PROPERTY_NME", DERIVED = "DERIVED",
			CJavaNSMISINCUSIPIgnore = "CJavaNSMISINCUSIPIgnore", MESSAGETYPE = "MESSAGETYPE",
			IssueIdentifier = "IssueIdentifier", ISID_ID_CTXT_COL = "ID_CTXT_TYP", ISID_ISS_ID_COL = "ISS_ID",
			ISIN_ID_CTXT_VAL = "ISIN", CUSIP_ID_CTXT_VAL = "CUSIP", ISSU = "ISSU",
			CJavaCheckPrincipalCurrency = "CJavaCheckPrincipalCurrency", CJavaNSMRatingRecon = "CJavaNSMRatingRecon",
			RTNGSEGMENTTYPE = "RTNGSEGMENTTYPE", ENTSEGMENTTYPE = "ENTSEGMENTTYPE",
			CJavaNSMMoodysLTRatingMaster = "CJavaNSMMoodysLTRatingMaster", IssueRating = "IssueRating",
			RatingValue = "RatingValue", RatingSetDefinition = "RatingSetDefinition",
			CJavaCheckFigiPublicLoans =	"CJavaCheckFigiPublicLoans",
			CJavaCheckLXUpdateLevLoans = "CJavaCheckLXUpdateLevLoans", 
			CJavaCheckLXMissingForPublicLoan = "CJavaCheckLXMissingForPublicLoan",
			CJavaMatchEagleSecurity="CJavaMatchEagleSecurity";
}	