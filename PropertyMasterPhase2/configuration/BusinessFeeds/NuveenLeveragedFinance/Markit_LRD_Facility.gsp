<?xml version="1.0" encoding="UTF-8" standalone="no"?>
<goldensource-package version="8.8.1.51">
<package-comment/>
<businessobject displayString="Markit_LRD_Facility" type="com.j2fe.processing.BusinessFeed">
<com.j2fe.processing.BusinessFeed id="0">
<dataSource id="1">
<businessFeeds id="2" type="java.util.HashSet">
<item idref="0" type="com.j2fe.processing.BusinessFeed"/>
</businessFeeds>
<id id="3">NuveenLevFin</id>
</dataSource>
<feedDefinition id="4">db://resource/xml/feeds/Nuveen/LRD_faclty_json.xml</feedDefinition>
<fileDefinitions id="5" type="java.util.ArrayList">
<item id="6" type="com.j2fe.processing.FileDefinition">
<file id="7">LRD-Asset*.json</file>
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
<mappingResource id="13">db://resource/mapping/NuveenLevFin/Markit_LRD/LRD_Facility.mdx</mappingResource>
<metaData id="14" type="java.util.HashMap"/>
<name id="15">LRD_Facility</name>
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
<saveNotifications>WARNING</saveNotifications>
<saveProcessedMessage>ERROR</saveProcessedMessage>
<saveTranslatedMessage>ERROR</saveTranslatedMessage>
<saveUnprocessedInputMessage>false</saveUnprocessedInputMessage>
</streetLamp>
<syncPublishing>false</syncPublishing>
<xpathMessageKey id="19">WSODataFacilities/</xpathMessageKey>
</messageType>
</item>
<item id="20" type="com.j2fe.processing.FileDefinition">
<file id="21">LRD-Contract*.json</file>
<group id="22">2</group>
<messageType id="23">
<applicationName id="24">SECURITIESANDPROD</applicationName>
<businessEntity>true</businessEntity>
<businessFeed idref="0"/>
<caputureProcessMessage>false</caputureProcessMessage>
<commitMode>None</commitMode>
<createMarketRealTimeInd idref="11"/>
<dataLineageEnabled>true</dataLineageEnabled>
<endOfFileEvents id="25" type="java.util.ArrayList"/>
<isKeyStreaming>true</isKeyStreaming>
<isVDDB>true</isVDDB>
<mappingResource id="26">db://resource/mapping/NuveenLevFin/Markit_LRD/LRD_Contract.mdx</mappingResource>
<metaData id="27" type="java.util.HashMap"/>
<name id="28">LRD_Contract</name>
<nearRealtimePublishing>false</nearRealtimePublishing>
<nearRealtimePublishingEvents id="29" type="java.util.ArrayList"/>
<publishingEvents id="30" type="java.util.ArrayList"/>
<rollbackOnError>false</rollbackOnError>
<saveVendorDataType>All</saveVendorDataType>
<streetLamp id="31">
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
<item id="32" type="com.j2fe.processing.FileDefinition">
<file id="33">LRD-SIC*.json</file>
<group idref="22"/>
<messageType id="34">
<applicationName id="35">SECURITIESANDPROD</applicationName>
<businessEntity>true</businessEntity>
<businessFeed idref="0"/>
<caputureProcessMessage>false</caputureProcessMessage>
<commitMode>None</commitMode>
<createMarketRealTimeInd idref="11"/>
<dataLineageEnabled>true</dataLineageEnabled>
<endOfFileEvents id="36" type="java.util.ArrayList"/>
<isKeyStreaming>true</isKeyStreaming>
<isVDDB>true</isVDDB>
<mappingResource id="37">db://resource/mapping/NuveenLevFin/Markit_LRD/LRD_SIC.mdx</mappingResource>
<metaData id="38" type="java.util.HashMap"/>
<name id="39">LRD_SIC</name>
<nearRealtimePublishing>false</nearRealtimePublishing>
<nearRealtimePublishingEvents id="40" type="java.util.ArrayList"/>
<publishingEvents id="41" type="java.util.ArrayList"/>
<rollbackOnError>false</rollbackOnError>
<saveVendorDataType>All</saveVendorDataType>
<streetLamp id="42">
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
<messageTypes id="43" type="java.util.HashSet">
<item idref="34" type="com.j2fe.processing.MessageType"/>
<item idref="9" type="com.j2fe.processing.MessageType"/>
<item idref="23" type="com.j2fe.processing.MessageType"/>
</messageTypes>
<name id="44">Markit_LRD_Facility</name>
</com.j2fe.processing.BusinessFeed>
</businessobject>
</goldensource-package>
