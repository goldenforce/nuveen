<?xml version="1.0" encoding="UTF-8" standalone="no"?>
<goldensource-package version="8.8.1.34">
<package-comment/>
<businessobject displayString="Nuveen Real Estate" type="com.j2fe.processing.DataSource">
<com.j2fe.processing.DataSource id="0">
<businessFeeds id="1" type="java.util.HashSet">
<item id="2" type="com.j2fe.processing.BusinessFeed">
<dataSource idref="0"/>
<description id="3">NRE BuildingMaster Business Feed</description>
<feedDefinition id="4">com/j2fe/feeds/LineByLine.xml</feedDefinition>
<fileDefinitions id="5" type="java.util.ArrayList">
<item id="6" type="com.j2fe.processing.FileDefinition">
<file id="7">*.csv</file>
<group id="8">0</group>
<messageType id="9">
<applicationName id="10">SECURITIESANDPROD</applicationName>
<businessEntity>true</businessEntity>
<businessFeed idref="2"/>
<caputureProcessMessage>false</caputureProcessMessage>
<commitMode>None</commitMode>
<createMarketRealTimeInd id="11">false</createMarketRealTimeInd>
<dataLineageEnabled>false</dataLineageEnabled>
<endOfFileEvents id="12" type="java.util.ArrayList"/>
<isKeyStreaming>true</isKeyStreaming>
<isVDDB>false</isVDDB>
<mappingResource id="13">db://resource/mapping/NuveenProperty/Custom/NRE_BuildingMaster_API.mdx</mappingResource>
<metaData id="14" type="java.util.HashMap"/>
<name id="15">NRE_BuildingMaster</name>
<nearRealtimePublishing>false</nearRealtimePublishing>
<nearRealtimePublishingEvents id="16" type="java.util.ArrayList"/>
<publishingEvents id="17" type="java.util.ArrayList"/>
<rollbackOnError>false</rollbackOnError>
<saveVendorDataType>None</saveVendorDataType>
<streetLamp id="18">
<filterVDDBNotifications>false</filterVDDBNotifications>
<inputMessageSaveOnly>false</inputMessageSaveOnly>
<saveInputMessage>ERROR</saveInputMessage>
<saveLowLevelNotificationsOnlyForErrors>false</saveLowLevelNotificationsOnlyForErrors>
<saveNotifications>WARNING</saveNotifications>
<saveProcessedMessage>ERROR</saveProcessedMessage>
<saveTranslatedMessage>ERROR</saveTranslatedMessage>
<saveUnprocessedInputMessage>false</saveUnprocessedInputMessage>
</streetLamp>
<syncPublishing>false</syncPublishing>
</messageType>
</item>
</fileDefinitions>
<grouping>false</grouping>
<messageTypes id="19" type="java.util.HashSet">
<item idref="9" type="com.j2fe.processing.MessageType"/>
</messageTypes>
<name id="20">NRE_BF_BuildingMaster</name>
</item>
</businessFeeds>
<description id="21">Nuveen Real Estate Vendor Definition</description>
<id id="22">NRE</id>
<name id="23">Nuveen Real Estate</name>
<requestTypes id="24" type="java.util.HashSet">
<item id="25" type="com.j2fe.connector.RequestType">
<dataSource idref="0"/>
<dataTypes id="26" type="java.util.HashSet"/>
<externalIssueTypes id="27" type="java.util.HashSet"/>
<marketSector id="28" type="java.util.HashSet"/>
<requestType id="29">NRE_BuildingMaster_Vendor_Request</requestType>
</item>
</requestTypes>
</com.j2fe.processing.DataSource>
</businessobject>
</goldensource-package>
