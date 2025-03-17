<?xml version="1.0" encoding="UTF-8" standalone="no"?>
<goldensource-package version="8.8.1.66">
<package-comment/>
<businessobject displayString="1 - 20240830-8.8.1.28-Muni" type="com.j2fe.workflow.definition.Workflow">
<com.j2fe.workflow.definition.Workflow id="0">
<alwaysPersist>false</alwaysPersist>
<clustered>true</clustered>
<comment id="1">20240830-8.8.1.28-Muni</comment>
<endNode id="2">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description id="3"/>
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
<description idref="3"/>
<directJoin>false</directJoin>
<name id="10">Load Entity Ratings</name>
<nodeHandler>com.j2fe.workflow.handler.impl.CallSubWorkflow</nodeHandler>
<nodeHandlerClass id="11">com.j2fe.workflow.handler.impl.CallSubWorkflow</nodeHandlerClass>
<parameters id="12" type="java.util.HashSet">
<item id="13" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="14">["BusinessFeed"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="15">input["BusinessFeed"]</name>
<stringValue id="16">EntityBusinessFeed</stringValue>
<type>VARIABLE</type>
</item>
<item id="17" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="18">["Directory"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="19">input["Directory"]</name>
<stringValue id="20">InputDirectory</stringValue>
<type>VARIABLE</type>
</item>
<item id="21" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="22">["FileLoadEvent"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="23">input["FileLoadEvent"]</name>
<stringValue id="24">FileLoadEvent</stringValue>
<type>VARIABLE</type>
</item>
<item id="25" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="26">["IncludeFilePatternNBusinessFeed"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="27">input["IncludeFilePatternNBusinessFeed"]</name>
<stringValue id="28">true</stringValue>
<type>CONSTANT</type>
</item>
<item id="29" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="30">["LastRunInterval"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="31">input["LastRunInterval"]</name>
<stringValue id="32">24</stringValue>
<type>CONSTANT</type>
</item>
<item id="33" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="34">["MessageBulkSize"]@java/lang/Integer@</UITypeHint>
<input>true</input>
<name id="35">input["MessageBulkSize"]</name>
<stringValue id="36">BulkSize</stringValue>
<type>VARIABLE</type>
</item>
<item id="37" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="38">["MessageProcessingEvent"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="39">input["MessageProcessingEvent"]</name>
<stringValue id="40">ProcessFeedMessage</stringValue>
<type>CONSTANT</type>
</item>
<item id="41" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="42">["NrOfFilesParallel"]@java/lang/Integer@</UITypeHint>
<input>true</input>
<name id="43">input["NrOfFilesParallel"]</name>
<stringValue id="44">FilesInParallel</stringValue>
<type>VARIABLE</type>
</item>
<item id="45" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="46">["OutputDirectory"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="47">input["OutputDirectory"]</name>
<stringValue id="48">OutputDirectory</stringValue>
<type>VARIABLE</type>
</item>
<item id="49" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="50">["ParallelBranches"]@java/lang/Integer@</UITypeHint>
<input>true</input>
<name id="51">input["ParallelBranches"]</name>
<stringValue id="52">ParallelBranches</stringValue>
<type>VARIABLE</type>
</item>
<item id="53" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="54">["ParentJobID"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="55">input["ParentJobID"]</name>
<stringValue id="56">ParentJobId</stringValue>
<type>VARIABLE</type>
</item>
<item id="57" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="58">["ReProcessProcessedFiles"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="59">input["ReProcessProcessedFiles"]</name>
<stringValue id="60">Reprocessprocessedfiles</stringValue>
<type>VARIABLE</type>
</item>
<item id="61" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="62">["Recursive"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="63">input["Recursive"]</name>
<stringValue id="64">false</stringValue>
<type>CONSTANT</type>
</item>
<item id="65" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="66">["SortAscending"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="67">input["SortAscending"]</name>
<stringValue id="68">true</stringValue>
<type>CONSTANT</type>
</item>
<item id="69" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="70">["SortOrder"]@com/j2fe/feeds/activities/ListFiles$Sort@</UITypeHint>
<input>true</input>
<name id="71">input["SortOrder"]</name>
<stringValue id="72">SortOrder</stringValue>
<type>VARIABLE</type>
</item>
<item id="73" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="74">["SuccessAction"]@com/j2fe/feeds/SuccessAction@</UITypeHint>
<input>true</input>
<name id="75">input["SuccessAction"]</name>
<stringValue id="76">SuccessAction</stringValue>
<type>VARIABLE</type>
</item>
<item id="77" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="78">name</name>
<stringValue id="79">Process Files in Directory</stringValue>
<type>CONSTANT</type>
</item>
</parameters>
<sources id="80" type="java.util.HashSet">
<item id="81" type="com.j2fe.workflow.definition.Transition">
<name id="82">ENTITIES</name>
<source id="83">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="3"/>
<directJoin>false</directJoin>
<name id="84">Switch Case</name>
<nodeHandler>com.j2fe.workflow.handler.impl.SwitchCaseSplit</nodeHandler>
<nodeHandlerClass id="85">com.j2fe.workflow.handler.impl.SwitchCaseSplit</nodeHandlerClass>
<parameters id="86" type="java.util.HashSet">
<item id="87" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="88">caseItem</name>
<stringValue id="89">RatingsType</stringValue>
<type>VARIABLE</type>
</item>
<item id="90" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="91">defaultItem</name>
<stringValue id="92">ALL</stringValue>
<type>CONSTANT</type>
</item>
<item id="93" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="94">nullTransition</name>
<stringValue id="95">ALL</stringValue>
<type>CONSTANT</type>
</item>
</parameters>
<sources id="96" type="java.util.HashSet">
<item id="97" type="com.j2fe.workflow.definition.Transition">
<name id="98">goto-next</name>
<source id="99">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="3"/>
<directJoin>false</directJoin>
<name id="100">Start</name>
<nodeHandler>com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandler>
<nodeHandlerClass id="101">com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandlerClass>
<sources id="102" type="java.util.HashSet"/>
<targets id="103" type="java.util.HashSet">
<item idref="97" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>START</type>
</source>
<target idref="83"/>
</item>
</sources>
<targets id="104" type="java.util.HashSet">
<item id="105" type="com.j2fe.workflow.definition.Transition">
<name id="106">ALL</name>
<source idref="83"/>
<target id="107">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="3"/>
<directJoin>false</directJoin>
<name id="108">Load Entity Ratings</name>
<nodeHandler>com.j2fe.workflow.handler.impl.CallSubWorkflow</nodeHandler>
<nodeHandlerClass id="109">com.j2fe.workflow.handler.impl.CallSubWorkflow</nodeHandlerClass>
<parameters id="110" type="java.util.HashSet">
<item id="111" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="112">["BusinessFeed"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="113">input["BusinessFeed"]</name>
<stringValue id="114">EntityBusinessFeed</stringValue>
<type>VARIABLE</type>
</item>
<item id="115" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="116">["Directory"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="117">input["Directory"]</name>
<stringValue id="118">InputDirectory</stringValue>
<type>VARIABLE</type>
</item>
<item id="119" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="120">["FileLoadEvent"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="121">input["FileLoadEvent"]</name>
<stringValue id="122">FileLoadEvent</stringValue>
<type>VARIABLE</type>
</item>
<item id="123" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="124">["IncludeFilePatternNBusinessFeed"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="125">input["IncludeFilePatternNBusinessFeed"]</name>
<stringValue id="126">true</stringValue>
<type>CONSTANT</type>
</item>
<item id="127" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="128">["LastRunInterval"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="129">input["LastRunInterval"]</name>
<stringValue id="130">24</stringValue>
<type>CONSTANT</type>
</item>
<item id="131" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="132">["MessageBulkSize"]@java/lang/Integer@</UITypeHint>
<input>true</input>
<name id="133">input["MessageBulkSize"]</name>
<stringValue id="134">BulkSize</stringValue>
<type>VARIABLE</type>
</item>
<item id="135" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="136">["MessageProcessingEvent"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="137">input["MessageProcessingEvent"]</name>
<stringValue id="138">ProcessFeedMessage</stringValue>
<type>CONSTANT</type>
</item>
<item id="139" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="140">["NrOfFilesParallel"]@java/lang/Integer@</UITypeHint>
<input>true</input>
<name id="141">input["NrOfFilesParallel"]</name>
<stringValue id="142">FilesInParallel</stringValue>
<type>VARIABLE</type>
</item>
<item id="143" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="144">["OutputDirectory"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="145">input["OutputDirectory"]</name>
<stringValue id="146">OutputDirectory</stringValue>
<type>VARIABLE</type>
</item>
<item id="147" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="148">["ParallelBranches"]@java/lang/Integer@</UITypeHint>
<input>true</input>
<name id="149">input["ParallelBranches"]</name>
<stringValue id="150">ParallelBranches</stringValue>
<type>VARIABLE</type>
</item>
<item id="151" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="152">["ParentJobID"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="153">input["ParentJobID"]</name>
<stringValue id="154">ParentJobId</stringValue>
<type>VARIABLE</type>
</item>
<item id="155" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="156">["ReProcessProcessedFiles"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="157">input["ReProcessProcessedFiles"]</name>
<stringValue id="158">Reprocessprocessedfiles</stringValue>
<type>VARIABLE</type>
</item>
<item id="159" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="160">["Recursive"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="161">input["Recursive"]</name>
<stringValue id="162">false</stringValue>
<type>CONSTANT</type>
</item>
<item id="163" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="164">["SortAscending"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="165">input["SortAscending"]</name>
<stringValue id="166">true</stringValue>
<type>CONSTANT</type>
</item>
<item id="167" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="168">["SortOrder"]@com/j2fe/feeds/activities/ListFiles$Sort@</UITypeHint>
<input>true</input>
<name id="169">input["SortOrder"]</name>
<stringValue id="170">SortOrder</stringValue>
<type>VARIABLE</type>
</item>
<item id="171" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="172">["SuccessAction"]@com/j2fe/feeds/SuccessAction@</UITypeHint>
<input>true</input>
<name id="173">input["SuccessAction"]</name>
<stringValue id="174">SuccessAction</stringValue>
<type>VARIABLE</type>
</item>
<item id="175" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="176">name</name>
<stringValue id="177">Process Files in Directory</stringValue>
<type>CONSTANT</type>
</item>
</parameters>
<sources id="178" type="java.util.HashSet">
<item idref="105" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="179" type="java.util.HashSet">
<item id="180" type="com.j2fe.workflow.definition.Transition">
<name id="181">goto-next</name>
<source idref="107"/>
<target id="182">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="3"/>
<directJoin>false</directJoin>
<name id="183">Load Security Ratings</name>
<nodeHandler>com.j2fe.workflow.handler.impl.CallSubWorkflow</nodeHandler>
<nodeHandlerClass id="184">com.j2fe.workflow.handler.impl.CallSubWorkflow</nodeHandlerClass>
<parameters id="185" type="java.util.HashSet">
<item id="186" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="187">["BusinessFeed"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="188">input["BusinessFeed"]</name>
<stringValue id="189">SecurityBusinessFeed</stringValue>
<type>VARIABLE</type>
</item>
<item id="190" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="191">["Directory"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="192">input["Directory"]</name>
<stringValue id="193">InputDirectory</stringValue>
<type>VARIABLE</type>
</item>
<item id="194" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="195">["FileLoadEvent"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="196">input["FileLoadEvent"]</name>
<stringValue id="197">FileLoadEvent</stringValue>
<type>VARIABLE</type>
</item>
<item id="198" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="199">["IncludeFilePatternNBusinessFeed"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="200">input["IncludeFilePatternNBusinessFeed"]</name>
<stringValue id="201">true</stringValue>
<type>CONSTANT</type>
</item>
<item id="202" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="203">["LastRunInterval"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="204">input["LastRunInterval"]</name>
<stringValue id="205">24</stringValue>
<type>CONSTANT</type>
</item>
<item id="206" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="207">["MessageBulkSize"]@java/lang/Integer@</UITypeHint>
<input>true</input>
<name id="208">input["MessageBulkSize"]</name>
<stringValue id="209">BulkSize</stringValue>
<type>VARIABLE</type>
</item>
<item id="210" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="211">["MessageProcessingEvent"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="212">input["MessageProcessingEvent"]</name>
<stringValue id="213">ProcessFeedMessage</stringValue>
<type>CONSTANT</type>
</item>
<item id="214" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="215">["NrOfFilesParallel"]@java/lang/Integer@</UITypeHint>
<input>true</input>
<name id="216">input["NrOfFilesParallel"]</name>
<stringValue id="217">FilesInParallel</stringValue>
<type>VARIABLE</type>
</item>
<item id="218" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="219">["OutputDirectory"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="220">input["OutputDirectory"]</name>
<stringValue id="221">OutputDirectory</stringValue>
<type>VARIABLE</type>
</item>
<item id="222" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="223">["ParallelBranches"]@java/lang/Integer@</UITypeHint>
<input>true</input>
<name id="224">input["ParallelBranches"]</name>
<stringValue id="225">ParallelBranches</stringValue>
<type>VARIABLE</type>
</item>
<item id="226" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="227">["ParentJobID"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="228">input["ParentJobID"]</name>
<stringValue id="229">ParentJobId</stringValue>
<type>VARIABLE</type>
</item>
<item id="230" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="231">["ReProcessProcessedFiles"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="232">input["ReProcessProcessedFiles"]</name>
<stringValue id="233">Reprocessprocessedfiles</stringValue>
<type>VARIABLE</type>
</item>
<item id="234" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="235">["Recursive"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="236">input["Recursive"]</name>
<stringValue id="237">false</stringValue>
<type>CONSTANT</type>
</item>
<item id="238" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="239">["SortAscending"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="240">input["SortAscending"]</name>
<stringValue id="241">true</stringValue>
<type>CONSTANT</type>
</item>
<item id="242" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="243">["SortOrder"]@com/j2fe/feeds/activities/ListFiles$Sort@</UITypeHint>
<input>true</input>
<name id="244">input["SortOrder"]</name>
<stringValue id="245">SortOrder</stringValue>
<type>VARIABLE</type>
</item>
<item id="246" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="247">["SuccessAction"]@com/j2fe/feeds/SuccessAction@</UITypeHint>
<input>true</input>
<name id="248">input["SuccessAction"]</name>
<stringValue id="249">SuccessAction</stringValue>
<type>VARIABLE</type>
</item>
<item id="250" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="251">name</name>
<stringValue id="252">Process Files in Directory</stringValue>
<type>CONSTANT</type>
</item>
</parameters>
<sources id="253" type="java.util.HashSet">
<item idref="180" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="254" type="java.util.HashSet">
<item id="255" type="com.j2fe.workflow.definition.Transition">
<name id="256">goto-next</name>
<source idref="182"/>
<target idref="2"/>
</item>
</targets>
<type>ACTIVITY</type>
</target>
</item>
</targets>
<type>ACTIVITY</type>
</target>
</item>
<item idref="81" type="com.j2fe.workflow.definition.Transition"/>
<item id="257" type="com.j2fe.workflow.definition.Transition">
<name id="258">SECURITIES</name>
<source idref="83"/>
<target id="259">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="3"/>
<directJoin>false</directJoin>
<name id="260">Muni Message Type? </name>
<nodeHandler>com.j2fe.general.activities.IsEmptyString</nodeHandler>
<nodeHandlerClass id="261">com.j2fe.general.activities.IsEmptyString</nodeHandlerClass>
<parameters id="262" type="java.util.HashSet">
<item id="263" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="264">inputString</name>
<stringValue id="265">MuniMessageType</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="266" type="java.util.HashSet">
<item idref="257" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="267" type="java.util.HashSet">
<item id="268" type="com.j2fe.workflow.definition.Transition">
<name id="269">empty</name>
<source idref="259"/>
<target id="270">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="3"/>
<directJoin>false</directJoin>
<name id="271">Load Security Ratings</name>
<nodeHandler>com.j2fe.workflow.handler.impl.CallSubWorkflow</nodeHandler>
<nodeHandlerClass id="272">com.j2fe.workflow.handler.impl.CallSubWorkflow</nodeHandlerClass>
<parameters id="273" type="java.util.HashSet">
<item id="274" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="275">["BusinessFeed"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="276">input["BusinessFeed"]</name>
<stringValue id="277">SecurityBusinessFeed</stringValue>
<type>VARIABLE</type>
</item>
<item id="278" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="279">["Directory"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="280">input["Directory"]</name>
<stringValue id="281">InputDirectory</stringValue>
<type>VARIABLE</type>
</item>
<item id="282" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="283">["FileLoadEvent"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="284">input["FileLoadEvent"]</name>
<stringValue id="285">FileLoadEvent</stringValue>
<type>VARIABLE</type>
</item>
<item id="286" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="287">["IncludeFilePatternNBusinessFeed"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="288">input["IncludeFilePatternNBusinessFeed"]</name>
<stringValue id="289">true</stringValue>
<type>CONSTANT</type>
</item>
<item id="290" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="291">["LastRunInterval"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="292">input["LastRunInterval"]</name>
<stringValue id="293">24</stringValue>
<type>CONSTANT</type>
</item>
<item id="294" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="295">["MessageBulkSize"]@java/lang/Integer@</UITypeHint>
<input>true</input>
<name id="296">input["MessageBulkSize"]</name>
<stringValue id="297">BulkSize</stringValue>
<type>VARIABLE</type>
</item>
<item id="298" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="299">["MessageProcessingEvent"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="300">input["MessageProcessingEvent"]</name>
<stringValue id="301">ProcessFeedMessage</stringValue>
<type>CONSTANT</type>
</item>
<item id="302" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="303">["NrOfFilesParallel"]@java/lang/Integer@</UITypeHint>
<input>true</input>
<name id="304">input["NrOfFilesParallel"]</name>
<stringValue id="305">FilesInParallel</stringValue>
<type>VARIABLE</type>
</item>
<item id="306" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="307">["OutputDirectory"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="308">input["OutputDirectory"]</name>
<stringValue id="309">OutputDirectory</stringValue>
<type>VARIABLE</type>
</item>
<item id="310" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="311">["ParallelBranches"]@java/lang/Integer@</UITypeHint>
<input>true</input>
<name id="312">input["ParallelBranches"]</name>
<stringValue id="313">ParallelBranches</stringValue>
<type>VARIABLE</type>
</item>
<item id="314" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="315">["ParentJobID"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="316">input["ParentJobID"]</name>
<stringValue id="317">ParentJobId</stringValue>
<type>VARIABLE</type>
</item>
<item id="318" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="319">["ReProcessProcessedFiles"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="320">input["ReProcessProcessedFiles"]</name>
<stringValue id="321">Reprocessprocessedfiles</stringValue>
<type>VARIABLE</type>
</item>
<item id="322" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="323">["Recursive"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="324">input["Recursive"]</name>
<stringValue id="325">false</stringValue>
<type>CONSTANT</type>
</item>
<item id="326" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="327">["SortAscending"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="328">input["SortAscending"]</name>
<stringValue id="329">true</stringValue>
<type>CONSTANT</type>
</item>
<item id="330" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="331">["SortOrder"]@com/j2fe/feeds/activities/ListFiles$Sort@</UITypeHint>
<input>true</input>
<name id="332">input["SortOrder"]</name>
<stringValue id="333">SortOrder</stringValue>
<type>VARIABLE</type>
</item>
<item id="334" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="335">["SuccessAction"]@com/j2fe/feeds/SuccessAction@</UITypeHint>
<input>true</input>
<name id="336">input["SuccessAction"]</name>
<stringValue id="337">SuccessAction</stringValue>
<type>VARIABLE</type>
</item>
<item id="338" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="339">name</name>
<stringValue id="340">Process Files in Directory</stringValue>
<type>CONSTANT</type>
</item>
</parameters>
<sources id="341" type="java.util.HashSet">
<item idref="268" type="com.j2fe.workflow.definition.Transition"/>
<item id="342" type="com.j2fe.workflow.definition.Transition">
<name id="343">goto-next</name>
<source id="344">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="3"/>
<directJoin>false</directJoin>
<name id="345">Load Muni Message</name>
<nodeHandler>com.j2fe.workflow.handler.impl.CallSubWorkflow</nodeHandler>
<nodeHandlerClass id="346">com.j2fe.workflow.handler.impl.CallSubWorkflow</nodeHandlerClass>
<parameters id="347" type="java.util.HashSet">
<item id="348" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="349">["BusinessFeed"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="350">input["BusinessFeed"]</name>
<stringValue id="351">SecurityBusinessFeed</stringValue>
<type>VARIABLE</type>
<variablePart idref="3"/>
</item>
<item id="352" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="353">["Directory"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="354">input["Directory"]</name>
<stringValue id="355">InputDirectory</stringValue>
<type>VARIABLE</type>
<variablePart idref="3"/>
</item>
<item id="356" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="357">["FileLoadEvent"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="358">input["FileLoadEvent"]</name>
<stringValue id="359">FileLoadEvent</stringValue>
<type>VARIABLE</type>
<variablePart idref="3"/>
</item>
<item id="360" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="361">["FilePatterns"]@[Ljava/lang/String;@</UITypeHint>
<input>true</input>
<name id="362">input["FilePatterns"]</name>
<stringValue id="363">MuniFilePatterns</stringValue>
<type>VARIABLE</type>
</item>
<item id="364" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="365">["IncludeFilePatternNBusinessFeed"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="366">input["IncludeFilePatternNBusinessFeed"]</name>
<objectValue id="367" type="java.lang.Boolean">false</objectValue>
<type>CONSTANT</type>
</item>
<item id="368" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="369">["LastRunInterval"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="370">input["LastRunInterval"]</name>
<stringValue id="371">24</stringValue>
<type>CONSTANT</type>
</item>
<item id="372" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="373">["MessageBulkSize"]@java/lang/Integer@</UITypeHint>
<input>true</input>
<name id="374">input["MessageBulkSize"]</name>
<stringValue id="375">BulkSize</stringValue>
<type>VARIABLE</type>
<variablePart idref="3"/>
</item>
<item id="376" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="377">["MessageProcessingEvent"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="378">input["MessageProcessingEvent"]</name>
<stringValue id="379">ProcessFeedMessage</stringValue>
<type>CONSTANT</type>
</item>
<item id="380" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="381">["MessageType"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="382">input["MessageType"]</name>
<stringValue id="383">MuniMessageType</stringValue>
<type>VARIABLE</type>
</item>
<item id="384" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="385">["NrOfFilesParallel"]@java/lang/Integer@</UITypeHint>
<input>true</input>
<name id="386">input["NrOfFilesParallel"]</name>
<stringValue id="387">FilesInParallel</stringValue>
<type>VARIABLE</type>
<variablePart idref="3"/>
</item>
<item id="388" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="389">["OutputDirectory"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="390">input["OutputDirectory"]</name>
<stringValue id="391">OutputDirectory</stringValue>
<type>VARIABLE</type>
<variablePart idref="3"/>
</item>
<item id="392" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="393">["ParallelBranches"]@java/lang/Integer@</UITypeHint>
<input>true</input>
<name id="394">input["ParallelBranches"]</name>
<stringValue id="395">ParallelBranches</stringValue>
<type>VARIABLE</type>
<variablePart idref="3"/>
</item>
<item id="396" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="397">["ParentJobID"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="398">input["ParentJobID"]</name>
<stringValue id="399">ParentJobId</stringValue>
<type>VARIABLE</type>
<variablePart idref="3"/>
</item>
<item id="400" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="401">["ReProcessProcessedFiles"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="402">input["ReProcessProcessedFiles"]</name>
<stringValue id="403">Reprocessprocessedfiles</stringValue>
<type>VARIABLE</type>
<variablePart idref="3"/>
</item>
<item id="404" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="405">["Recursive"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="406">input["Recursive"]</name>
<stringValue id="407">false</stringValue>
<type>CONSTANT</type>
</item>
<item id="408" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="409">["SortAscending"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="410">input["SortAscending"]</name>
<stringValue id="411">true</stringValue>
<type>CONSTANT</type>
</item>
<item id="412" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="413">["SortOrder"]@com/j2fe/feeds/activities/ListFiles$Sort@</UITypeHint>
<input>true</input>
<name id="414">input["SortOrder"]</name>
<stringValue id="415">SortOrder</stringValue>
<type>VARIABLE</type>
<variablePart idref="3"/>
</item>
<item id="416" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="417">name</name>
<stringValue id="418">Process Files in Directory</stringValue>
<type>CONSTANT</type>
</item>
</parameters>
<sources id="419" type="java.util.HashSet">
<item id="420" type="com.j2fe.workflow.definition.Transition">
<name id="421">not-empty</name>
<source idref="259"/>
<target idref="344"/>
</item>
</sources>
<targets id="422" type="java.util.HashSet">
<item idref="342" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="270"/>
</item>
</sources>
<targets id="423" type="java.util.HashSet">
<item id="424" type="com.j2fe.workflow.definition.Transition">
<name id="425">goto-next</name>
<source idref="270"/>
<target idref="2"/>
</item>
</targets>
<type>ACTIVITY</type>
</target>
</item>
<item idref="420" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>XORSPLIT</type>
</target>
</item>
</targets>
<type>XORSPLIT</type>
</source>
<target idref="9"/>
</item>
</sources>
<targets id="426" type="java.util.HashSet">
<item idref="7" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="2"/>
</item>
<item idref="255" type="com.j2fe.workflow.definition.Transition"/>
<item idref="424" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="427" type="java.util.HashSet"/>
<type>END</type>
</endNode>
<forcePurgeAtEnd>false</forcePurgeAtEnd>
<group id="428">Custom/Processing</group>
<haltOnError>false</haltOnError>
<lastChangeUser id="429">user1</lastChangeUser>
<lastUpdate id="430">2024-09-16T09:25:15.000-0400</lastUpdate>
<name id="431">SnPRatingsLoad_NuveenMuni</name>
<optimize>true</optimize>
<parameter id="432" type="java.util.HashMap">
<entry>
<key id="433" type="java.lang.String">BulkSize</key>
<value id="434" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="435">java.lang.Integer</className>
<clazz>java.lang.Integer</clazz>
<input>true</input>
<output>false</output>
<required>true</required>
</value>
</entry>
<entry>
<key id="436" type="java.lang.String">EntityBusinessFeed</key>
<value id="437" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="438">java.lang.String</className>
<clazz>java.lang.String</clazz>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="439" type="java.lang.String">FileLoadEvent</key>
<value id="440" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="441">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="442">FileLoadEvent for loading of bulk files</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="443" type="java.lang.String">FilesInParallel</key>
<value id="444" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="445">java.lang.Integer</className>
<clazz>java.lang.Integer</clazz>
<input>true</input>
<output>false</output>
<required>true</required>
</value>
</entry>
<entry>
<key id="446" type="java.lang.String">InputDirectory</key>
<value id="447" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="448">java.lang.String</className>
<clazz>java.lang.String</clazz>
<input>true</input>
<output>false</output>
<required>true</required>
</value>
</entry>
<entry>
<key id="449" type="java.lang.String">MuniFilePatterns</key>
<value id="450" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="451">[Ljava.lang.String;</className>
<clazz>[Ljava.lang.String;</clazz>
<description idref="3"/>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="452" type="java.lang.String">MuniMessageType</key>
<value id="453" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="454">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="3"/>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="455" type="java.lang.String">OutputDirectory</key>
<value id="456" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="457">java.lang.String</className>
<clazz>java.lang.String</clazz>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="458" type="java.lang.String">ParallelBranches</key>
<value id="459" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="460">java.lang.Integer</className>
<clazz>java.lang.Integer</clazz>
<input>true</input>
<output>false</output>
<required>true</required>
</value>
</entry>
<entry>
<key id="461" type="java.lang.String">ParentJobId</key>
<value id="462" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="463">java.lang.String</className>
<clazz>java.lang.String</clazz>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="464" type="java.lang.String">RatingsType</key>
<value id="465" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="466">com.j2fe.connector.RatingsType</className>
<clazz>com.j2fe.connector.RatingsType</clazz>
<input>true</input>
<output>false</output>
<required>true</required>
</value>
</entry>
<entry>
<key id="467" type="java.lang.String">Reprocessprocessedfiles</key>
<value id="468" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="469">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="470" type="java.lang.String">SecurityBusinessFeed</key>
<value id="471" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="472">java.lang.String</className>
<clazz>java.lang.String</clazz>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="473" type="java.lang.String">SortOrder</key>
<value id="474" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="475">com.j2fe.feeds.activities.ListFiles$Sort</className>
<clazz>com.j2fe.feeds.activities.ListFiles$Sort</clazz>
<description id="476">The parameter denotes order in which files need to be sorted .&#13;
Default value is set to FILESIZE where bigger file would be picked up first for loading .&#13;
Note : If Client downloads multiple dated Changes file together for processing than the parameter value  needs to be changed to TIME.</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="477" type="java.lang.String">SuccessAction</key>
<value id="478" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="479">com.j2fe.feeds.SuccessAction</className>
<clazz>com.j2fe.feeds.SuccessAction</clazz>
<input>true</input>
<output>false</output>
<required>true</required>
</value>
</entry>
</parameter>
<permissions id="480" type="java.util.HashSet"/>
<priority>50</priority>
<purgeAtEnd>false</purgeAtEnd>
<retries>0</retries>
<startNode idref="99"/>
<status>RELEASED</status>
<variables id="481" type="java.util.HashMap">
<entry>
<key id="482" type="java.lang.String">BulkSize</key>
<value id="483" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="484">java.lang.Integer</className>
<clazz>java.lang.Integer</clazz>
<persistent>false</persistent>
<value id="485" type="java.lang.Integer">500</value>
</value>
</entry>
<entry>
<key id="486" type="java.lang.String">EntityBusinessFeed</key>
<value id="487" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="488">java.lang.String</className>
<clazz>java.lang.String</clazz>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="489" type="java.lang.String">FileLoadEvent</key>
<value id="490" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="491">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="492">FileLoadEvent for loading of bulk files</description>
<persistent>false</persistent>
<value id="493" type="java.lang.String">StandardFileLoad</value>
</value>
</entry>
<entry>
<key id="494" type="java.lang.String">FilesInParallel</key>
<value id="495" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="496">java.lang.Integer</className>
<clazz>java.lang.Integer</clazz>
<persistent>false</persistent>
<value id="497" type="java.lang.Integer">5</value>
</value>
</entry>
<entry>
<key id="498" type="java.lang.String">InputDirectory</key>
<value id="499" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="500">java.lang.String</className>
<clazz>java.lang.String</clazz>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="501" type="java.lang.String">MuniFilePatterns</key>
<value id="502" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="503">[Ljava.lang.String;</className>
<clazz>[Ljava.lang.String;</clazz>
<description idref="3"/>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="504" type="java.lang.String">MuniMessageType</key>
<value id="505" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="506">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="3"/>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="507" type="java.lang.String">OutputDirectory</key>
<value id="508" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="509">java.lang.String</className>
<clazz>java.lang.String</clazz>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="510" type="java.lang.String">ParallelBranches</key>
<value id="511" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="512">java.lang.Integer</className>
<clazz>java.lang.Integer</clazz>
<persistent>false</persistent>
<value id="513" type="java.lang.Integer">2</value>
</value>
</entry>
<entry>
<key id="514" type="java.lang.String">ParentJobId</key>
<value id="515" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="516">java.lang.String</className>
<clazz>java.lang.String</clazz>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="517" type="java.lang.String">RatingsType</key>
<value id="518" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="519">com.j2fe.connector.RatingsType</className>
<clazz>com.j2fe.connector.RatingsType</clazz>
<persistent>false</persistent>
<value id="520" type="com.j2fe.connector.RatingsType">ALL</value>
</value>
</entry>
<entry>
<key id="521" type="java.lang.String">Reprocessprocessedfiles</key>
<value id="522" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="523">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<persistent>false</persistent>
<value idref="367"/>
</value>
</entry>
<entry>
<key id="524" type="java.lang.String">SecurityBusinessFeed</key>
<value id="525" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="526">java.lang.String</className>
<clazz>java.lang.String</clazz>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="527" type="java.lang.String">SortOrder</key>
<value id="528" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="529">com.j2fe.feeds.activities.ListFiles$Sort</className>
<clazz>com.j2fe.feeds.activities.ListFiles$Sort</clazz>
<description id="530">The parameter denotes order in which files need to be sorted .&#13;
Default value is set to FILESIZE where bigger file would be picked up first for loading .&#13;
Note : If Client downloads multiple dated Changes file together for processing than the parameter value  needs to be changed to TIME.</description>
<persistent>false</persistent>
<value id="531" type="com.j2fe.feeds.activities.ListFiles$Sort">FILESIZE</value>
</value>
</entry>
<entry>
<key id="532" type="java.lang.String">SuccessAction</key>
<value id="533" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="534">com.j2fe.feeds.SuccessAction</className>
<clazz>com.j2fe.feeds.SuccessAction</clazz>
<persistent>false</persistent>
<value id="535" type="com.j2fe.feeds.SuccessAction">LEAVE</value>
</value>
</entry>
</variables>
<version>1</version>
</com.j2fe.workflow.definition.Workflow>
</businessobject>
</goldensource-package>
