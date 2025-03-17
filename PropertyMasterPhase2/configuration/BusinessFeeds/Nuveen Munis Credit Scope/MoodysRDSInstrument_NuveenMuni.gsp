<?xml version="1.0" encoding="UTF-8" standalone="no"?>
<goldensource-package version="8.8.1.64">
<package-comment/>
<businessobject displayString="MoodysRDSInstrument_NuveenMuni" type="com.j2fe.processing.BusinessFeed">
<com.j2fe.processing.BusinessFeed id="0">
<dataSource id="1">
<businessFeeds id="2" type="java.util.HashSet">
<item idref="0" type="com.j2fe.processing.BusinessFeed"/>
</businessFeeds>
<id id="3">Nuveen Munis Credit Scope</id>
</dataSource>
<description id="4">MoodysRDSInstrument_NuveenMuni</description>
<feedDefinition id="5">db://resource/xml/feeds/Moodys/MoodysRDS_Instrument.xml</feedDefinition>
<fileDefinitions id="6" type="java.util.ArrayList">
<item id="7" type="com.j2fe.processing.FileDefinition">
<file id="8">pfg_inst_current_rating_*.split</file>
<group id="9">2</group>
<messageType id="10">
<applicationName id="11">SECURITIESANDPROD</applicationName>
<businessEntity>false</businessEntity>
<businessFeed idref="0"/>
<caputureProcessMessage>false</caputureProcessMessage>
<commitMode>None</commitMode>
<createMarketRealTimeInd id="12">false</createMarketRealTimeInd>
<dataLineageEnabled>false</dataLineageEnabled>
<endOfFileEvents id="13" type="java.util.ArrayList"/>
<isKeyStreaming>true</isKeyStreaming>
<isVDDB>false</isVDDB>
<mappingResource id="14">db://resource/mapping/NuveenMuni/Ratings/MoodysRDS_Instrument_NuveenMuni.mdx</mappingResource>
<metaData id="15" type="java.util.HashMap">
<entry>
<key id="16" type="java.lang.String">DescriptiveData</key>
<value id="17" type="java.lang.String">Y</value>
</entry>
</metaData>
<name id="18">MoodysRDS_Instrument_NuveenMuni</name>
<nearRealtimePublishing>false</nearRealtimePublishing>
<nearRealtimePublishingEvents id="19" type="java.util.ArrayList"/>
<publishingEvents id="20" type="java.util.ArrayList"/>
<rollbackOnError>false</rollbackOnError>
<saveVendorDataType>None</saveVendorDataType>
<streetLamp id="21">
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
<item id="22" type="com.j2fe.processing.FileDefinition">
<file id="23">cfg_inst_current_rating_*.split</file>
<group idref="9"/>
<messageType idref="10"/>
</item>
</fileDefinitions>
<grouping>false</grouping>
<messageTypes id="24" type="java.util.HashSet">
<item idref="10" type="com.j2fe.processing.MessageType"/>
</messageTypes>
<name id="25">MoodysRDSInstrument_NuveenMuni</name>
</com.j2fe.processing.BusinessFeed>
</businessobject>
</goldensource-package>
