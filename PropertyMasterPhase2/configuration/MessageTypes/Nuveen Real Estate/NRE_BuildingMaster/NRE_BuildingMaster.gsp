<?xml version="1.0" encoding="UTF-8" standalone="no"?>
<goldensource-package version="8.8.1.34">
<package-comment/>
<businessobject displayString="NRE_BuildingMaster" type="com.j2fe.processing.MessageType">
<com.j2fe.processing.MessageType id="0">
<applicationName id="1">SECURITIESANDPROD</applicationName>
<businessEntity>true</businessEntity>
<businessFeed id="2">
<grouping>false</grouping>
<messageTypes id="3" type="java.util.HashSet">
<item idref="0" type="com.j2fe.processing.MessageType"/>
</messageTypes>
<name id="4">NRE_BF_BuildingMaster</name>
</businessFeed>
<caputureProcessMessage>false</caputureProcessMessage>
<commitMode>None</commitMode>
<createMarketRealTimeInd id="5">false</createMarketRealTimeInd>
<dataLineageEnabled>false</dataLineageEnabled>
<endOfFileEvents id="6" type="java.util.ArrayList">
<item id="7" type="java.lang.String">NRE_EVT_EOF_BulkVerifyAddress</item>
</endOfFileEvents>
<isKeyStreaming>true</isKeyStreaming>
<isVDDB>false</isVDDB>
<mappingResource id="8">db://resource/mapping/NuveenProperty/Custom/NRE_BuildingMaster_API.mdx</mappingResource>
<metaData id="9" type="java.util.HashMap"/>
<name id="10">NRE_BuildingMaster</name>
<nearRealtimePublishing>false</nearRealtimePublishing>
<nearRealtimePublishingEvents id="11" type="java.util.ArrayList"/>
<publishingEvents id="12" type="java.util.ArrayList"/>
<rollbackOnError>false</rollbackOnError>
<saveVendorDataType>None</saveVendorDataType>
<streetLamp id="13">
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
</com.j2fe.processing.MessageType>
</businessobject>
</goldensource-package>
