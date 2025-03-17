<?xml version="1.0" encoding="UTF-8" standalone="no"?>
<goldensource-package version="8.8.1.59">
<package-comment/>
<businessobject displayString="MoodysRDS_Organization" type="com.j2fe.processing.MessageType">
<com.j2fe.processing.MessageType id="0">
<applicationName id="1">SECURITIESANDPROD</applicationName>
<businessEntity>false</businessEntity>
<businessFeed id="2">
<grouping>false</grouping>
<messageTypes id="3" type="java.util.HashSet">
<item idref="0" type="com.j2fe.processing.MessageType"/>
</messageTypes>
<name id="4">MoodysRDSOrganization</name>
</businessFeed>
<caputureProcessMessage>false</caputureProcessMessage>
<commitMode>None</commitMode>
<createMarketRealTimeInd id="5">false</createMarketRealTimeInd>
<dataLineageEnabled>false</dataLineageEnabled>
<endOfFileEvents id="6" type="java.util.ArrayList"/>
<isKeyStreaming>true</isKeyStreaming>
<isVDDB>false</isVDDB>
<mappingResource id="7">db://resource/mapping/Moodys/MoodysRDS_Organization.mdx</mappingResource>
<metaData id="8" type="java.util.HashMap">
<entry>
<key id="9" type="java.lang.String">DescriptiveData</key>
<value id="10" type="java.lang.String">N</value>
</entry>
</metaData>
<name id="11">MoodysRDS_Organization</name>
<nearRealtimePublishing>false</nearRealtimePublishing>
<nearRealtimePublishingEvents id="12" type="java.util.ArrayList"/>
<publishingEvents id="13" type="java.util.ArrayList"/>
<rollbackOnError>false</rollbackOnError>
<saveVendorDataType>None</saveVendorDataType>
<streetLamp id="14">
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
