<?xml version="1.0" encoding="UTF-8" standalone="no"?>
<goldensource-package version="8.8.1.47">
<package-comment/>
<businessobject displayString="Eagle_EDI" type="com.j2fe.processing.BusinessFeed">
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
<file id="7">EDI_GS_REL_ISSUERORG_EOD*.txt</file>
<group id="8">3</group>
<messageType id="9">
<applicationName id="10">CUSTOMERANDCTPTY</applicationName>
<businessEntity>true</businessEntity>
<businessFeed idref="0"/>
<caputureProcessMessage>false</caputureProcessMessage>
<commitMode>None</commitMode>
<createMarketRealTimeInd id="11">false</createMarketRealTimeInd>
<dataLineageEnabled>false</dataLineageEnabled>
<endOfFileEvents id="12" type="java.util.ArrayList"/>
<isKeyStreaming>true</isKeyStreaming>
<isVDDB>true</isVDDB>
<mappingResource id="13">db://resource/mapping/NuveenLevFin/Eagle/Eagle_GSIssuer.mdx</mappingResource>
<metaData id="14" type="java.util.HashMap"/>
<name id="15">Eagle_GSIssuer</name>
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
<item id="19" type="com.j2fe.processing.FileDefinition">
<file id="20">EDI_GS_ISSR_XREF_EOD*.txt</file>
<group id="21">4</group>
<messageType id="22">
<applicationName id="23">SECURITIESANDPROD</applicationName>
<businessEntity>true</businessEntity>
<businessFeed idref="0"/>
<caputureProcessMessage>false</caputureProcessMessage>
<commitMode>None</commitMode>
<createMarketRealTimeInd idref="11"/>
<dataLineageEnabled>false</dataLineageEnabled>
<endOfFileEvents id="24" type="java.util.ArrayList"/>
<isKeyStreaming>true</isKeyStreaming>
<isVDDB>true</isVDDB>
<mappingResource id="25">db://resource/mapping/NuveenLevFin/Eagle/Eagle_GSIssuerXREF.mdx</mappingResource>
<metaData id="26" type="java.util.HashMap"/>
<name id="27">Eagle_GSIssuerXREF</name>
<nearRealtimePublishing>false</nearRealtimePublishing>
<nearRealtimePublishingEvents id="28" type="java.util.ArrayList"/>
<publishingEvents id="29" type="java.util.ArrayList"/>
<rollbackOnError>false</rollbackOnError>
<saveVendorDataType>None</saveVendorDataType>
<streetLamp id="30">
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
<item id="31" type="com.j2fe.processing.FileDefinition">
<file id="32">EDI_GS_ISSRTOISSR_REL_EOD*.txt</file>
<group id="33">5</group>
<messageType id="34">
<applicationName id="35">SECURITIESANDPROD</applicationName>
<businessEntity>true</businessEntity>
<businessFeed idref="0"/>
<caputureProcessMessage>false</caputureProcessMessage>
<commitMode>None</commitMode>
<createMarketRealTimeInd idref="11"/>
<dataLineageEnabled>false</dataLineageEnabled>
<endOfFileEvents id="36" type="java.util.ArrayList"/>
<isKeyStreaming>true</isKeyStreaming>
<isVDDB>true</isVDDB>
<mappingResource id="37">db://resource/mapping/NuveenLevFin/Eagle/Eagle_GSIssuerRelation.mdx</mappingResource>
<metaData id="38" type="java.util.HashMap"/>
<name id="39">Eagle_GSIssuerRelation</name>
<nearRealtimePublishing>false</nearRealtimePublishing>
<nearRealtimePublishingEvents id="40" type="java.util.ArrayList"/>
<publishingEvents id="41" type="java.util.ArrayList"/>
<rollbackOnError>false</rollbackOnError>
<saveVendorDataType>None</saveVendorDataType>
<streetLamp id="42">
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
<item id="43" type="com.j2fe.processing.FileDefinition">
<file id="44">EDI_GS_SMF_SOI_EOD*.txt</file>
<group id="45">1</group>
<messageType id="46">
<applicationName id="47">SECURITIESANDPROD</applicationName>
<businessEntity>true</businessEntity>
<businessFeed idref="0"/>
<caputureProcessMessage>false</caputureProcessMessage>
<commitMode>None</commitMode>
<createMarketRealTimeInd idref="11"/>
<dataLineageEnabled>true</dataLineageEnabled>
<endOfFileEvents id="48" type="java.util.ArrayList"/>
<isKeyStreaming>true</isKeyStreaming>
<isVDDB>true</isVDDB>
<mappingResource id="49">db://resource/mapping/NuveenLevFin/Eagle/Eagle_GSInstrument.mdx</mappingResource>
<metaData id="50" type="java.util.HashMap"/>
<name id="51">Eagle_GSInstrument</name>
<nearRealtimePublishing>false</nearRealtimePublishing>
<nearRealtimePublishingEvents id="52" type="java.util.ArrayList"/>
<publishingEvents id="53" type="java.util.ArrayList"/>
<rollbackOnError>false</rollbackOnError>
<saveVendorDataType>All</saveVendorDataType>
<streetLamp id="54">
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
<item id="55" type="com.j2fe.processing.FileDefinition">
<file id="56">EDI_GS_SMFTOISSR_REL_EOD*.txt</file>
<group id="57">6</group>
<messageType id="58">
<applicationName id="59">SECURITIESANDPROD</applicationName>
<businessEntity>true</businessEntity>
<businessFeed idref="0"/>
<caputureProcessMessage>false</caputureProcessMessage>
<commitMode>None</commitMode>
<createMarketRealTimeInd idref="11"/>
<dataLineageEnabled>false</dataLineageEnabled>
<endOfFileEvents id="60" type="java.util.ArrayList"/>
<isKeyStreaming>true</isKeyStreaming>
<isVDDB>true</isVDDB>
<mappingResource id="61">db://resource/mapping/NuveenLevFin/Eagle/Eagle_GSInstrumentIssuerRelation.mdx</mappingResource>
<metaData id="62" type="java.util.HashMap"/>
<name id="63">Eagle_GSInstrumentIssuerRelation</name>
<nearRealtimePublishing>false</nearRealtimePublishing>
<nearRealtimePublishingEvents id="64" type="java.util.ArrayList"/>
<publishingEvents id="65" type="java.util.ArrayList"/>
<rollbackOnError>false</rollbackOnError>
<saveVendorDataType>None</saveVendorDataType>
<streetLamp id="66">
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
<item id="67" type="com.j2fe.processing.FileDefinition">
<file id="68">EDI_GS_HY_BMKSMF_SOI_EOD*.txt</file>
<group id="69">2</group>
<messageType idref="46"/>
</item>
</fileDefinitions>
<grouping>true</grouping>
<messageTypes id="70" type="java.util.HashSet">
<item idref="9" type="com.j2fe.processing.MessageType"/>
<item idref="58" type="com.j2fe.processing.MessageType"/>
<item idref="46" type="com.j2fe.processing.MessageType"/>
<item idref="22" type="com.j2fe.processing.MessageType"/>
<item idref="34" type="com.j2fe.processing.MessageType"/>
</messageTypes>
<name id="71">Eagle_EDI</name>
</com.j2fe.processing.BusinessFeed>
</businessobject>
</goldensource-package>
