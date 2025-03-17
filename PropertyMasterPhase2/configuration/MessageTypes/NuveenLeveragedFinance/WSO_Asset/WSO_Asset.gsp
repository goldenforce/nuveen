<?xml version="1.0" encoding="UTF-8" standalone="no"?>
<goldensource-package version="8.8.1.47">
<package-comment/>
<businessobject displayString="WSO_Asset" type="com.j2fe.processing.MessageType">
<com.j2fe.processing.MessageType id="0">
<applicationName id="1">CUSTOMERANDCTPTY</applicationName>
<businessEntity>true</businessEntity>
<businessFeed id="2">
<grouping>false</grouping>
<messageTypes id="3" type="java.util.HashSet">
<item idref="0" type="com.j2fe.processing.MessageType"/>
</messageTypes>
<name id="4">WSO_Asset</name>
</businessFeed>
<caputureProcessMessage>false</caputureProcessMessage>
<commitMode>None</commitMode>
<createMarketRealTimeInd id="5">false</createMarketRealTimeInd>
<dataLineageEnabled>true</dataLineageEnabled>
<endOfFileEvents id="6" type="java.util.ArrayList"/>
<isKeyStreaming>true</isKeyStreaming>
<isVDDB>true</isVDDB>
<mappingResource id="7">db://resource/mapping/NuveenLevFin/WSO/WSO_Asset.mdx</mappingResource>
<metaData id="8" type="java.util.HashMap"/>
<name id="9">WSO_Asset</name>
<nearRealtimePublishing>false</nearRealtimePublishing>
<nearRealtimePublishingEvents id="10" type="java.util.ArrayList"/>
<publishingEvents id="11" type="java.util.ArrayList"/>
<rollbackOnError>false</rollbackOnError>
<saveVendorDataType>All</saveVendorDataType>
<streetLamp id="12">
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
</com.j2fe.processing.MessageType>
</businessobject>
</goldensource-package>
