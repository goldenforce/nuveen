<?xml version="1.0" encoding="UTF-8" standalone="no"?>
<goldensource-package version="8.8.1.66">
<package-comment/>
<businessobject displayString="6 - 20240921-Muni_Publish_Bulk" type="com.j2fe.workflow.definition.Workflow">
<com.j2fe.workflow.definition.Workflow id="0">
<alwaysPersist>false</alwaysPersist>
<clustered>true</clustered>
<comment id="1">20240921-Muni_Publish_Bulk</comment>
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
<name id="10">Muni-Issuer Publish</name>
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
<stringValue id="48">issuer</stringValue>
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
<objectValue id="68" type="java.lang.Integer">1500</objectValue>
<type>CONSTANT</type>
</item>
<item id="69" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="70">["JobConfigText"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="71">input["JobConfigText"]</name>
<stringValue id="72">Muni Issuer Publish</stringValue>
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
<stringValue id="96">eod</stringValue>
<type>CONSTANT</type>
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
<stringValue id="104">NVN_Muni_Issuer_EOD_Publish</stringValue>
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
<objectValue id="128" type="java.lang.Integer">1500</objectValue>
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
<stringValue id="160">s3bucketcreditscopename</stringValue>
<type>CONSTANT</type>
</item>
<item id="161" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="162">["s3Prefix"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="163">input["s3Prefix"]</name>
<stringValue id="164">s3bucketcreditscopeoutboundprefix</stringValue>
<type>CONSTANT</type>
</item>
<item id="165" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="166">["s3Region"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="167">input["s3Region"]</name>
<stringValue id="168">s3bucketcreditscoperegion</stringValue>
<type>CONSTANT</type>
</item>
<item id="169" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="170">["subscriptionId"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="171">input["subscriptionId"]</name>
<stringValue id="172">NVN_Muni_Issuer_EOD_Publish</stringValue>
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
<name id="180">Muni Publish</name>
<nodeHandler>com.j2fe.workflow.handler.impl.CallSubWorkflow</nodeHandler>
<nodeHandlerClass id="181">com.j2fe.workflow.handler.impl.CallSubWorkflow</nodeHandlerClass>
<parameters id="182" type="java.util.HashSet">
<item id="183" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="184">["AOIToleranceWindow"]@java/lang/Long@</UITypeHint>
<input>true</input>
<name id="185">input["AOIToleranceWindow"]</name>
<stringValue id="186">0</stringValue>
<type>CONSTANT</type>
</item>
<item id="187" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="188">["ColumnNameStoringPublishedFileName"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="189">input["ColumnNameStoringPublishedFileName"]</name>
<stringValue id="190">PUBLISHED_FILE_NME</stringValue>
<type>CONSTANT</type>
</item>
<item id="191" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="192">["CreateSingleFile"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="193">input["CreateSingleFile"]</name>
<stringValue id="194">false</stringValue>
<type>CONSTANT</type>
</item>
<item id="195" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="196">["Database"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="197">input["Database"]</name>
<stringValue id="198">jdbc/GSDM-1</stringValue>
<type>CONSTANT</type>
</item>
<item id="199" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="200">["DateFormat"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="201">input["DateFormat"]</name>
<stringValue id="202">yyyyMMddHHmmssSSSSSSS</stringValue>
<type>CONSTANT</type>
</item>
<item id="203" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="204">["DeleteLocalCopy"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="205">input["DeleteLocalCopy"]</name>
<stringValue id="206">true</stringValue>
<type>CONSTANT</type>
</item>
<item id="207" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="208">["Delta with ADEL"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="209">input["Delta with ADEL"]</name>
<stringValue id="210">false</stringValue>
<type>CONSTANT</type>
</item>
<item id="211" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="212">["Email Session"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="213">input["Email Session"]</name>
<stringValue id="214">java/Mail</stringValue>
<type>CONSTANT</type>
</item>
<item id="215" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="216">["EntityName"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="217">input["EntityName"]</name>
<stringValue id="218">smf</stringValue>
<type>CONSTANT</type>
</item>
<item id="219" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="220">["FilePerEntity"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="221">input["FilePerEntity"]</name>
<stringValue id="222">false</stringValue>
<type>CONSTANT</type>
</item>
<item id="223" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="224">["Group MultiOccurring Fields"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="225">input["Group MultiOccurring Fields"]</name>
<stringValue id="226">false</stringValue>
<type>CONSTANT</type>
</item>
<item id="227" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="228">["IsEODPublishing"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="229">input["IsEODPublishing"]</name>
<stringValue id="230">true</stringValue>
<type>CONSTANT</type>
</item>
<item id="231" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="232">["IsJMSConnectionXA"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="233">input["IsJMSConnectionXA"]</name>
<stringValue id="234">false</stringValue>
<type>CONSTANT</type>
</item>
<item id="235" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="236">["JMSBulkSize"]@java/lang/Integer@</UITypeHint>
<input>true</input>
<name id="237">input["JMSBulkSize"]</name>
<objectValue id="238" type="java.lang.Integer">1500</objectValue>
<type>CONSTANT</type>
</item>
<item id="239" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="240">["JobConfigText"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="241">input["JobConfigText"]</name>
<stringValue id="242">Muni Publish</stringValue>
<type>CONSTANT</type>
</item>
<item id="243" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="244">["OID Generator Function"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="245">input["OID Generator Function"]</name>
<stringValue id="246">NEW_OID()</stringValue>
<type>CONSTANT</type>
</item>
<item id="247" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="248">["On Demand VSH"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="249">input["On Demand VSH"]</name>
<stringValue id="250">false</stringValue>
<type>CONSTANT</type>
</item>
<item id="251" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="252">["PublishDataOldCSVFormat"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="253">input["PublishDataOldCSVFormat"]</name>
<stringValue id="254">false</stringValue>
<type>CONSTANT</type>
</item>
<item id="255" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="256">["PublishDataWithFailedRulesValidation"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="257">input["PublishDataWithFailedRulesValidation"]</name>
<stringValue id="258">false</stringValue>
<type>CONSTANT</type>
</item>
<item id="259" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="260">["PublishingBulkSize"]@java/lang/Integer@</UITypeHint>
<input>true</input>
<name id="261">input["PublishingBulkSize"]</name>
<stringValue id="262">500</stringValue>
<type>CONSTANT</type>
</item>
<item id="263" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="264">["S3DestFolder"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="265">input["S3DestFolder"]</name>
<stringValue id="266">eod</stringValue>
<type>CONSTANT</type>
</item>
<item id="267" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="268">["StorePublishedMessageToPBDP"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="269">input["StorePublishedMessageToPBDP"]</name>
<stringValue id="270">false</stringValue>
<type>CONSTANT</type>
</item>
<item id="271" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="272">["SubscriptionName"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="273">input["SubscriptionName"]</name>
<stringValue id="274">Nuveen_Muni_Publishing</stringValue>
<type>CONSTANT</type>
</item>
<item id="275" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="276">["addCorrelationHeader"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="277">input["addCorrelationHeader"]</name>
<stringValue id="278">true</stringValue>
<type>CONSTANT</type>
</item>
<item id="279" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="280">["addCoveringXMLHeader"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="281">input["addCoveringXMLHeader"]</name>
<stringValue id="282">true</stringValue>
<type>CONSTANT</type>
</item>
<item id="283" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="284">["addFirstDataGroupNameJSON"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="285">input["addFirstDataGroupNameJSON"]</name>
<stringValue id="286">true</stringValue>
<type>CONSTANT</type>
</item>
<item id="287" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="288">["addGSONameJSONRoot"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="289">input["addGSONameJSONRoot"]</name>
<stringValue id="290">true</stringValue>
<type>CONSTANT</type>
</item>
<item id="291" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="292">["appendEOFLine"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="293">input["appendEOFLine"]</name>
<stringValue id="294">true</stringValue>
<type>CONSTANT</type>
</item>
<item id="295" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="296">["bulkSize"]@java/lang/Integer@</UITypeHint>
<input>true</input>
<name id="297">input["bulkSize"]</name>
<objectValue id="298" type="java.lang.Integer">1500</objectValue>
<type>CONSTANT</type>
</item>
<item id="299" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="300">["checkPublishingTimeAOIL"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="301">input["checkPublishingTimeAOIL"]</name>
<stringValue id="302">false</stringValue>
<type>CONSTANT</type>
</item>
<item id="303" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="304">["enableValueTagJSON"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="305">input["enableValueTagJSON"]</name>
<stringValue id="306">false</stringValue>
<type>CONSTANT</type>
</item>
<item id="307" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="308">["entityMode"]@com/thegoldensource/publishing/util/EntityMode@</UITypeHint>
<input>true</input>
<name id="309">input["entityMode"]</name>
<stringValue id="310">BUSINESS_ENTITY</stringValue>
<type>CONSTANT</type>
</item>
<item id="311" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="312">["inlineAOIProcessing"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="313">input["inlineAOIProcessing"]</name>
<stringValue id="314">false</stringValue>
<type>CONSTANT</type>
</item>
<item id="315" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="316">["persistDQRulesExceptionsInTable"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="317">input["persistDQRulesExceptionsInTable"]</name>
<stringValue id="318">false</stringValue>
<type>CONSTANT</type>
</item>
<item id="319" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="320">["publishRelationName"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="321">input["publishRelationName"]</name>
<stringValue id="322">false</stringValue>
<type>CONSTANT</type>
</item>
<item id="323" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="324">["publishingMode"]@com/thegoldensource/subscription/PublishingMode@</UITypeHint>
<input>true</input>
<name id="325">input["publishingMode"]</name>
<stringValue id="326">BATCH</stringValue>
<type>CONSTANT</type>
</item>
<item id="327" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="328">["s3BucketName"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="329">input["s3BucketName"]</name>
<stringValue id="330">s3bucketcreditscopename</stringValue>
<type>CONSTANT</type>
</item>
<item id="331" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="332">["s3Prefix"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="333">input["s3Prefix"]</name>
<stringValue id="334">s3bucketcreditscopeoutboundprefix</stringValue>
<type>CONSTANT</type>
</item>
<item id="335" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="336">["s3Region"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="337">input["s3Region"]</name>
<stringValue id="338">s3bucketcreditscoperegion</stringValue>
<type>CONSTANT</type>
</item>
<item id="339" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="340">["subscriptionId"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="341">input["subscriptionId"]</name>
<stringValue id="342">Nuveen_Muni_Publishing</stringValue>
<type>CONSTANT</type>
</item>
<item id="343" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="344">name</name>
<stringValue id="345">Nuveen_PublishingWrapper</stringValue>
<type>CONSTANT</type>
</item>
</parameters>
<sources id="346" type="java.util.HashSet">
<item id="347" type="com.j2fe.workflow.definition.Transition">
<name id="348">goto-next</name>
<source id="349">
<activation>ASYNCHRONOUS</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="350">Start</name>
<nodeHandler>com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandler>
<nodeHandlerClass id="351">com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandlerClass>
<sources id="352" type="java.util.HashSet"/>
<targets id="353" type="java.util.HashSet">
<item idref="347" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>START</type>
</source>
<target idref="179"/>
</item>
</sources>
<targets id="354" type="java.util.HashSet">
<item idref="177" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="9"/>
</item>
</sources>
<targets id="355" type="java.util.HashSet">
<item idref="7" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="3"/>
</item>
</sources>
<targets id="356" type="java.util.HashSet"/>
<type>END</type>
</endNode>
<forcePurgeAtEnd>false</forcePurgeAtEnd>
<group id="357">Custom/Publishing</group>
<haltOnError>false</haltOnError>
<lastChangeUser id="358">user1</lastChangeUser>
<lastUpdate id="359">2024-09-21T23:30:48.000-0400</lastUpdate>
<name id="360">Nuveen_Muni_Publish_Wrapper</name>
<optimize>true</optimize>
<parameter id="361" type="java.util.HashMap"/>
<permissions id="362" type="java.util.HashSet"/>
<priority>50</priority>
<purgeAtEnd>false</purgeAtEnd>
<retries>0</retries>
<startNode idref="349"/>
<status>RELEASED</status>
<variables id="363" type="java.util.HashMap"/>
<version>6</version>
</com.j2fe.workflow.definition.Workflow>
</businessobject>
</goldensource-package>
