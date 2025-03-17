<?xml version="1.0" encoding="UTF-8" standalone="no"?>
<goldensource-package version="8.8.1.59">
<package-comment/>
<businessobject displayString="12 - CreditScope Muni Publish" type="com.j2fe.workflow.definition.Workflow">
<com.j2fe.workflow.definition.Workflow id="0">
<alwaysPersist>false</alwaysPersist>
<clustered>true</clustered>
<comment id="1">CreditScope Muni Publish</comment>
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
<stringValue id="68">500</stringValue>
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
<stringValue id="238">500</stringValue>
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
<stringValue id="298">500</stringValue>
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
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="350">Credit Issue Publish</name>
<nodeHandler>com.j2fe.workflow.handler.impl.CallSubWorkflow</nodeHandler>
<nodeHandlerClass id="351">com.j2fe.workflow.handler.impl.CallSubWorkflow</nodeHandlerClass>
<parameters id="352" type="java.util.HashSet">
<item id="353" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="354">["AOIToleranceWindow"]@java/lang/Long@</UITypeHint>
<input>true</input>
<name id="355">input["AOIToleranceWindow"]</name>
<stringValue id="356">0</stringValue>
<type>CONSTANT</type>
</item>
<item id="357" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="358">["ColumnNameStoringPublishedFileName"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="359">input["ColumnNameStoringPublishedFileName"]</name>
<stringValue id="360">PUBLISHED_FILE_NME</stringValue>
<type>CONSTANT</type>
</item>
<item id="361" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="362">["CreateSingleFile"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="363">input["CreateSingleFile"]</name>
<stringValue id="364">false</stringValue>
<type>CONSTANT</type>
</item>
<item id="365" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="366">["Database"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="367">input["Database"]</name>
<stringValue id="368">jdbc/GSDM-1</stringValue>
<type>CONSTANT</type>
</item>
<item id="369" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="370">["DateFormat"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="371">input["DateFormat"]</name>
<stringValue id="372">yyyyMMddHHmmssSSSSSSS</stringValue>
<type>CONSTANT</type>
</item>
<item id="373" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="374">["DeleteLocalCopy"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="375">input["DeleteLocalCopy"]</name>
<stringValue id="376">true</stringValue>
<type>CONSTANT</type>
</item>
<item id="377" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="378">["Delta with ADEL"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="379">input["Delta with ADEL"]</name>
<stringValue id="380">false</stringValue>
<type>CONSTANT</type>
</item>
<item id="381" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="382">["Email Session"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="383">input["Email Session"]</name>
<stringValue id="384">java/Mail</stringValue>
<type>CONSTANT</type>
</item>
<item id="385" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="386">["EntityName"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="387">input["EntityName"]</name>
<stringValue id="388">issue</stringValue>
<type>CONSTANT</type>
</item>
<item id="389" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="390">["FilePerEntity"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="391">input["FilePerEntity"]</name>
<stringValue id="392">false</stringValue>
<type>CONSTANT</type>
</item>
<item id="393" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="394">["Group MultiOccurring Fields"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="395">input["Group MultiOccurring Fields"]</name>
<stringValue id="396">false</stringValue>
<type>CONSTANT</type>
</item>
<item id="397" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="398">["IsEODPublishing"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="399">input["IsEODPublishing"]</name>
<stringValue id="400">true</stringValue>
<type>CONSTANT</type>
</item>
<item id="401" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="402">["IsJMSConnectionXA"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="403">input["IsJMSConnectionXA"]</name>
<stringValue id="404">false</stringValue>
<type>CONSTANT</type>
</item>
<item id="405" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="406">["JMSBulkSize"]@java/lang/Integer@</UITypeHint>
<input>true</input>
<name id="407">input["JMSBulkSize"]</name>
<stringValue id="408">500</stringValue>
<type>CONSTANT</type>
</item>
<item id="409" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="410">["JobConfigText"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="411">input["JobConfigText"]</name>
<stringValue id="412">Credit Issue Publish</stringValue>
<type>CONSTANT</type>
</item>
<item id="413" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="414">["OID Generator Function"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="415">input["OID Generator Function"]</name>
<stringValue id="416">NEW_OID()</stringValue>
<type>CONSTANT</type>
</item>
<item id="417" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="418">["On Demand VSH"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="419">input["On Demand VSH"]</name>
<stringValue id="420">false</stringValue>
<type>CONSTANT</type>
</item>
<item id="421" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="422">["PublishDataOldCSVFormat"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="423">input["PublishDataOldCSVFormat"]</name>
<stringValue id="424">false</stringValue>
<type>CONSTANT</type>
</item>
<item id="425" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="426">["PublishDataWithFailedRulesValidation"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="427">input["PublishDataWithFailedRulesValidation"]</name>
<stringValue id="428">false</stringValue>
<type>CONSTANT</type>
</item>
<item id="429" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="430">["PublishingBulkSize"]@java/lang/Integer@</UITypeHint>
<input>true</input>
<name id="431">input["PublishingBulkSize"]</name>
<stringValue id="432">500</stringValue>
<type>CONSTANT</type>
</item>
<item id="433" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="434">["S3DestFolder"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="435">input["S3DestFolder"]</name>
<stringValue id="436">eod</stringValue>
<type>CONSTANT</type>
</item>
<item id="437" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="438">["StorePublishedMessageToPBDP"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="439">input["StorePublishedMessageToPBDP"]</name>
<stringValue id="440">false</stringValue>
<type>CONSTANT</type>
</item>
<item id="441" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="442">["SubscriptionName"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="443">input["SubscriptionName"]</name>
<stringValue id="444">Nuveen_CreditIssue_Publishing</stringValue>
<type>CONSTANT</type>
</item>
<item id="445" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="446">["addCorrelationHeader"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="447">input["addCorrelationHeader"]</name>
<stringValue id="448">true</stringValue>
<type>CONSTANT</type>
</item>
<item id="449" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="450">["addCoveringXMLHeader"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="451">input["addCoveringXMLHeader"]</name>
<stringValue id="452">true</stringValue>
<type>CONSTANT</type>
</item>
<item id="453" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="454">["addFirstDataGroupNameJSON"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="455">input["addFirstDataGroupNameJSON"]</name>
<stringValue id="456">true</stringValue>
<type>CONSTANT</type>
</item>
<item id="457" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="458">["addGSONameJSONRoot"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="459">input["addGSONameJSONRoot"]</name>
<stringValue id="460">true</stringValue>
<type>CONSTANT</type>
</item>
<item id="461" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="462">["appendEOFLine"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="463">input["appendEOFLine"]</name>
<stringValue id="464">true</stringValue>
<type>CONSTANT</type>
</item>
<item id="465" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="466">["bulkSize"]@java/lang/Integer@</UITypeHint>
<input>true</input>
<name id="467">input["bulkSize"]</name>
<stringValue id="468">500</stringValue>
<type>CONSTANT</type>
</item>
<item id="469" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="470">["checkPublishingTimeAOIL"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="471">input["checkPublishingTimeAOIL"]</name>
<stringValue id="472">false</stringValue>
<type>CONSTANT</type>
</item>
<item id="473" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="474">["enableValueTagJSON"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="475">input["enableValueTagJSON"]</name>
<stringValue id="476">false</stringValue>
<type>CONSTANT</type>
</item>
<item id="477" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="478">["entityMode"]@com/thegoldensource/publishing/util/EntityMode@</UITypeHint>
<input>true</input>
<name id="479">input["entityMode"]</name>
<stringValue id="480">BUSINESS_ENTITY</stringValue>
<type>CONSTANT</type>
</item>
<item id="481" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="482">["inlineAOIProcessing"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="483">input["inlineAOIProcessing"]</name>
<stringValue id="484">false</stringValue>
<type>CONSTANT</type>
</item>
<item id="485" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="486">["persistDQRulesExceptionsInTable"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="487">input["persistDQRulesExceptionsInTable"]</name>
<stringValue id="488">false</stringValue>
<type>CONSTANT</type>
</item>
<item id="489" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="490">["publishRelationName"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="491">input["publishRelationName"]</name>
<stringValue id="492">true</stringValue>
<type>CONSTANT</type>
</item>
<item id="493" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="494">["publishingMode"]@com/thegoldensource/subscription/PublishingMode@</UITypeHint>
<input>true</input>
<name id="495">input["publishingMode"]</name>
<stringValue id="496">BATCH</stringValue>
<type>CONSTANT</type>
</item>
<item id="497" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="498">["s3BucketName"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="499">input["s3BucketName"]</name>
<stringValue id="500">s3bucketcreditscopename</stringValue>
<type>CONSTANT</type>
</item>
<item id="501" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="502">["s3Prefix"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="503">input["s3Prefix"]</name>
<stringValue id="504">s3bucketcreditscopeoutboundprefix</stringValue>
<type>CONSTANT</type>
</item>
<item id="505" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="506">["s3Region"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="507">input["s3Region"]</name>
<stringValue id="508">s3bucketcreditscoperegion</stringValue>
<type>CONSTANT</type>
</item>
<item id="509" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="510">["subscriptionId"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="511">input["subscriptionId"]</name>
<stringValue id="512">Nuveen_CreditIssue_Publishing</stringValue>
<type>CONSTANT</type>
</item>
<item id="513" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="514">name</name>
<stringValue id="515">Nuveen_PublishingWrapper</stringValue>
<type>CONSTANT</type>
</item>
</parameters>
<sources id="516" type="java.util.HashSet">
<item id="517" type="com.j2fe.workflow.definition.Transition">
<name id="518">goto-next</name>
<source id="519">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="520">Credit Publish</name>
<nodeHandler>com.j2fe.workflow.handler.impl.CallSubWorkflow</nodeHandler>
<nodeHandlerClass id="521">com.j2fe.workflow.handler.impl.CallSubWorkflow</nodeHandlerClass>
<parameters id="522" type="java.util.HashSet">
<item id="523" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="524">["AOIToleranceWindow"]@java/lang/Long@</UITypeHint>
<input>true</input>
<name id="525">input["AOIToleranceWindow"]</name>
<objectValue id="526" type="java.lang.Long">0</objectValue>
<type>CONSTANT</type>
</item>
<item id="527" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="528">["ColumnNameStoringPublishedFileName"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="529">input["ColumnNameStoringPublishedFileName"]</name>
<stringValue id="530">PUBLISHED_FILE_NME</stringValue>
<type>CONSTANT</type>
</item>
<item id="531" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="532">["CreateSingleFile"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="533">input["CreateSingleFile"]</name>
<objectValue id="534" type="java.lang.Boolean">false</objectValue>
<type>CONSTANT</type>
</item>
<item id="535" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="536">["Database"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="537">input["Database"]</name>
<stringValue id="538">jdbc/GSDM-1</stringValue>
<type>CONSTANT</type>
</item>
<item id="539" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="540">["DateFormat"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="541">input["DateFormat"]</name>
<stringValue id="542">yyyyMMddHHmmssSSSSSSS</stringValue>
<type>CONSTANT</type>
</item>
<item id="543" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="544">["DeleteLocalCopy"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="545">input["DeleteLocalCopy"]</name>
<objectValue id="546" type="java.lang.Boolean">true</objectValue>
<type>CONSTANT</type>
</item>
<item id="547" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="548">["Delta with ADEL"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="549">input["Delta with ADEL"]</name>
<objectValue idref="534"/>
<type>CONSTANT</type>
</item>
<item id="550" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="551">["Email Session"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="552">input["Email Session"]</name>
<stringValue id="553">java/Mail</stringValue>
<type>CONSTANT</type>
</item>
<item id="554" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="555">["EntityName"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="556">input["EntityName"]</name>
<stringValue id="557">credit</stringValue>
<type>CONSTANT</type>
</item>
<item id="558" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="559">["FilePerEntity"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="560">input["FilePerEntity"]</name>
<objectValue idref="534"/>
<type>CONSTANT</type>
</item>
<item id="561" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="562">["Group MultiOccurring Fields"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="563">input["Group MultiOccurring Fields"]</name>
<objectValue idref="534"/>
<type>CONSTANT</type>
</item>
<item id="564" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="565">["IsEODPublishing"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="566">input["IsEODPublishing"]</name>
<objectValue idref="546"/>
<type>CONSTANT</type>
</item>
<item id="567" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="568">["IsJMSConnectionXA"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="569">input["IsJMSConnectionXA"]</name>
<objectValue idref="534"/>
<type>CONSTANT</type>
</item>
<item id="570" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="571">["JMSBulkSize"]@java/lang/Integer@</UITypeHint>
<input>true</input>
<name id="572">input["JMSBulkSize"]</name>
<objectValue id="573" type="java.lang.Integer">500</objectValue>
<type>CONSTANT</type>
</item>
<item id="574" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="575">["JobConfigText"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="576">input["JobConfigText"]</name>
<stringValue id="577">Credit Publish</stringValue>
<type>CONSTANT</type>
</item>
<item id="578" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="579">["OID Generator Function"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="580">input["OID Generator Function"]</name>
<stringValue id="581">NEW_OID()</stringValue>
<type>CONSTANT</type>
</item>
<item id="582" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="583">["On Demand VSH"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="584">input["On Demand VSH"]</name>
<objectValue idref="534"/>
<type>CONSTANT</type>
</item>
<item id="585" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="586">["PublishDataOldCSVFormat"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="587">input["PublishDataOldCSVFormat"]</name>
<objectValue idref="534"/>
<type>CONSTANT</type>
</item>
<item id="588" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="589">["PublishDataWithFailedRulesValidation"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="590">input["PublishDataWithFailedRulesValidation"]</name>
<objectValue idref="534"/>
<type>CONSTANT</type>
</item>
<item id="591" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="592">["PublishingBulkSize"]@java/lang/Integer@</UITypeHint>
<input>true</input>
<name id="593">input["PublishingBulkSize"]</name>
<objectValue id="594" type="java.lang.Integer">500</objectValue>
<type>CONSTANT</type>
</item>
<item id="595" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="596">["S3DestFolder"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="597">input["S3DestFolder"]</name>
<stringValue id="598">eod</stringValue>
<type>CONSTANT</type>
</item>
<item id="599" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="600">["StorePublishedMessageToPBDP"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="601">input["StorePublishedMessageToPBDP"]</name>
<objectValue idref="534"/>
<type>CONSTANT</type>
</item>
<item id="602" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="603">["SubscriptionName"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="604">input["SubscriptionName"]</name>
<stringValue id="605">Nuveen_Credit_Publishing</stringValue>
<type>CONSTANT</type>
</item>
<item id="606" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="607">["addCorrelationHeader"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="608">input["addCorrelationHeader"]</name>
<objectValue idref="546"/>
<type>CONSTANT</type>
</item>
<item id="609" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="610">["addCoveringXMLHeader"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="611">input["addCoveringXMLHeader"]</name>
<objectValue idref="546"/>
<type>CONSTANT</type>
</item>
<item id="612" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="613">["addFirstDataGroupNameJSON"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="614">input["addFirstDataGroupNameJSON"]</name>
<objectValue idref="546"/>
<type>CONSTANT</type>
</item>
<item id="615" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="616">["addGSONameJSONRoot"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="617">input["addGSONameJSONRoot"]</name>
<objectValue idref="546"/>
<type>CONSTANT</type>
</item>
<item id="618" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="619">["appendEOFLine"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="620">input["appendEOFLine"]</name>
<objectValue idref="546"/>
<type>CONSTANT</type>
</item>
<item id="621" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="622">["bulkSize"]@java/lang/Integer@</UITypeHint>
<input>true</input>
<name id="623">input["bulkSize"]</name>
<objectValue id="624" type="java.lang.Integer">500</objectValue>
<type>CONSTANT</type>
</item>
<item id="625" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="626">["checkPublishingTimeAOIL"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="627">input["checkPublishingTimeAOIL"]</name>
<objectValue idref="534"/>
<type>CONSTANT</type>
</item>
<item id="628" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="629">["enableValueTagJSON"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="630">input["enableValueTagJSON"]</name>
<objectValue idref="534"/>
<type>CONSTANT</type>
</item>
<item id="631" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="632">["entityMode"]@com/thegoldensource/publishing/util/EntityMode@</UITypeHint>
<input>true</input>
<name id="633">input["entityMode"]</name>
<objectValue id="634" type="com.thegoldensource.publishing.util.EntityMode">BUSINESS_ENTITY</objectValue>
<type>CONSTANT</type>
</item>
<item id="635" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="636">["inlineAOIProcessing"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="637">input["inlineAOIProcessing"]</name>
<objectValue idref="534"/>
<type>CONSTANT</type>
</item>
<item id="638" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="639">["persistDQRulesExceptionsInTable"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="640">input["persistDQRulesExceptionsInTable"]</name>
<objectValue idref="534"/>
<type>CONSTANT</type>
</item>
<item id="641" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="642">["publishRelationName"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="643">input["publishRelationName"]</name>
<objectValue idref="546"/>
<type>CONSTANT</type>
</item>
<item id="644" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="645">["publishingMode"]@com/thegoldensource/subscription/PublishingMode@</UITypeHint>
<input>true</input>
<name id="646">input["publishingMode"]</name>
<objectValue id="647" type="com.thegoldensource.subscription.PublishingMode">BATCH</objectValue>
<type>CONSTANT</type>
</item>
<item id="648" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="649">["s3BucketName"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="650">input["s3BucketName"]</name>
<stringValue id="651">s3bucketcreditscopename</stringValue>
<type>CONSTANT</type>
</item>
<item id="652" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="653">["s3Prefix"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="654">input["s3Prefix"]</name>
<stringValue id="655">s3bucketcreditscopeoutboundprefix</stringValue>
<type>CONSTANT</type>
</item>
<item id="656" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="657">["s3Region"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="658">input["s3Region"]</name>
<stringValue id="659">s3bucketcreditscoperegion</stringValue>
<type>CONSTANT</type>
</item>
<item id="660" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="661">["subscriptionId"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="662">input["subscriptionId"]</name>
<stringValue id="663">Nuveen_Credit_Publishing</stringValue>
<type>CONSTANT</type>
</item>
<item id="664" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="665">name</name>
<stringValue id="666">Nuveen_PublishingWrapper</stringValue>
<type>CONSTANT</type>
</item>
</parameters>
<sources id="667" type="java.util.HashSet">
<item id="668" type="com.j2fe.workflow.definition.Transition">
<name id="669">goto-next</name>
<source id="670">
<activation>ASYNCHRONOUS</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="671">Start</name>
<nodeHandler>com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandler>
<nodeHandlerClass id="672">com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandlerClass>
<sources id="673" type="java.util.HashSet"/>
<targets id="674" type="java.util.HashSet">
<item idref="668" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>START</type>
</source>
<target idref="519"/>
</item>
</sources>
<targets id="675" type="java.util.HashSet">
<item idref="517" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="349"/>
</item>
</sources>
<targets id="676" type="java.util.HashSet">
<item idref="347" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="179"/>
</item>
</sources>
<targets id="677" type="java.util.HashSet">
<item idref="177" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="9"/>
</item>
</sources>
<targets id="678" type="java.util.HashSet">
<item idref="7" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="3"/>
</item>
</sources>
<targets id="679" type="java.util.HashSet"/>
<type>END</type>
</endNode>
<forcePurgeAtEnd>false</forcePurgeAtEnd>
<group id="680">Custom/Publishing</group>
<haltOnError>false</haltOnError>
<lastChangeUser id="681">user1</lastChangeUser>
<lastUpdate id="682">2024-08-19T16:02:44.000-0400</lastUpdate>
<name id="683">Nuveen_CreditScope_Publish_Wrapper</name>
<optimize>true</optimize>
<parameter id="684" type="java.util.HashMap"/>
<permissions id="685" type="java.util.HashSet"/>
<priority>50</priority>
<purgeAtEnd>false</purgeAtEnd>
<retries>0</retries>
<startNode idref="670"/>
<status>RELEASED</status>
<variables id="686" type="java.util.HashMap"/>
<version>12</version>
</com.j2fe.workflow.definition.Workflow>
</businessobject>
</goldensource-package>
