<?xml version="1.0" encoding="UTF-8" standalone="no"?>
<goldensource-package version="8.8.1.59">
<package-comment/>
<businessobject displayString="EagleMuni" type="com.j2fe.processing.BusinessFeed">
<com.j2fe.processing.BusinessFeed id="0">
<dataSource id="1">
<businessFeeds id="2" type="java.util.HashSet">
<item idref="0" type="com.j2fe.processing.BusinessFeed"/>
</businessFeeds>
<id id="3">Nuveen Munis Credit Scope</id>
</dataSource>
<feedDefinition id="4">db://resource/xml/feeds/Nuveen/LineByLine_SkipHeader.xml</feedDefinition>
<fileDefinitions id="5" type="java.util.ArrayList">
<item id="6" type="com.j2fe.processing.FileDefinition">
<file id="7">EAGLE_GS_SMF_SOI_EOD_*.txt</file>
<group id="8">0</group>
<messageType id="9">
<applicationName id="10">SECURITIESANDPROD</applicationName>
<businessEntity>true</businessEntity>
<businessFeed idref="0"/>
<caputureProcessMessage>false</caputureProcessMessage>
<commitMode>None</commitMode>
<createMarketRealTimeInd id="11">false</createMarketRealTimeInd>
<dataLineageEnabled>false</dataLineageEnabled>
<endOfFileEvents id="12" type="java.util.ArrayList"/>
<isKeyStreaming>false</isKeyStreaming>
<isVDDB>false</isVDDB>
<mappingResource id="13">db://resource/mapping/NuveenMuni/Eagle/NuveenEagleMuniSOI.mdx</mappingResource>
<metaData id="14" type="java.util.HashMap"/>
<name id="15">NuveenEagleMuniSOI</name>
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
<name id="20">EagleMuni</name>
</com.j2fe.processing.BusinessFeed>
</businessobject>
</goldensource-package>
