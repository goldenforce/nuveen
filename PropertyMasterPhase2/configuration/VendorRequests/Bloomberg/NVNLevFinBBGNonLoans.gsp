<?xml version="1.0" encoding="UTF-8" standalone="no"?>
<goldensource-package version="8.8.1.47">
<package-comment/>
<businessobject displayString="NVNLevFinBBGNonLoans" type="com.j2fe.connector.RequestType">
<com.j2fe.connector.RequestType id="0">
<dataSource id="1">
<id id="2">BB</id>
<requestTypes id="3" type="java.util.HashSet">
<item idref="0" type="com.j2fe.connector.RequestType"/>
</requestTypes>
</dataSource>
<dataTypes id="4" type="java.util.HashSet"/>
<externalIssueTypes id="5" type="java.util.HashSet"/>
<filePattern id="6">gs*.req</filePattern>
<marketSector id="7" type="java.util.HashSet"/>
<messageType id="8">
<businessEntity>false</businessEntity>
<caputureProcessMessage>false</caputureProcessMessage>
<commitMode>None</commitMode>
<dataLineageEnabled>false</dataLineageEnabled>
<isKeyStreaming>false</isKeyStreaming>
<isVDDB>false</isVDDB>
<name id="9">NVNBBPerSecNonLoans</name>
<nearRealtimePublishing>false</nearRealtimePublishing>
<rollbackOnError>false</rollbackOnError>
<saveVendorDataType>None</saveVendorDataType>
<syncPublishing>false</syncPublishing>
</messageType>
<requestType id="10">NVNLevFinBBGNonLoans</requestType>
<templateURI id="11">db://resource/xslt/request/NuveenBB/NVNLevFinBBGNonLoans.xslt</templateURI>
</com.j2fe.connector.RequestType>
</businessobject>
</goldensource-package>
