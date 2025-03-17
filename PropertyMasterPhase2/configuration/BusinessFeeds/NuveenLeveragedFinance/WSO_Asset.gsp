<?xml version="1.0" encoding="UTF-8" standalone="no"?>
<goldensource-package version="8.8.1.34">
<package-comment/>
<businessobject displayString="WSO_Asset" type="com.j2fe.processing.BusinessFeed">
<com.j2fe.processing.BusinessFeed id="0">
<dataSource id="1">
<businessFeeds id="2" type="java.util.HashSet">
<item idref="0" type="com.j2fe.processing.BusinessFeed"/>
</businessFeeds>
<id id="3">NuveenLevFin</id>
</dataSource>
<feedDefinition id="4">db://resource/xml/feeds/Nuveen/LineByLine_SkipHeader.xml</feedDefinition>
<fileDefinitions id="5" type="java.util.ArrayList">
<item id="6" type="com.j2fe.processing.FileDefinition">
<file id="7">WSO_SMF_Asset_[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9].txt</file>
<group id="8">1</group>
<messageType id="9">
<applicationName id="10">CUSTOMERANDCTPTY</applicationName>
<businessEntity>true</businessEntity>
<businessFeed idref="0"/>
<caputureProcessMessage>false</caputureProcessMessage>
<commitMode>None</commitMode>
<createMarketRealTimeInd id="11">false</createMarketRealTimeInd>
<dataLineageEnabled>true</dataLineageEnabled>
<endOfFileEvents id="12" type="java.util.ArrayList"/>
<isKeyStreaming>true</isKeyStreaming>
<isVDDB>true</isVDDB>
<mappingResource id="13">db://resource/mapping/NuveenLevFin/WSO/WSO_Asset.mdx</mappingResource>
<metaData id="14" type="java.util.HashMap"/>
<name id="15">WSO_Asset</name>
<nearRealtimePublishing>false</nearRealtimePublishing>
<nearRealtimePublishingEvents id="16" type="java.util.ArrayList"/>
<publishingEvents id="17" type="java.util.ArrayList"/>
<rollbackOnError>false</rollbackOnError>
<saveVendorDataType>All</saveVendorDataType>
<streetLamp id="18">
<filterVDDBNotifications>false</filterVDDBNotifications>
<inputMessageSaveOnly>false</inputMessageSaveOnly>
<saveInputMessage>ERROR</saveInputMessage>
<saveLowLevelNotificationsOnlyForErrors>false</saveLowLevelNotificationsOnlyForErrors>
<saveNotifications>ERROR</saveNotifications>
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
<item id="20" type="com.j2fe.processing.MessageType">
<applicationName id="21">SECURITIESANDPROD</applicationName>
<businessEntity>true</businessEntity>
<businessFeed idref="0"/>
<caputureProcessMessage>false</caputureProcessMessage>
<commitMode>None</commitMode>
<createMarketRealTimeInd idref="11"/>
<dataLineageEnabled>true</dataLineageEnabled>
<endOfFileEvents id="22" type="java.util.ArrayList"/>
<isKeyStreaming>true</isKeyStreaming>
<isVDDB>true</isVDDB>
<mappingResource id="23">db://resource/mapping/NuveenLevFin/WSO/WSO_Spread.mdx</mappingResource>
<metaData id="24" type="java.util.HashMap"/>
<name id="25">WSO_Spread</name>
<nearRealtimePublishing>false</nearRealtimePublishing>
<nearRealtimePublishingEvents id="26" type="java.util.ArrayList"/>
<publishingEvents id="27" type="java.util.ArrayList"/>
<rollbackOnError>false</rollbackOnError>
<saveVendorDataType>All</saveVendorDataType>
<streetLamp id="28">
<filterVDDBNotifications>false</filterVDDBNotifications>
<inputMessageSaveOnly>false</inputMessageSaveOnly>
<saveInputMessage>ERROR</saveInputMessage>
<saveLowLevelNotificationsOnlyForErrors>false</saveLowLevelNotificationsOnlyForErrors>
<saveNotifications>ERROR</saveNotifications>
<saveProcessedMessage>ERROR</saveProcessedMessage>
<saveTranslatedMessage>ERROR</saveTranslatedMessage>
<saveUnprocessedInputMessage>false</saveUnprocessedInputMessage>
</streetLamp>
<syncPublishing>false</syncPublishing>
</item>
</messageTypes>
<name id="29">WSO_Asset</name>
</com.j2fe.processing.BusinessFeed>
</businessobject>
</goldensource-package>
