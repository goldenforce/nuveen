<?xml version="1.0" encoding="UTF-8" standalone="no"?>
<goldensource-package version="8.8.1.65">
<package-comment/>
<businessobject displayString="NuveenCreditScope" type="com.j2fe.processing.BusinessFeed">
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
<file id="7">creditscope_goldensource_credit_details_deltas*.csv</file>
<group id="8">1</group>
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
<mappingResource id="13">db://resource/mapping/NuveenMuni/CreditScope/NuveenCreditScope.mdx</mappingResource>
<metaData id="14" type="java.util.HashMap"/>
<name id="15">NuveenCreditScope</name>
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
<saveNotifications>ERROR</saveNotifications>
<saveProcessedMessage>ERROR</saveProcessedMessage>
<saveTranslatedMessage>ERROR</saveTranslatedMessage>
<saveUnprocessedInputMessage>false</saveUnprocessedInputMessage>
</streetLamp>
<syncPublishing>false</syncPublishing>
</messageType>
</item>
<item id="19" type="com.j2fe.processing.FileDefinition">
<file id="20">creditscope_goldensource_issue_level_deltas*.csv</file>
<group id="21">2</group>
<messageType id="22">
<applicationName id="23">SECURITIESANDPROD</applicationName>
<businessEntity>true</businessEntity>
<businessFeed idref="0"/>
<caputureProcessMessage>false</caputureProcessMessage>
<commitMode>None</commitMode>
<createMarketRealTimeInd idref="11"/>
<dataLineageEnabled>false</dataLineageEnabled>
<endOfFileEvents id="24" type="java.util.ArrayList"/>
<isKeyStreaming>false</isKeyStreaming>
<isVDDB>false</isVDDB>
<mappingResource id="25">db://resource/mapping/NuveenMuni/CreditScope/NuveenCreditIssue.mdx</mappingResource>
<metaData id="26" type="java.util.HashMap"/>
<name id="27">NuveenCreditIssue</name>
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
<saveNotifications>ERROR</saveNotifications>
<saveProcessedMessage>ERROR</saveProcessedMessage>
<saveTranslatedMessage>ERROR</saveTranslatedMessage>
<saveUnprocessedInputMessage>false</saveUnprocessedInputMessage>
</streetLamp>
<syncPublishing>false</syncPublishing>
</messageType>
</item>
<item id="31" type="com.j2fe.processing.FileDefinition">
<file id="32">creditscope_goldensource_credit_report_details_deltas*.csv</file>
<group id="33">3</group>
<messageType id="34">
<applicationName id="35">SECURITIESANDPROD</applicationName>
<businessEntity>true</businessEntity>
<businessFeed idref="0"/>
<caputureProcessMessage>false</caputureProcessMessage>
<commitMode>None</commitMode>
<createMarketRealTimeInd idref="11"/>
<dataLineageEnabled>false</dataLineageEnabled>
<endOfFileEvents id="36" type="java.util.ArrayList"/>
<isKeyStreaming>false</isKeyStreaming>
<isVDDB>false</isVDDB>
<mappingResource id="37">db://resource/mapping/NuveenMuni/CreditScope/NuveenCreditReport.mdx</mappingResource>
<metaData id="38" type="java.util.HashMap"/>
<name id="39">NuveenCreditReport</name>
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
<saveNotifications>ERROR</saveNotifications>
<saveProcessedMessage>ERROR</saveProcessedMessage>
<saveTranslatedMessage>ERROR</saveTranslatedMessage>
<saveUnprocessedInputMessage>false</saveUnprocessedInputMessage>
</streetLamp>
<syncPublishing>false</syncPublishing>
</messageType>
</item>
<item id="43" type="com.j2fe.processing.FileDefinition">
<file id="44">creditscope_goldensource_watch_list_and_distressed_credit_deltas*.csv</file>
<group id="45">4</group>
<messageType id="46">
<applicationName id="47">SECURITIESANDPROD</applicationName>
<businessEntity>true</businessEntity>
<businessFeed idref="0"/>
<caputureProcessMessage>false</caputureProcessMessage>
<commitMode>None</commitMode>
<createMarketRealTimeInd idref="11"/>
<dataLineageEnabled>false</dataLineageEnabled>
<endOfFileEvents id="48" type="java.util.ArrayList"/>
<isKeyStreaming>false</isKeyStreaming>
<isVDDB>false</isVDDB>
<mappingResource id="49">db://resource/mapping/NuveenMuni/CreditScope/NuveenCreditWatch.mdx</mappingResource>
<metaData id="50" type="java.util.HashMap"/>
<name id="51">NuveenCreditWatch</name>
<nearRealtimePublishing>false</nearRealtimePublishing>
<nearRealtimePublishingEvents id="52" type="java.util.ArrayList"/>
<publishingEvents id="53" type="java.util.ArrayList"/>
<rollbackOnError>false</rollbackOnError>
<saveVendorDataType>None</saveVendorDataType>
<streetLamp id="54">
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
<item id="55" type="com.j2fe.processing.FileDefinition">
<file id="56">creditscope_goldensource_credit_issue_cusip_report_deltas*.csv</file>
<group id="57">5</group>
<messageType id="58">
<applicationName id="59">SECURITIESANDPROD</applicationName>
<businessEntity>true</businessEntity>
<businessFeed idref="0"/>
<caputureProcessMessage>false</caputureProcessMessage>
<commitMode>None</commitMode>
<createMarketRealTimeInd idref="11"/>
<dataLineageEnabled>false</dataLineageEnabled>
<endOfFileEvents id="60" type="java.util.ArrayList"/>
<isKeyStreaming>false</isKeyStreaming>
<isVDDB>false</isVDDB>
<mappingResource id="61">db://resource/mapping/NuveenMuni/CreditScope/NuveenCreditIssueCusip.mdx</mappingResource>
<metaData id="62" type="java.util.HashMap"/>
<name id="63">NuveenCreditIssueCusip</name>
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
<saveNotifications>ERROR</saveNotifications>
<saveProcessedMessage>ERROR</saveProcessedMessage>
<saveTranslatedMessage>ERROR</saveTranslatedMessage>
<saveUnprocessedInputMessage>false</saveUnprocessedInputMessage>
</streetLamp>
<syncPublishing>false</syncPublishing>
</messageType>
</item>
<item id="67" type="com.j2fe.processing.FileDefinition">
<file id="68">creditscope_goldensource_cusipSectors*.csv</file>
<group id="69">6</group>
<messageType id="70">
<applicationName id="71">SECURITIESANDPROD</applicationName>
<businessEntity>true</businessEntity>
<businessFeed idref="0"/>
<caputureProcessMessage>false</caputureProcessMessage>
<commitMode>None</commitMode>
<createMarketRealTimeInd idref="11"/>
<dataLineageEnabled>false</dataLineageEnabled>
<endOfFileEvents id="72" type="java.util.ArrayList"/>
<isKeyStreaming>false</isKeyStreaming>
<isVDDB>false</isVDDB>
<mappingResource id="73">db://resource/mapping/NuveenMuni/CreditScope/NuveenCreditScopeSector.mdx</mappingResource>
<metaData id="74" type="java.util.HashMap"/>
<name id="75">NuveenCreditScopeSector</name>
<nearRealtimePublishing>false</nearRealtimePublishing>
<nearRealtimePublishingEvents id="76" type="java.util.ArrayList"/>
<publishingEvents id="77" type="java.util.ArrayList"/>
<rollbackOnError>false</rollbackOnError>
<saveVendorDataType>None</saveVendorDataType>
<streetLamp id="78">
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
<grouping>true</grouping>
<messageTypes id="79" type="java.util.HashSet">
<item idref="46" type="com.j2fe.processing.MessageType"/>
<item idref="22" type="com.j2fe.processing.MessageType"/>
<item idref="9" type="com.j2fe.processing.MessageType"/>
<item idref="34" type="com.j2fe.processing.MessageType"/>
<item idref="58" type="com.j2fe.processing.MessageType"/>
<item idref="70" type="com.j2fe.processing.MessageType"/>
</messageTypes>
<name id="80">NuveenCreditScope</name>
</com.j2fe.processing.BusinessFeed>
</businessobject>
</goldensource-package>
