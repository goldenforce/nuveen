<?xml version="1.0" encoding="UTF-8" standalone="no"?>
<goldensource-package version="8.8.1.34">
<package-comment/>
<businessobject displayString="15 - 20240905-FitchIntradayDailyRefresh" type="com.j2fe.workflow.definition.Workflow">
<com.j2fe.workflow.definition.Workflow id="0">
<alwaysPersist>false</alwaysPersist>
<clustered>true</clustered>
<comment id="1">20240905-FitchIntradayDailyRefresh</comment>
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
<name id="10">Close Job </name>
<nodeHandler>com.j2fe.streetlamp.activities.CloseJob</nodeHandler>
<nodeHandlerClass id="11">com.j2fe.streetlamp.activities.CloseJob</nodeHandlerClass>
<parameters id="12" type="java.util.HashSet">
<item id="13" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="14">jobId</name>
<stringValue id="15">ParentJobID</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="16" type="java.util.HashSet">
<item id="17" type="com.j2fe.workflow.definition.Transition">
<name id="18">goto-next</name>
<source id="19">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="20">Consolidate Job </name>
<nodeHandler>com.j2fe.streetlamp.activities.ConsolidateJob</nodeHandler>
<nodeHandlerClass id="21">com.j2fe.streetlamp.activities.ConsolidateJob</nodeHandlerClass>
<parameters id="22" type="java.util.HashSet">
<item id="23" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="24">jobId</name>
<stringValue id="25">ParentJobID</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="26" type="java.util.HashSet">
<item id="27" type="com.j2fe.workflow.definition.Transition">
<name id="28">goto-next</name>
<source id="29">
<activation>TRANSACTIONAL</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="30">Call Subworkflow </name>
<nodeHandler>com.j2fe.workflow.handler.impl.CallSubWorkflow</nodeHandler>
<nodeHandlerClass id="31">com.j2fe.workflow.handler.impl.CallSubWorkflow</nodeHandlerClass>
<parameters id="32" type="java.util.HashSet">
<item id="33" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="34">["BusinessFeed"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="35">input["BusinessFeed"]</name>
<stringValue id="36">BusinessFeed</stringValue>
<type>VARIABLE</type>
</item>
<item id="37" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="38">["Directory"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="39">input["Directory"]</name>
<stringValue id="40">Directory</stringValue>
<type>VARIABLE</type>
</item>
<item id="41" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="42">["FileLoadEvent"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="43">input["FileLoadEvent"]</name>
<stringValue id="44">FileLoadEvent</stringValue>
<type>VARIABLE</type>
</item>
<item id="45" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="46">["FilePatterns"]@[Ljava/lang/String;@</UITypeHint>
<input>true</input>
<name id="47">input["FilePatterns"]</name>
<stringValue id="48">FilePatterns</stringValue>
<type>VARIABLE</type>
</item>
<item id="49" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="50">["FileSystemName"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="51">input["FileSystemName"]</name>
<stringValue id="52">local</stringValue>
<type>CONSTANT</type>
</item>
<item id="53" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="54">["FitchFileSystemType"]@com/j2fe/connector/BBFileSystemType@</UITypeHint>
<input>true</input>
<name id="55">input["FitchFileSystemType"]</name>
<objectValue id="56" type="com.j2fe.connector.BBFileSystemType">FTP</objectValue>
<type>CONSTANT</type>
</item>
<item id="57" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="58">["FullFileExtensions"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="59">input["FullFileExtensions"]</name>
<stringValue id="60">FullFileExtensions</stringValue>
<type>VARIABLE</type>
</item>
<item id="61" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="62">["IncludeFilePatternNBusinessFeed"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="63">input["IncludeFilePatternNBusinessFeed"]</name>
<stringValue id="64">IncludeFilePatternNBusinessFeed</stringValue>
<type>VARIABLE</type>
</item>
<item id="65" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="66">["LocalOutputDirectory"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="67">input["LocalOutputDirectory"]</name>
<stringValue id="68">LocalOutputDirectory</stringValue>
<type>VARIABLE</type>
</item>
<item id="69" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="70">["LocalProcessDirectory"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="71">input["LocalProcessDirectory"]</name>
<stringValue id="72">LocalProcessDirectory</stringValue>
<type>VARIABLE</type>
</item>
<item id="73" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="74">["MessageBulkSize"]@java/lang/Integer@</UITypeHint>
<input>true</input>
<name id="75">input["MessageBulkSize"]</name>
<stringValue id="76">MessageBulkSize</stringValue>
<type>VARIABLE</type>
</item>
<item id="77" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="78">["MessageProcessingEvent"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="79">input["MessageProcessingEvent"]</name>
<stringValue id="80">MessageProcessingEvent</stringValue>
<type>VARIABLE</type>
</item>
<item id="81" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="82">["NrOfFilesParallel"]@java/lang/Integer@</UITypeHint>
<input>true</input>
<name id="83">input["NrOfFilesParallel"]</name>
<stringValue id="84">NrOfFilesParallel</stringValue>
<type>VARIABLE</type>
</item>
<item id="85" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="86">["OutputDirectory"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="87">input["OutputDirectory"]</name>
<stringValue id="88">OutputDirectory</stringValue>
<type>VARIABLE</type>
</item>
<item id="89" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="90">["ParallelBranches"]@java/lang/Integer@</UITypeHint>
<input>true</input>
<name id="91">input["ParallelBranches"]</name>
<stringValue id="92">ParallelBranches</stringValue>
<type>VARIABLE</type>
</item>
<item id="93" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="94">["ReProcessProcessedFiles"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="95">input["ReProcessProcessedFiles"]</name>
<stringValue id="96">ReProcessProcessedFiles</stringValue>
<type>VARIABLE</type>
</item>
<item id="97" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="98">["RecursiveSearch"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="99">input["RecursiveSearch"]</name>
<stringValue id="100">RecursiveSearch</stringValue>
<type>VARIABLE</type>
</item>
<item id="101" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="102">["SFTPDirectory"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="103">input["SFTPDirectory"]</name>
<stringValue id="104">SFTPDirectory</stringValue>
<type>VARIABLE</type>
</item>
<item id="105" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="106">["SortAscending"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="107">input["SortAscending"]</name>
<stringValue id="108">SortAscending</stringValue>
<type>VARIABLE</type>
</item>
<item id="109" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="110">["SortOrder"]@com/j2fe/feeds/activities/ListFiles$Sort@</UITypeHint>
<input>true</input>
<name id="111">input["SortOrder"]</name>
<stringValue id="112">SortOrder</stringValue>
<type>VARIABLE</type>
</item>
<item id="113" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="114">["SuccessAction"]@com/j2fe/feeds/SuccessAction@</UITypeHint>
<input>true</input>
<name id="115">input["SuccessAction"]</name>
<stringValue id="116">SuccessAction</stringValue>
<type>VARIABLE</type>
</item>
<item id="117" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="118">["VendorDefinition"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="119">input["VendorDefinition"]</name>
<stringValue id="120">VendorDefinition</stringValue>
<type>VARIABLE</type>
</item>
<item id="121" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="122">["serverTimestampChanged"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="123">input["serverTimestampChanged"]</name>
<stringValue id="124">serverTimestampChanged</stringValue>
<type>VARIABLE</type>
</item>
<item id="125" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="126">name</name>
<stringValue id="127">Wrapper Fitch</stringValue>
<type>CONSTANT</type>
</item>
</parameters>
<sources id="128" type="java.util.HashSet">
<item id="129" type="com.j2fe.workflow.definition.Transition">
<name id="130">goto-next</name>
<source id="131">
<activation>TRANSACTIONAL</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="132">Call Subworkflow  #2</name>
<nodeHandler>com.j2fe.workflow.handler.impl.CallSubWorkflow</nodeHandler>
<nodeHandlerClass id="133">com.j2fe.workflow.handler.impl.CallSubWorkflow</nodeHandlerClass>
<parameters id="134" type="java.util.HashSet">
<item id="135" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="136">["BusinessFeed"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="137">input["BusinessFeed"]</name>
<stringValue id="138">BusinessFeed</stringValue>
<type>VARIABLE</type>
</item>
<item id="139" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="140">["FilePattern"]@[Ljava/lang/String;@</UITypeHint>
<input>true</input>
<name id="141">input["FilePattern"]</name>
<stringValue id="142">FilePatterns</stringValue>
<type>VARIABLE</type>
</item>
<item id="143" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="144">["FullFileExtensions"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="145">input["FullFileExtensions"]</name>
<stringValue id="146">FullFileExtensions</stringValue>
<type>VARIABLE</type>
</item>
<item id="147" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="148">["LocalOutputDirectory"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="149">input["LocalOutputDirectory"]</name>
<stringValue id="150">LocalOutputDirectory</stringValue>
<type>VARIABLE</type>
</item>
<item id="151" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="152">["LocalProcessDirectory"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="153">input["LocalProcessDirectory"]</name>
<stringValue id="154">LocalProcessDirectory</stringValue>
<type>VARIABLE</type>
</item>
<item id="155" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="156">["ParentJobID"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="157">input["ParentJobID"]</name>
<stringValue id="158">ParentJobID</stringValue>
<type>VARIABLE</type>
</item>
<item id="159" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="160">["SFTPDirectory"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="161">input["SFTPDirectory"]</name>
<stringValue id="162">SFTPDirectory</stringValue>
<type>VARIABLE</type>
</item>
<item id="163" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="164">["SortAscending"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="165">input["SortAscending"]</name>
<stringValue id="166">SortAscending</stringValue>
<type>VARIABLE</type>
</item>
<item id="167" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="168">["SortOrder"]@com/j2fe/feeds/activities/ListFiles$Sort@</UITypeHint>
<input>true</input>
<name id="169">input["SortOrder"]</name>
<stringValue id="170">SortOrder</stringValue>
<type>VARIABLE</type>
</item>
<item id="171" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="172">["VendorDefinition"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="173">input["VendorDefinition"]</name>
<stringValue id="174">VendorDefinition</stringValue>
<type>VARIABLE</type>
</item>
<item id="175" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="176">name</name>
<stringValue id="177">DownloadFileFromSFTP</stringValue>
<type>CONSTANT</type>
</item>
</parameters>
<sources id="178" type="java.util.HashSet">
<item id="179" type="com.j2fe.workflow.definition.Transition">
<name id="180">goto-next</name>
<source id="181">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="182">Create Parent Job ID</name>
<nodeHandler>com.j2fe.streetlamp.activities.CreateJob</nodeHandler>
<nodeHandlerClass id="183">com.j2fe.streetlamp.activities.CreateJob</nodeHandlerClass>
<parameters id="184" type="java.util.HashSet">
<item id="185" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="186">configInfo</name>
<stringValue id="187">Wrapper Fitch Custom</stringValue>
<type>CONSTANT</type>
</item>
<item id="188" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="189">jobId</name>
<stringValue id="190">ParentJobID</stringValue>
<type>VARIABLE</type>
</item>
<item id="191" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="192">parentJobId</name>
<stringValue id="193">ParentJobID</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="194" type="java.util.HashSet">
<item id="195" type="com.j2fe.workflow.definition.Transition">
<name id="196">goto-next</name>
<source id="197">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="198">Start</name>
<nodeHandler>com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandler>
<nodeHandlerClass id="199">com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandlerClass>
<sources id="200" type="java.util.HashSet"/>
<targets id="201" type="java.util.HashSet">
<item idref="195" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>START</type>
</source>
<target idref="181"/>
</item>
</sources>
<targets id="202" type="java.util.HashSet">
<item idref="179" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="131"/>
</item>
</sources>
<targets id="203" type="java.util.HashSet">
<item idref="129" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="29"/>
</item>
</sources>
<targets id="204" type="java.util.HashSet">
<item idref="27" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="19"/>
</item>
</sources>
<targets id="205" type="java.util.HashSet">
<item idref="17" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="9"/>
</item>
</sources>
<targets id="206" type="java.util.HashSet">
<item idref="7" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="3"/>
</item>
</sources>
<targets id="207" type="java.util.HashSet"/>
<type>END</type>
</endNode>
<forcePurgeAtEnd>false</forcePurgeAtEnd>
<group id="208">Custom/Nuveen_Wrapper_Fitch_Custom</group>
<haltOnError>false</haltOnError>
<lastChangeUser id="209">user1</lastChangeUser>
<lastUpdate id="210">2024-09-28T16:04:59.000+0530</lastUpdate>
<name id="211">Wrapper_Fitch_Custom</name>
<optimize>true</optimize>
<parameter id="212" type="java.util.HashMap">
<entry>
<key id="213" type="java.lang.String">BusinessFeed</key>
<value id="214" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="215">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="216">The Business Feed to be used for the file processing. Only files which belong to the feed will be picked up from the directory! Either Business Feed or the Vendor Definition must be provided.</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="217" type="java.lang.String">Directory</key>
<value id="218" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="219">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="220" type="java.lang.String">FileLoadEvent</key>
<value id="221" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="222">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="223">The Event that is called to process a file.</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="224" type="java.lang.String">FilePatterns</key>
<value id="225" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="226">[Ljava.lang.String;</className>
<clazz>[Ljava.lang.String;</clazz>
<description id="227">File patterns to look for at Fitch download directory.</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="228" type="java.lang.String">FileSystemName</key>
<value id="229" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="230">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="231" type="java.lang.String">FitchFileSystemType</key>
<value id="232" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="233">com.j2fe.connector.BBFileSystemType</className>
<clazz>com.j2fe.connector.BBFileSystemType</clazz>
<description id="234">FitchFileSystemType(FTp or SFTP)</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="235" type="java.lang.String">FullFileExtensions</key>
<value id="236" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="237">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="238" type="java.lang.String">IncludeFilePatternNBusinessFeed</key>
<value id="239" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="240">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description id="241">Whether to consider both Custom File patterns and patterns in Business Feed while listing of files.</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="242" type="java.lang.String">LocalOutputDirectory</key>
<value id="243" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="244">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<input>true</input>
<output>false</output>
<required>true</required>
</value>
</entry>
<entry>
<key id="245" type="java.lang.String">LocalProcessDirectory</key>
<value id="246" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="247">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<input>true</input>
<output>false</output>
<required>true</required>
</value>
</entry>
<entry>
<key id="248" type="java.lang.String">MessageBulkSize</key>
<value id="249" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="250">java.lang.Integer</className>
<clazz>java.lang.Integer</clazz>
<description id="251">The number of messages from a file which should be processed in parallel.</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="252" type="java.lang.String">MessageProcessingEvent</key>
<value id="253" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="254">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="255">The Event that is called to process a message.</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="256" type="java.lang.String">NrOfFilesParallel</key>
<value id="257" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="258">java.lang.Integer</className>
<clazz>java.lang.Integer</clazz>
<description id="259">The number of files that are processed in parallel, as long as they belong to the same group (see File Definitions at Business Feed).</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="260" type="java.lang.String">OutputDirectory</key>
<value id="261" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="262">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="263">Only if SuccessAction is MOVE. The files will be moved to this directory.</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="264" type="java.lang.String">ParallelBranches</key>
<value id="265" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="266">java.lang.Integer</className>
<clazz>java.lang.Integer</clazz>
<description id="267">The number of branches in parallel.</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="268" type="java.lang.String">ReProcessProcessedFiles</key>
<value id="269" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="270">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description id="271">Should already processed files be processed again?</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="272" type="java.lang.String">RecursiveSearch</key>
<value id="273" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="274">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description id="275">Should sub directories be searched?</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="276" type="java.lang.String">SFTPDirectory</key>
<value id="277" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="278">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<input>true</input>
<output>false</output>
<required>true</required>
</value>
</entry>
<entry>
<key id="279" type="java.lang.String">SortAscending</key>
<value id="280" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="281">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description id="282">Sort the files ascending or descending.</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="283" type="java.lang.String">SortOrder</key>
<value id="284" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="285">com.j2fe.feeds.activities.ListFiles$Sort</className>
<clazz>com.j2fe.feeds.activities.ListFiles$Sort</clazz>
<description id="286">Sort the files by TIME or NATURAL or FILESIZE?</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="287" type="java.lang.String">SuccessAction</key>
<value id="288" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="289">com.j2fe.feeds.SuccessAction</className>
<clazz>com.j2fe.feeds.SuccessAction</clazz>
<description id="290">What should be done with the file after processing. MOVE or LEAVE (no action) or DELETE.</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="291" type="java.lang.String">VendorDefinition</key>
<value id="292" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="293">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="294">The vendor definition (VENDOR ID) is used to find the message types and business feeds of the files in the directory. Only files which belong to the different Business Feeds will be processed. Either the vendor or the business feed has to be provided to the WF.</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="295" type="java.lang.String">serverTimestampChanged</key>
<value id="296" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="297">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description id="298">When Server Time has been modified then need to be set to true</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
</parameter>
<permissions id="299" type="java.util.HashSet"/>
<priority>50</priority>
<purgeAtEnd>true</purgeAtEnd>
<retries>0</retries>
<startNode idref="197"/>
<status>RELEASED</status>
<variables id="300" type="java.util.HashMap">
<entry>
<key id="301" type="java.lang.String">BusinessFeed</key>
<value id="302" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="303">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="304">The Business Feed to be used for the file processing. Only files which belong to the feed will be picked up from the directory! Either Business Feed or the Vendor Definition must be provided.</description>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="305" type="java.lang.String">Directory</key>
<value id="306" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="307">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="308" type="java.lang.String">FileLoadEvent</key>
<value id="309" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="310">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="311">The Event that is called to process a file.</description>
<persistent>false</persistent>
<value id="312" type="java.lang.String">StandardFileLoad</value>
</value>
</entry>
<entry>
<key id="313" type="java.lang.String">FilePatterns</key>
<value id="314" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="315">[Ljava.lang.String;</className>
<clazz>[Ljava.lang.String;</clazz>
<description id="316">File patterns to look for at Fitch download directory.</description>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="317" type="java.lang.String">FileSystemName</key>
<value id="318" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="319">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="320" type="java.lang.String">FitchFileSystemType</key>
<value id="321" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="322">com.j2fe.connector.BBFileSystemType</className>
<clazz>com.j2fe.connector.BBFileSystemType</clazz>
<description id="323">FitchFileSystemType(FTp or SFTP)</description>
<persistent>false</persistent>
<value idref="56"/>
</value>
</entry>
<entry>
<key id="324" type="java.lang.String">FullFileExtensions</key>
<value id="325" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="326">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<persistent>false</persistent>
<value id="327" type="java.lang.String">mis.zip,mir.zip</value>
</value>
</entry>
<entry>
<key id="328" type="java.lang.String">IncludeFilePatternNBusinessFeed</key>
<value id="329" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="330">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description id="331">Whether to consider both Custom File patterns and patterns in Business Feed while listing of files.</description>
<persistent>false</persistent>
<value id="332" type="java.lang.Boolean">false</value>
</value>
</entry>
<entry>
<key id="333" type="java.lang.String">LocalOutputDirectory</key>
<value id="334" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="335">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="336" type="java.lang.String">LocalProcessDirectory</key>
<value id="337" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="338">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="339" type="java.lang.String">MessageBulkSize</key>
<value id="340" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="341">java.lang.Integer</className>
<clazz>java.lang.Integer</clazz>
<description id="342">The number of messages from a file which should be processed in parallel.</description>
<persistent>false</persistent>
<value id="343" type="java.lang.Integer">500</value>
</value>
</entry>
<entry>
<key id="344" type="java.lang.String">MessageProcessingEvent</key>
<value id="345" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="346">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="347">The Event that is called to process a message.</description>
<persistent>false</persistent>
<value id="348" type="java.lang.String">ProcessFeedMessage</value>
</value>
</entry>
<entry>
<key id="349" type="java.lang.String">NrOfFilesParallel</key>
<value id="350" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="351">java.lang.Integer</className>
<clazz>java.lang.Integer</clazz>
<description id="352">The number of files that are processed in parallel, as long as they belong to the same group (see File Definitions at Business Feed).</description>
<persistent>false</persistent>
<value id="353" type="java.lang.Integer">1</value>
</value>
</entry>
<entry>
<key id="354" type="java.lang.String">OutputDirectory</key>
<value id="355" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="356">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="357">Only if SuccessAction is MOVE. The files will be moved to this directory.</description>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="358" type="java.lang.String">ParallelBranches</key>
<value id="359" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="360">java.lang.Integer</className>
<clazz>java.lang.Integer</clazz>
<description id="361">The number of branches in parallel.</description>
<persistent>false</persistent>
<value id="362" type="java.lang.Integer">2</value>
</value>
</entry>
<entry>
<key id="363" type="java.lang.String">ParentJobID</key>
<value id="364" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="365">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="366">ParentJobID</description>
<persistent>true</persistent>
</value>
</entry>
<entry>
<key id="367" type="java.lang.String">ReProcessProcessedFiles</key>
<value id="368" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="369">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description id="370">Should already processed files be processed again?</description>
<persistent>false</persistent>
<value idref="332"/>
</value>
</entry>
<entry>
<key id="371" type="java.lang.String">RecursiveSearch</key>
<value id="372" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="373">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description id="374">Should sub directories be searched?</description>
<persistent>false</persistent>
<value idref="332"/>
</value>
</entry>
<entry>
<key id="375" type="java.lang.String">SFTPDirectory</key>
<value id="376" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="377">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="378" type="java.lang.String">SortAscending</key>
<value id="379" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="380">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description id="381">Sort the files ascending or descending.</description>
<persistent>false</persistent>
<value id="382" type="java.lang.Boolean">true</value>
</value>
</entry>
<entry>
<key id="383" type="java.lang.String">SortOrder</key>
<value id="384" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="385">com.j2fe.feeds.activities.ListFiles$Sort</className>
<clazz>com.j2fe.feeds.activities.ListFiles$Sort</clazz>
<description id="386">Sort the files by TIME or NATURAL or FILESIZE?</description>
<persistent>false</persistent>
<value id="387" type="com.j2fe.feeds.activities.ListFiles$Sort">NATURAL</value>
</value>
</entry>
<entry>
<key id="388" type="java.lang.String">SuccessAction</key>
<value id="389" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="390">com.j2fe.feeds.SuccessAction</className>
<clazz>com.j2fe.feeds.SuccessAction</clazz>
<description id="391">What should be done with the file after processing. MOVE or LEAVE (no action) or DELETE.</description>
<persistent>false</persistent>
<value id="392" type="com.j2fe.feeds.SuccessAction">LEAVE</value>
</value>
</entry>
<entry>
<key id="393" type="java.lang.String">VendorDefinition</key>
<value id="394" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="395">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="396">The vendor definition (VENDOR ID) is used to find the message types and business feeds of the files in the directory. Only files which belong to the different Business Feeds will be processed. Either the vendor or the business feed has to be provided to the WF.</description>
<persistent>false</persistent>
<value id="397" type="java.lang.String">FITCH</value>
</value>
</entry>
<entry>
<key id="398" type="java.lang.String">serverTimestampChanged</key>
<value id="399" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="400">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description id="401">When Server Time has been modified then need to be set to true</description>
<persistent>false</persistent>
<value idref="332"/>
</value>
</entry>
</variables>
<version>15</version>
</com.j2fe.workflow.definition.Workflow>
</businessobject>
</goldensource-package>
