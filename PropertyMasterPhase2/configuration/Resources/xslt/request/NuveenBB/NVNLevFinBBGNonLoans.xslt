<?xml version="1.0"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<!-- <xsl:import href="db://resource/xslt/request/bloomberg/NVNLevFinBBGNonLoansImport.xslt"/> -->
	<xsl:param name="Firmname" select="'Please specify the firmname in the configuration of the service'"></xsl:param>
	<xsl:output method="text"/>
	<xsl:template match="/VendorRequest">START-OF-FILE
	<!--  <xsl:call-template name="extra-header-fields"/>  -->
FIRMNAME=<xsl:value-of select="$Firmname"/>
DATEFORMAT=yyyymmdd
PROGRAMNAME=getdata<xsl:if test="/VendorRequest/Request/Param[@Key='DATERANGE']">
DATERANGE=<xsl:value-of select="/VendorRequest/Request/Param[@Key='DATERANGE']"/></xsl:if>
<xsl:if test="/VendorRequest/Request/Param[@Key='ACTIONS']">
ACTIONS=<xsl:value-of select="/VendorRequest/Request/Param[@Key='ACTIONS']"/></xsl:if>
<xsl:if test="/VendorRequest/Request/Param[@Key='ACTIONS_DATE']">
ACTIONS_DATE=<xsl:value-of select="/VendorRequest/Request/Param[@Key='ACTIONS_DATE']"/></xsl:if>
<xsl:if test="/VendorRequest/ProgramFlag/text()">
PROGRAMFLAG=<xsl:value-of select="/VendorRequest/ProgramFlag/text()"/></xsl:if>
<xsl:if test="/VendorRequest/Request/Param[@Key='Header_YELLOWKEY']">
YELLOWKEY=<xsl:value-of select="/VendorRequest/Request/Param[@Key='Header_YELLOWKEY']"/></xsl:if>
<xsl:if test="/VendorRequest/DiffFlag/text()">
DIFFFLAG=<xsl:value-of select="/VendorRequest/DiffFlag/text()"/></xsl:if>
<xsl:if test="/VendorRequest/RunDate/text()">
RUNDATE=<xsl:value-of select="/VendorRequest/RunDate/text()"/></xsl:if>
<xsl:if test="/VendorRequest/Time/text()">
TIME=<xsl:value-of select="/VendorRequest/Time/text()"/></xsl:if>
<xsl:if test="/VendorRequest/ReplyFileName/text()">
REPLYFILENAME=<xsl:value-of select="/VendorRequest/ReplyFileName/text()"/></xsl:if>

START-OF-FIELDS
#BBRequestReplyFileForNonLoans<xsl:if test="/VendorRequest/Request/RequestType='NVNLevFinBBGNonLoans'">
ID_BB_GLOBAL
ID_BB_UNIQUE
ID_CUSIP_REAL
TICKER
ID_ISIN
ID_BB
ID_SEDOL1
ID_CUSIP_REAL
ID_CUSIP
ID_BB_GLOBAL_COMPANY
ID_BB_COMPANY
SECURITY_TYP
COUNTRY_FULL_NAME
REGULATORY_REGISTRATION_TYPE
LN_ISSUE_STATUS
ASW_SWAP_PAY_RESET_FREQ
AMT_OUTSTANDING_MMM
EXCHANGE_LISTED_INDICATOR
YLD_YTM_MID
PARENT_TICKER
CALLED
CALLED_DT
CAST_PARENT_ID
COMPANY_IS_PRIVATE
CRNCY
DAYS_TO_NEXT_COUPON
DDIS_AMT_OUT_ISSUER_BND_LN
DDIS_AMT_OUT_ISSUER_SUBS_BND_LN
DDIS_LN_AMT_OUTSTANDING_ISSUER
DDIS_LN_AMT_OUTSTANDING_ISUR_SUB
DEBT_TO_EQUITY_FUNDAMENTALS_TKR
EQY_RECENT_QT_END
EXPECTED_REPORT_DT
FULL_FUND_AVAIL
FUNDING_DATE
HARD_CALL
IS_SECURED
JUNIOR
LATEST_ANN_DT_QTRLY
LATEST_ANNOUNCEMENT_DT
LATEST_ANNOUNCEMENT_PERIOD
LATEST_PERIOD_END_DT_FULL_RECORD
MAKE_WHOLE_TERMINATION_DATE
MOST_RECENT_PERIOD_END_DT
MTG_NXT_PAY_DT_SET_DT
REAL_BLOOMBERG_DEPT_DES
SECURITY_PRICING_DATE
SP_LT_LC_ISSUER_CREDIT_RTG_WATCH
FUT_INIT_SPEC_ML
MIFID_SENIORITY_OF_BOND
MTG_HIST_PREPAY_FRCST_BMED
MARKET_SECTOR_DES
GICS_SECTOR
GICS_INDUSTRY_GROUP
GICS_INDUSTRY
GICS_SUB_INDUSTRY
BICS_LEVEL_1_SECTOR_NAME
BICS_LEVEL_1_SECTOR_CODE
BICS_LEVEL_2_INDUSTRY_GROUP_NAME
BICS_LEVEL_2_INDUSTRY_GROUP_CODE
BICS_LEVEL_3_INDUSTRY_NAME
BICS_LEVEL_3_INDUSTRY_CODE
BICS_LEVEL_4_SUB_INDUSTRY_NAME
BICS_LEVEL_4_SUB_INDUSTRY_CODE
</xsl:if><xsl:comment> end for NVNLevFinBBGNonLoans </xsl:comment>
<!-- <xsl:call-template name="extra-fields"/>  -->
END-OF-FIELDS

START-OF-DATA
<xsl:apply-templates select="Request"/>END-OF-DATA
END-OF-FILE</xsl:template>
	<xsl:template match="Request">#Identifier=<xsl:value-of select="Identifier"/>|<xsl:for-each select="OID"><xsl:value-of select="text()"/><xsl:if test="position()!=last()"><xsl:text>,</xsl:text></xsl:if></xsl:for-each>|<xsl:for-each select="MSGTYP"><xsl:value-of select="text()"/><xsl:if test="position()!=last()"><xsl:text>,</xsl:text></xsl:if></xsl:for-each><xsl:text>
</xsl:text>
	<xsl:value-of select="Identifier"/><xsl:text> </xsl:text>
	<xsl:if test="Param[@Key='Header_YELLOWKEY']"><xsl:value-of select="Param[@Key='Header_YELLOWKEY']"/><xsl:text> </xsl:text></xsl:if>
	<xsl:if test="Param[@Key='Exchange']"><xsl:value-of select="Param[@Key='Exchange']"/><xsl:text> </xsl:text></xsl:if>
	<xsl:if test="Param[@Key='MarketSector']"><xsl:value-of select="Param[@Key='MarketSector']"/><xsl:text> </xsl:text></xsl:if>| <xsl:value-of select="IDContext"/><xsl:text>
</xsl:text></xsl:template>
</xsl:stylesheet>