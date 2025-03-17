<?xml version="1.0" encoding="UTF-8" standalone="no"?>
<goldensource-package version="8.8.1.59">
<package-comment/>
<businessobject displayString="SP_XF_GR_SecurityRatings_Staging" type="com.j2fe.processing.MessageType">
<com.j2fe.processing.MessageType id="0">
<applicationName id="1">SECURITIESANDPROD</applicationName>
<businessEntity>false</businessEntity>
<businessFeed id="2">
<grouping>false</grouping>
<messageTypes id="3" type="java.util.HashSet">
<item idref="0" type="com.j2fe.processing.MessageType"/>
</messageTypes>
<name id="4">S&amp;P_XF_GR_Security_Ratings_Staging</name>
</businessFeed>
<caputureProcessMessage>false</caputureProcessMessage>
<commitMode>None</commitMode>
<createMarketRealTimeInd id="5">false</createMarketRealTimeInd>
<dataLineageEnabled>false</dataLineageEnabled>
<endOfFileEvents id="6" type="java.util.ArrayList"/>
<isKeyStreaming>false</isKeyStreaming>
<isVDDB>false</isVDDB>
<mappingResource id="7">db://resource/mapping/standard&amp;poors/SP_XF_GR_SecurityRatings.mdx</mappingResource>
<metaData id="8" type="java.util.HashMap">
<entry>
<key id="9" type="java.lang.String">IsStaging</key>
<value id="10" type="java.lang.String">Y</value>
</entry>
<entry>
<key id="11" type="java.lang.String">StageFile</key>
<value id="12" type="java.lang.String">Y</value>
</entry>
</metaData>
<name id="13">SP_XF_GR_SecurityRatings_Staging</name>
<nearRealtimePublishing>false</nearRealtimePublishing>
<nearRealtimePublishingEvents id="14" type="java.util.ArrayList"/>
<publishingEvents id="15" type="java.util.ArrayList"/>
<rollbackOnError>false</rollbackOnError>
<saveVendorDataType>None</saveVendorDataType>
<streetLamp id="16">
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
