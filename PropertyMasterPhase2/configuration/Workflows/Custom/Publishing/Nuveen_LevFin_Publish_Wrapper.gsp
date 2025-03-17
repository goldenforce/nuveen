<?xml version="1.0" encoding="UTF-8" standalone="no"?>
<goldensource-package version="8.8.1.34">
<package-comment/>
<businessobject displayString="43 - S3Dest_Folder_parameter" type="com.j2fe.workflow.definition.Workflow">
<com.j2fe.workflow.definition.Workflow id="0">
<alwaysPersist>false</alwaysPersist>
<clustered>true</clustered>
<comment id="1">S3Dest_Folder_parameter</comment>
<description id="2"/>
<endNode id="3">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="4">Stop</name>
<nodeHandler>com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandler>
<nodeHandlerClass id="5">com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandlerClass>
<sources id="6" type="java.util.HashSet">
<item id="7" type="com.j2fe.workflow.definition.Transition">
<name id="8">goto-next</name>
<source id="9">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="10">Call EOD Instrument Publish</name>
<nodeHandler>com.j2fe.workflow.handler.impl.CallSubWorkflow</nodeHandler>
<nodeHandlerClass id="11">com.j2fe.workflow.handler.impl.CallSubWorkflow</nodeHandlerClass>
<parameters id="12" type="java.util.HashSet">
<item id="13" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="14">["AOIToleranceWindow"]@java/lang/Long@</UITypeHint>
<input>true</input>
<name id="15">input["AOIToleranceWindow"]</name>
<stringValue id="16">0</stringValue>
<type>CONSTANT</type>
</item>
<item id="17" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="18">["ColumnNameStoringPublishedFileName"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="19">input["ColumnNameStoringPublishedFileName"]</name>
<stringValue id="20">PUBLISHED_FILE_NME</stringValue>
<type>CONSTANT</type>
</item>
<item id="21" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="22">["CreateSingleFile"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="23">input["CreateSingleFile"]</name>
<stringValue id="24">false</stringValue>
<type>CONSTANT</type>
</item>
<item id="25" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="26">["Database"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="27">input["Database"]</name>
<stringValue id="28">jdbc/GSDM-1</stringValue>
<type>CONSTANT</type>
</item>
<item id="29" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="30">["DateFormat"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="31">input["DateFormat"]</name>
<stringValue id="32">yyyyMMddHHmmssSSSSSSS</stringValue>
<type>CONSTANT</type>
</item>
<item id="33" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="34">["DeleteLocalCopy"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="35">input["DeleteLocalCopy"]</name>
<stringValue id="36">true</stringValue>
<type>CONSTANT</type>
</item>
<item id="37" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="38">["Delta with ADEL"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="39">input["Delta with ADEL"]</name>
<stringValue id="40">false</stringValue>
<type>CONSTANT</type>
</item>
<item id="41" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="42">["Email Session"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="43">input["Email Session"]</name>
<stringValue id="44">java/Mail</stringValue>
<type>CONSTANT</type>
</item>
<item id="45" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="46">["EntityName"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="47">input["EntityName"]</name>
<stringValue id="48">smf</stringValue>
<type>CONSTANT</type>
</item>
<item id="49" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="50">["FilePerEntity"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="51">input["FilePerEntity"]</name>
<stringValue id="52">false</stringValue>
<type>CONSTANT</type>
</item>
<item id="53" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="54">["Group MultiOccurring Fields"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="55">input["Group MultiOccurring Fields"]</name>
<stringValue id="56">false</stringValue>
<type>CONSTANT</type>
</item>
<item id="57" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="58">["IsEODPublishing"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="59">input["IsEODPublishing"]</name>
<stringValue id="60">true</stringValue>
<type>CONSTANT</type>
</item>
<item id="61" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="62">["IsJMSConnectionXA"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="63">input["IsJMSConnectionXA"]</name>
<stringValue id="64">false</stringValue>
<type>CONSTANT</type>
</item>
<item id="65" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="66">["JMSBulkSize"]@java/lang/Integer@</UITypeHint>
<input>true</input>
<name id="67">input["JMSBulkSize"]</name>
<stringValue id="68">500</stringValue>
<type>CONSTANT</type>
</item>
<item id="69" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="70">["JobConfigText"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="71">input["JobConfigText"]</name>
<stringValue id="72">LevFin EOD Securities Publish</stringValue>
<type>CONSTANT</type>
</item>
<item id="73" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="74">["OID Generator Function"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="75">input["OID Generator Function"]</name>
<stringValue id="76">NEW_OID()</stringValue>
<type>CONSTANT</type>
</item>
<item id="77" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="78">["On Demand VSH"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="79">input["On Demand VSH"]</name>
<stringValue id="80">false</stringValue>
<type>CONSTANT</type>
</item>
<item id="81" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="82">["PublishDataOldCSVFormat"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="83">input["PublishDataOldCSVFormat"]</name>
<stringValue id="84">false</stringValue>
<type>CONSTANT</type>
</item>
<item id="85" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="86">["PublishDataWithFailedRulesValidation"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="87">input["PublishDataWithFailedRulesValidation"]</name>
<stringValue id="88">false</stringValue>
<type>CONSTANT</type>
</item>
<item id="89" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="90">["PublishingBulkSize"]@java/lang/Integer@</UITypeHint>
<input>true</input>
<name id="91">input["PublishingBulkSize"]</name>
<stringValue id="92">500</stringValue>
<type>CONSTANT</type>
</item>
<item id="93" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="94">["S3DestFolder"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="95">input["S3DestFolder"]</name>
<stringValue id="96">S3DestFolder</stringValue>
<type>VARIABLE</type>
</item>
<item id="97" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="98">["StorePublishedMessageToPBDP"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="99">input["StorePublishedMessageToPBDP"]</name>
<stringValue id="100">false</stringValue>
<type>CONSTANT</type>
</item>
<item id="101" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="102">["SubscriptionName"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="103">input["SubscriptionName"]</name>
<stringValue id="104">NVN_LevFin_EOD_Publish</stringValue>
<type>CONSTANT</type>
</item>
<item id="105" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="106">["addCorrelationHeader"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="107">input["addCorrelationHeader"]</name>
<stringValue id="108">true</stringValue>
<type>CONSTANT</type>
</item>
<item id="109" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="110">["addCoveringXMLHeader"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="111">input["addCoveringXMLHeader"]</name>
<stringValue id="112">true</stringValue>
<type>CONSTANT</type>
</item>
<item id="113" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="114">["addFirstDataGroupNameJSON"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="115">input["addFirstDataGroupNameJSON"]</name>
<stringValue id="116">true</stringValue>
<type>CONSTANT</type>
</item>
<item id="117" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="118">["addGSONameJSONRoot"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="119">input["addGSONameJSONRoot"]</name>
<stringValue id="120">true</stringValue>
<type>CONSTANT</type>
</item>
<item id="121" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="122">["appendEOFLine"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="123">input["appendEOFLine"]</name>
<stringValue id="124">true</stringValue>
<type>CONSTANT</type>
</item>
<item id="125" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="126">["bulkSize"]@java/lang/Integer@</UITypeHint>
<input>true</input>
<name id="127">input["bulkSize"]</name>
<stringValue id="128">500</stringValue>
<type>CONSTANT</type>
</item>
<item id="129" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="130">["checkPublishingTimeAOIL"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="131">input["checkPublishingTimeAOIL"]</name>
<stringValue id="132">false</stringValue>
<type>CONSTANT</type>
</item>
<item id="133" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="134">["enableValueTagJSON"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="135">input["enableValueTagJSON"]</name>
<stringValue id="136">false</stringValue>
<type>CONSTANT</type>
</item>
<item id="137" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="138">["entityMode"]@com/thegoldensource/publishing/util/EntityMode@</UITypeHint>
<input>true</input>
<name id="139">input["entityMode"]</name>
<stringValue id="140">BUSINESS_ENTITY</stringValue>
<type>CONSTANT</type>
</item>
<item id="141" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="142">["inlineAOIProcessing"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="143">input["inlineAOIProcessing"]</name>
<stringValue id="144">false</stringValue>
<type>CONSTANT</type>
</item>
<item id="145" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="146">["persistDQRulesExceptionsInTable"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="147">input["persistDQRulesExceptionsInTable"]</name>
<stringValue id="148">false</stringValue>
<type>CONSTANT</type>
</item>
<item id="149" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="150">["publishRelationName"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="151">input["publishRelationName"]</name>
<stringValue id="152">false</stringValue>
<type>CONSTANT</type>
</item>
<item id="153" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="154">["publishingMode"]@com/thegoldensource/subscription/PublishingMode@</UITypeHint>
<input>true</input>
<name id="155">input["publishingMode"]</name>
<stringValue id="156">BATCH</stringValue>
<type>CONSTANT</type>
</item>
<item id="157" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="158">["s3BucketName"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="159">input["s3BucketName"]</name>
<stringValue id="160">s3bucketappgsname</stringValue>
<type>CONSTANT</type>
</item>
<item id="161" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="162">["s3Prefix"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="163">input["s3Prefix"]</name>
<stringValue id="164">s3bucketappgspubprefix</stringValue>
<type>CONSTANT</type>
</item>
<item id="165" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="166">["s3Region"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="167">input["s3Region"]</name>
<stringValue id="168">s3bucketappgsregion</stringValue>
<type>CONSTANT</type>
</item>
<item id="169" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="170">["subscriptionId"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="171">input["subscriptionId"]</name>
<stringValue id="172">NVN_LevFin_EOD_Publish</stringValue>
<type>CONSTANT</type>
</item>
<item id="173" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="174">name</name>
<stringValue id="175">Nuveen_PublishingWrapper</stringValue>
<type>CONSTANT</type>
</item>
</parameters>
<sources id="176" type="java.util.HashSet">
<item id="177" type="com.j2fe.workflow.definition.Transition">
<name id="178">goto-next</name>
<source id="179">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="180">Wait </name>
<nodeHandler>com.j2fe.scheduling.activities.Wait</nodeHandler>
<nodeHandlerClass id="181">com.j2fe.scheduling.activities.Wait</nodeHandlerClass>
<parameters id="182" type="java.util.HashSet">
<item id="183" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="184">secondsToWait</name>
<objectValue id="185" type="java.lang.Integer">60</objectValue>
<type>CONSTANT</type>
</item>
</parameters>
<sources id="186" type="java.util.HashSet">
<item id="187" type="com.j2fe.workflow.definition.Transition">
<name id="188">goto-next</name>
<source id="189">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="190">Call EOD Issuer Publish</name>
<nodeHandler>com.j2fe.workflow.handler.impl.CallSubWorkflow</nodeHandler>
<nodeHandlerClass id="191">com.j2fe.workflow.handler.impl.CallSubWorkflow</nodeHandlerClass>
<parameters id="192" type="java.util.HashSet">
<item id="193" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="194">["AOIToleranceWindow"]@java/lang/Long@</UITypeHint>
<input>true</input>
<name id="195">input["AOIToleranceWindow"]</name>
<objectValue id="196" type="java.lang.Long">0</objectValue>
<type>CONSTANT</type>
</item>
<item id="197" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="198">["ColumnNameStoringPublishedFileName"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="199">input["ColumnNameStoringPublishedFileName"]</name>
<stringValue id="200">PUBLISHED_FILE_NME</stringValue>
<type>CONSTANT</type>
</item>
<item id="201" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="202">["CreateSingleFile"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="203">input["CreateSingleFile"]</name>
<objectValue id="204" type="java.lang.Boolean">false</objectValue>
<type>CONSTANT</type>
</item>
<item id="205" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="206">["Database"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="207">input["Database"]</name>
<stringValue id="208">jdbc/GSDM-1</stringValue>
<type>CONSTANT</type>
</item>
<item id="209" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="210">["DateFormat"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="211">input["DateFormat"]</name>
<stringValue id="212">yyyyMMddHHmmssSSSSSSS</stringValue>
<type>CONSTANT</type>
</item>
<item id="213" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="214">["DeleteLocalCopy"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="215">input["DeleteLocalCopy"]</name>
<objectValue id="216" type="java.lang.Boolean">true</objectValue>
<type>CONSTANT</type>
</item>
<item id="217" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="218">["Delta with ADEL"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="219">input["Delta with ADEL"]</name>
<objectValue idref="204"/>
<type>CONSTANT</type>
</item>
<item id="220" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="221">["Email Session"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="222">input["Email Session"]</name>
<stringValue id="223">java/Mail</stringValue>
<type>CONSTANT</type>
</item>
<item id="224" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="225">["EntityName"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="226">input["EntityName"]</name>
<stringValue id="227">issuer</stringValue>
<type>CONSTANT</type>
</item>
<item id="228" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="229">["FilePerEntity"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="230">input["FilePerEntity"]</name>
<objectValue idref="204"/>
<type>CONSTANT</type>
</item>
<item id="231" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="232">["Group MultiOccurring Fields"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="233">input["Group MultiOccurring Fields"]</name>
<objectValue idref="204"/>
<type>CONSTANT</type>
</item>
<item id="234" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="235">["IsEODPublishing"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="236">input["IsEODPublishing"]</name>
<objectValue idref="216"/>
<type>CONSTANT</type>
</item>
<item id="237" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="238">["IsJMSConnectionXA"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="239">input["IsJMSConnectionXA"]</name>
<objectValue idref="204"/>
<type>CONSTANT</type>
</item>
<item id="240" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="241">["JMSBulkSize"]@java/lang/Integer@</UITypeHint>
<input>true</input>
<name id="242">input["JMSBulkSize"]</name>
<objectValue id="243" type="java.lang.Integer">500</objectValue>
<type>CONSTANT</type>
</item>
<item id="244" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="245">["JobConfigText"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="246">input["JobConfigText"]</name>
<stringValue id="247">LevFin EOD Issuer Publish</stringValue>
<type>CONSTANT</type>
</item>
<item id="248" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="249">["OID Generator Function"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="250">input["OID Generator Function"]</name>
<stringValue id="251">NEW_OID()</stringValue>
<type>CONSTANT</type>
</item>
<item id="252" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="253">["On Demand VSH"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="254">input["On Demand VSH"]</name>
<objectValue idref="204"/>
<type>CONSTANT</type>
</item>
<item id="255" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="256">["PublishDataOldCSVFormat"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="257">input["PublishDataOldCSVFormat"]</name>
<objectValue idref="204"/>
<type>CONSTANT</type>
</item>
<item id="258" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="259">["PublishDataWithFailedRulesValidation"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="260">input["PublishDataWithFailedRulesValidation"]</name>
<objectValue idref="204"/>
<type>CONSTANT</type>
</item>
<item id="261" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="262">["PublishingBulkSize"]@java/lang/Integer@</UITypeHint>
<input>true</input>
<name id="263">input["PublishingBulkSize"]</name>
<objectValue id="264" type="java.lang.Integer">500</objectValue>
<type>CONSTANT</type>
</item>
<item id="265" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="266">["S3DestFolder"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="267">input["S3DestFolder"]</name>
<stringValue id="268">S3DestFolder</stringValue>
<type>VARIABLE</type>
</item>
<item id="269" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="270">["StorePublishedMessageToPBDP"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="271">input["StorePublishedMessageToPBDP"]</name>
<objectValue idref="204"/>
<type>CONSTANT</type>
</item>
<item id="272" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="273">["SubscriptionName"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="274">input["SubscriptionName"]</name>
<stringValue id="275">NVN_LevFin_Issuer_EOD_Publish</stringValue>
<type>CONSTANT</type>
</item>
<item id="276" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="277">["addCorrelationHeader"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="278">input["addCorrelationHeader"]</name>
<objectValue idref="216"/>
<type>CONSTANT</type>
</item>
<item id="279" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="280">["addCoveringXMLHeader"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="281">input["addCoveringXMLHeader"]</name>
<objectValue idref="216"/>
<type>CONSTANT</type>
</item>
<item id="282" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="283">["addFirstDataGroupNameJSON"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="284">input["addFirstDataGroupNameJSON"]</name>
<objectValue idref="216"/>
<type>CONSTANT</type>
</item>
<item id="285" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="286">["addGSONameJSONRoot"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="287">input["addGSONameJSONRoot"]</name>
<objectValue idref="216"/>
<type>CONSTANT</type>
</item>
<item id="288" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="289">["appendEOFLine"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="290">input["appendEOFLine"]</name>
<objectValue idref="216"/>
<type>CONSTANT</type>
</item>
<item id="291" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="292">["bulkSize"]@java/lang/Integer@</UITypeHint>
<input>true</input>
<name id="293">input["bulkSize"]</name>
<objectValue id="294" type="java.lang.Integer">500</objectValue>
<type>CONSTANT</type>
</item>
<item id="295" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="296">["checkPublishingTimeAOIL"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="297">input["checkPublishingTimeAOIL"]</name>
<objectValue idref="204"/>
<type>CONSTANT</type>
</item>
<item id="298" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="299">["enableValueTagJSON"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="300">input["enableValueTagJSON"]</name>
<objectValue idref="204"/>
<type>CONSTANT</type>
</item>
<item id="301" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="302">["entityMode"]@com/thegoldensource/publishing/util/EntityMode@</UITypeHint>
<input>true</input>
<name id="303">input["entityMode"]</name>
<objectValue id="304" type="com.thegoldensource.publishing.util.EntityMode">BUSINESS_ENTITY</objectValue>
<type>CONSTANT</type>
</item>
<item id="305" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="306">["inlineAOIProcessing"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="307">input["inlineAOIProcessing"]</name>
<objectValue idref="204"/>
<type>CONSTANT</type>
</item>
<item id="308" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="309">["persistDQRulesExceptionsInTable"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="310">input["persistDQRulesExceptionsInTable"]</name>
<objectValue idref="204"/>
<type>CONSTANT</type>
</item>
<item id="311" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="312">["publishRelationName"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="313">input["publishRelationName"]</name>
<objectValue idref="216"/>
<type>CONSTANT</type>
</item>
<item id="314" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="315">["publishingMode"]@com/thegoldensource/subscription/PublishingMode@</UITypeHint>
<input>true</input>
<name id="316">input["publishingMode"]</name>
<objectValue id="317" type="com.thegoldensource.subscription.PublishingMode">BATCH</objectValue>
<type>CONSTANT</type>
</item>
<item id="318" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="319">["s3BucketName"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="320">input["s3BucketName"]</name>
<stringValue id="321">s3bucketappgsname</stringValue>
<type>CONSTANT</type>
</item>
<item id="322" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="323">["s3Prefix"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="324">input["s3Prefix"]</name>
<stringValue id="325">s3bucketappgspubprefix</stringValue>
<type>CONSTANT</type>
</item>
<item id="326" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="327">["s3Region"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="328">input["s3Region"]</name>
<stringValue id="329">s3bucketappgsregion</stringValue>
<type>CONSTANT</type>
</item>
<item id="330" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="331">["subscriptionId"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="332">input["subscriptionId"]</name>
<stringValue id="333">NVN_LevFin_Issuer_EOD_Publish</stringValue>
<type>CONSTANT</type>
</item>
<item id="334" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="335">name</name>
<stringValue id="336">Nuveen_PublishingWrapper</stringValue>
<type>CONSTANT</type>
</item>
</parameters>
<sources id="337" type="java.util.HashSet">
<item id="338" type="com.j2fe.workflow.definition.Transition">
<name id="339">goto-next</name>
<source id="340">
<activation>ASYNCHRONOUS</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="341">Start</name>
<nodeHandler>com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandler>
<nodeHandlerClass id="342">com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandlerClass>
<sources id="343" type="java.util.HashSet"/>
<targets id="344" type="java.util.HashSet">
<item idref="338" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>START</type>
</source>
<target idref="189"/>
</item>
</sources>
<targets id="345" type="java.util.HashSet">
<item idref="187" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="179"/>
</item>
</sources>
<targets id="346" type="java.util.HashSet">
<item idref="177" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="9"/>
</item>
</sources>
<targets id="347" type="java.util.HashSet">
<item idref="7" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="3"/>
</item>
</sources>
<targets id="348" type="java.util.HashSet"/>
<type>END</type>
</endNode>
<forcePurgeAtEnd>false</forcePurgeAtEnd>
<group id="349">Custom/Publishing</group>
<haltOnError>false</haltOnError>
<lastChangeUser id="350">user1</lastChangeUser>
<lastUpdate id="351">2024-08-20T16:18:20.000-0400</lastUpdate>
<name id="352">Nuveen_LevFin_Publish_Wrapper</name>
<optimize>true</optimize>
<parameter id="353" type="java.util.HashMap">
<entry>
<key id="354" type="java.lang.String">ParentJobId</key>
<value id="355" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="356">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="357" type="java.lang.String">S3DestFolder</key>
<value id="358" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="359">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="360">S3DestFolder</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
</parameter>
<permissions id="361" type="java.util.HashSet"/>
<priority>50</priority>
<purgeAtEnd>true</purgeAtEnd>
<retries>0</retries>
<startNode idref="340"/>
<status>RELEASED</status>
<variables id="362" type="java.util.HashMap">
<entry>
<key id="363" type="java.lang.String">ParentJobId</key>
<value id="364" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="365">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="366" type="java.lang.String">S3DestFolder</key>
<value id="367" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="368">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="369">S3DestFolder</description>
<persistent>false</persistent>
<value id="370" type="java.lang.String">eod</value>
</value>
</entry>
</variables>
<version>43</version>
</com.j2fe.workflow.definition.Workflow>
</businessobject>
</goldensource-package>
