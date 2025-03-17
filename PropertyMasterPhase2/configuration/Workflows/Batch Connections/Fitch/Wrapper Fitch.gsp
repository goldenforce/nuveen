<?xml version="1.0" encoding="UTF-8" standalone="no"?>
<goldensource-package version="8.8.1.59">
<package-comment/>
<businessobject displayString="3 - 8.7.1.43:SFTP_FileSystem" type="com.j2fe.workflow.definition.Workflow">
<com.j2fe.workflow.definition.Workflow id="0">
<alwaysPersist>false</alwaysPersist>
<clustered>true</clustered>
<comment id="1">8.7.1.43:SFTP_FileSystem</comment>
<description id="2">To Create a pass the Parent Job id to the sub workflow.</description>
<endNode id="3">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description id="4"/>
<directJoin>false</directJoin>
<name id="5">Stop</name>
<nodeHandler>com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandler>
<nodeHandlerClass id="6">com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandlerClass>
<sources id="7" type="java.util.HashSet">
<item id="8" type="com.j2fe.workflow.definition.Transition">
<name id="9">goto-next</name>
<source id="10">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="4"/>
<directJoin>false</directJoin>
<name id="11">Close Job</name>
<nodeHandler>com.j2fe.streetlamp.activities.CloseJob</nodeHandler>
<nodeHandlerClass id="12">com.j2fe.streetlamp.activities.CloseJob</nodeHandlerClass>
<parameters id="13" type="java.util.HashSet">
<item id="14" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="15">jobId</name>
<stringValue id="16">ParentJobID</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="17" type="java.util.HashSet">
<item id="18" type="com.j2fe.workflow.definition.Transition">
<name id="19">goto-next</name>
<source id="20">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="4"/>
<directJoin>false</directJoin>
<name id="21">Consolidate Job</name>
<nodeHandler>com.j2fe.streetlamp.activities.ConsolidateJob</nodeHandler>
<nodeHandlerClass id="22">com.j2fe.streetlamp.activities.ConsolidateJob</nodeHandlerClass>
<parameters id="23" type="java.util.HashSet">
<item id="24" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="25">jobId</name>
<stringValue id="26">ParentJobID</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="27" type="java.util.HashSet">
<item id="28" type="com.j2fe.workflow.definition.Transition">
<name id="29">goto-next</name>
<source id="30">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="4"/>
<directJoin>false</directJoin>
<name id="31">Call Subworkflow</name>
<nodeHandler>com.j2fe.workflow.handler.impl.CallSubWorkflow</nodeHandler>
<nodeHandlerClass id="32">com.j2fe.workflow.handler.impl.CallSubWorkflow</nodeHandlerClass>
<parameters id="33" type="java.util.HashSet">
<item id="34" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="35">["BusinessFeed"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="36">input["BusinessFeed"]</name>
<stringValue id="37">BusinessFeed</stringValue>
<type>VARIABLE</type>
</item>
<item id="38" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="39">["Directory"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="40">input["Directory"]</name>
<stringValue id="41">Directory</stringValue>
<type>VARIABLE</type>
</item>
<item id="42" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="43">["FileLoadEvent"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="44">input["FileLoadEvent"]</name>
<stringValue id="45">FileLoadEvent</stringValue>
<type>VARIABLE</type>
</item>
<item id="46" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="47">["FilePatterns"]@[Ljava/lang/String;@</UITypeHint>
<input>true</input>
<name id="48">input["FilePatterns"]</name>
<stringValue id="49">FilePatterns</stringValue>
<type>VARIABLE</type>
</item>
<item id="50" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="51">["FileSystemName"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="52">input["FileSystemName"]</name>
<stringValue id="53">FileSystemName</stringValue>
<type>VARIABLE</type>
</item>
<item id="54" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="55">["FitchFileSystemType"]@com/j2fe/connector/BBFileSystemType@</UITypeHint>
<input>true</input>
<name id="56">input["FitchFileSystemType"]</name>
<stringValue id="57">FitchFileSystemType</stringValue>
<type>VARIABLE</type>
</item>
<item id="58" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="59">["IncludeFilePatternNBusinessFeed"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="60">input["IncludeFilePatternNBusinessFeed"]</name>
<stringValue id="61">IncludeFilePatternNBusinessFeed</stringValue>
<type>VARIABLE</type>
</item>
<item id="62" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="63">["MessageBulkSize"]@java/lang/Integer@</UITypeHint>
<input>true</input>
<name id="64">input["MessageBulkSize"]</name>
<stringValue id="65">MessageBulkSize</stringValue>
<type>VARIABLE</type>
</item>
<item id="66" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="67">["MessageProcessingEvent"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="68">input["MessageProcessingEvent"]</name>
<stringValue id="69">MessageProcessingEvent</stringValue>
<type>VARIABLE</type>
</item>
<item id="70" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="71">["NrOfFilesParallel"]@java/lang/Integer@</UITypeHint>
<input>true</input>
<name id="72">input["NrOfFilesParallel"]</name>
<stringValue id="73">NrOfFilesParallel</stringValue>
<type>VARIABLE</type>
</item>
<item id="74" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="75">["OutputDirectory"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="76">input["OutputDirectory"]</name>
<stringValue id="77">OutputDirectory</stringValue>
<type>VARIABLE</type>
</item>
<item id="78" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="79">["ParallelBranches"]@java/lang/Integer@</UITypeHint>
<input>true</input>
<name id="80">input["ParallelBranches"]</name>
<stringValue id="81">ParallelBranches</stringValue>
<type>VARIABLE</type>
</item>
<item id="82" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="83">["ParentJobID"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="84">input["ParentJobID"]</name>
<stringValue id="85">ParentJobID</stringValue>
<type>VARIABLE</type>
</item>
<item id="86" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="87">["ReProcessProcessedFiles"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="88">input["ReProcessProcessedFiles"]</name>
<stringValue id="89">ReProcessProcessedFiles</stringValue>
<type>VARIABLE</type>
</item>
<item id="90" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="91">["RecursiveSearch"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="92">input["RecursiveSearch"]</name>
<stringValue id="93">RecursiveSearch</stringValue>
<type>VARIABLE</type>
</item>
<item id="94" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="95">["SortAscending"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="96">input["SortAscending"]</name>
<stringValue id="97">SortAscending</stringValue>
<type>VARIABLE</type>
</item>
<item id="98" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="99">["SortOrder"]@com/j2fe/feeds/activities/ListFiles$Sort@</UITypeHint>
<input>true</input>
<name id="100">input["SortOrder"]</name>
<stringValue id="101">SortOrder</stringValue>
<type>VARIABLE</type>
</item>
<item id="102" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="103">["SuccessAction"]@com/j2fe/feeds/SuccessAction@</UITypeHint>
<input>true</input>
<name id="104">input["SuccessAction"]</name>
<stringValue id="105">SuccessAction</stringValue>
<type>VARIABLE</type>
</item>
<item id="106" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="107">["VendorDefinition"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="108">input["VendorDefinition"]</name>
<stringValue id="109">VendorDefinition</stringValue>
<type>VARIABLE</type>
</item>
<item id="110" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="111">["serverTimestampChanged"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="112">input["serverTimestampChanged"]</name>
<stringValue id="113">serverTimestampChanged</stringValue>
<type>VARIABLE</type>
</item>
<item id="114" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="115">name</name>
<stringValue id="116">Fitch</stringValue>
<type>CONSTANT</type>
</item>
</parameters>
<sources id="117" type="java.util.HashSet">
<item id="118" type="com.j2fe.workflow.definition.Transition">
<name id="119">goto-next</name>
<source id="120">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="4"/>
<directJoin>false</directJoin>
<name id="121">Create Parent Job Id</name>
<nodeHandler>com.j2fe.streetlamp.activities.CreateJob</nodeHandler>
<nodeHandlerClass id="122">com.j2fe.streetlamp.activities.CreateJob</nodeHandlerClass>
<parameters id="123" type="java.util.HashSet">
<item id="124" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="125">jobId</name>
<stringValue id="126">ParentJobID</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="127" type="java.util.HashSet">
<item id="128" type="com.j2fe.workflow.definition.Transition">
<name id="129">goto-next</name>
<source id="130">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="4"/>
<directJoin>false</directJoin>
<name id="131">Start</name>
<nodeHandler>com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandler>
<nodeHandlerClass id="132">com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandlerClass>
<sources id="133" type="java.util.HashSet"/>
<targets id="134" type="java.util.HashSet">
<item idref="128" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>START</type>
</source>
<target idref="120"/>
</item>
</sources>
<targets id="135" type="java.util.HashSet">
<item idref="118" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="30"/>
</item>
</sources>
<targets id="136" type="java.util.HashSet">
<item idref="28" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="20"/>
</item>
</sources>
<targets id="137" type="java.util.HashSet">
<item idref="18" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="10"/>
</item>
</sources>
<targets id="138" type="java.util.HashSet">
<item idref="8" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="3"/>
</item>
</sources>
<targets id="139" type="java.util.HashSet"/>
<type>END</type>
</endNode>
<forcePurgeAtEnd>false</forcePurgeAtEnd>
<group id="140">Batch Connections/Fitch</group>
<haltOnError>false</haltOnError>
<lastChangeUser id="141">user1</lastChangeUser>
<lastUpdate id="142">2024-04-16T12:20:34.000-0400</lastUpdate>
<name id="143">Wrapper Fitch</name>
<optimize>true</optimize>
<parameter id="144" type="java.util.HashMap">
<entry>
<key id="145" type="java.lang.String">BusinessFeed</key>
<value id="146" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="147">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="148">The Business Feed to be used for the file processing. Only files which belong to the feed will be picked up from the directory! Either Business Feed or the Vendor Definition must be provided.</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="149" type="java.lang.String">Directory</key>
<value id="150" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="151">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="152">Directory from Fitch server.</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="153" type="java.lang.String">FileLoadEvent</key>
<value id="154" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="155">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="156">The Event that is called to process a file.</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="157" type="java.lang.String">FilePatterns</key>
<value id="158" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="159">[Ljava.lang.String;</className>
<clazz>[Ljava.lang.String;</clazz>
<description id="160">File patterns to look for at Fitch download directory.</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="161" type="java.lang.String">FileSystemName</key>
<value id="162" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="163">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="4"/>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="164" type="java.lang.String">FitchFileSystemType</key>
<value id="165" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="166">com.j2fe.connector.BBFileSystemType</className>
<clazz>com.j2fe.connector.BBFileSystemType</clazz>
<description id="167">FitchFileSystemType(FTp or SFTP)</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="168" type="java.lang.String">IncludeFilePatternNBusinessFeed</key>
<value id="169" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="170">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description id="171">Whether to consider both Custom File patterns and patterns in Business Feed while listing of files.</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="172" type="java.lang.String">MessageBulkSize</key>
<value id="173" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="174">java.lang.Integer</className>
<clazz>java.lang.Integer</clazz>
<description id="175">The number of messages from a file which should be processed in parallel.</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="176" type="java.lang.String">MessageProcessingEvent</key>
<value id="177" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="178">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="179">The Event that is called to process a message.</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="180" type="java.lang.String">NrOfFilesParallel</key>
<value id="181" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="182">java.lang.Integer</className>
<clazz>java.lang.Integer</clazz>
<description id="183">The number of files that are processed in parallel, as long as they belong to the same group (see File Definitions at Business Feed).</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="184" type="java.lang.String">OutputDirectory</key>
<value id="185" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="186">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="187">Only if SuccessAction is MOVE. The files will be moved to this directory.</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="188" type="java.lang.String">ParallelBranches</key>
<value id="189" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="190">java.lang.Integer</className>
<clazz>java.lang.Integer</clazz>
<description id="191">The number of branches in parallel.</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="192" type="java.lang.String">ReProcessProcessedFiles</key>
<value id="193" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="194">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description id="195">Should already processed files be processed again?</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="196" type="java.lang.String">RecursiveSearch</key>
<value id="197" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="198">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description id="199">Should sub directories be searched?</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="200" type="java.lang.String">SortAscending</key>
<value id="201" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="202">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description id="203">Sort the files ascending or descending.</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="204" type="java.lang.String">SortOrder</key>
<value id="205" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="206">com.j2fe.feeds.activities.ListFiles$Sort</className>
<clazz>com.j2fe.feeds.activities.ListFiles$Sort</clazz>
<description id="207">Sort the files by TIME or NATURAL or FILESIZE?</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="208" type="java.lang.String">SuccessAction</key>
<value id="209" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="210">com.j2fe.feeds.SuccessAction</className>
<clazz>com.j2fe.feeds.SuccessAction</clazz>
<description id="211">What should be done with the file after processing. MOVE or LEAVE (no action) or DELETE.</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="212" type="java.lang.String">VendorDefinition</key>
<value id="213" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="214">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="215">The vendor definition (VENDOR ID) is used to find the message types and business feeds of the files in the directory. Only files which belong to the different Business Feeds will be processed. Either the vendor or the business feed has to be provided to the WF.</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="216" type="java.lang.String">serverTimestampChanged</key>
<value id="217" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="218">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description id="219">When Server Time has been modified then need to be set to true</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
</parameter>
<permissions id="220" type="java.util.HashSet"/>
<priority>50</priority>
<purgeAtEnd>false</purgeAtEnd>
<retries>0</retries>
<startNode idref="130"/>
<status>RELEASED</status>
<variables id="221" type="java.util.HashMap">
<entry>
<key id="222" type="java.lang.String">BusinessFeed</key>
<value id="223" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="224">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="225">The Business Feed to be used for the file processing. Only files which belong to the feed will be picked up from the directory! Either Business Feed or the Vendor Definition must be provided.</description>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="226" type="java.lang.String">Directory</key>
<value id="227" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="228">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="229">Directory from Fitch server.</description>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="230" type="java.lang.String">FileLoadEvent</key>
<value id="231" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="232">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="233">The Event that is called to process a file.</description>
<persistent>false</persistent>
<value id="234" type="java.lang.String">StandardFileLoad</value>
</value>
</entry>
<entry>
<key id="235" type="java.lang.String">FilePatterns</key>
<value id="236" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="237">[Ljava.lang.String;</className>
<clazz>[Ljava.lang.String;</clazz>
<description id="238">File patterns to look for at Fitch download directory.</description>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="239" type="java.lang.String">FileSystemName</key>
<value id="240" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="241">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="4"/>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="242" type="java.lang.String">FitchFileSystemType</key>
<value id="243" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="244">com.j2fe.connector.BBFileSystemType</className>
<clazz>com.j2fe.connector.BBFileSystemType</clazz>
<description id="245">FitchFileSystemType(FTp or SFTP)</description>
<persistent>false</persistent>
<value id="246" type="com.j2fe.connector.BBFileSystemType">FTP</value>
</value>
</entry>
<entry>
<key id="247" type="java.lang.String">IncludeFilePatternNBusinessFeed</key>
<value id="248" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="249">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description id="250">Whether to consider both Custom File patterns and patterns in Business Feed while listing of files.</description>
<persistent>false</persistent>
<value id="251" type="java.lang.Boolean">false</value>
</value>
</entry>
<entry>
<key id="252" type="java.lang.String">MessageBulkSize</key>
<value id="253" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="254">java.lang.Integer</className>
<clazz>java.lang.Integer</clazz>
<description id="255">The number of messages from a file which should be processed in parallel.</description>
<persistent>false</persistent>
<value id="256" type="java.lang.Integer">500</value>
</value>
</entry>
<entry>
<key id="257" type="java.lang.String">MessageProcessingEvent</key>
<value id="258" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="259">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="260">The Event that is called to process a message.</description>
<persistent>false</persistent>
<value id="261" type="java.lang.String">ProcessFeedMessage</value>
</value>
</entry>
<entry>
<key id="262" type="java.lang.String">NrOfFilesParallel</key>
<value id="263" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="264">java.lang.Integer</className>
<clazz>java.lang.Integer</clazz>
<description id="265">The number of files that are processed in parallel, as long as they belong to the same group (see File Definitions at Business Feed).</description>
<persistent>false</persistent>
<value id="266" type="java.lang.Integer">2</value>
</value>
</entry>
<entry>
<key id="267" type="java.lang.String">OutputDirectory</key>
<value id="268" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="269">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="270">Only if SuccessAction is MOVE. The files will be moved to this directory.</description>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="271" type="java.lang.String">ParallelBranches</key>
<value id="272" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="273">java.lang.Integer</className>
<clazz>java.lang.Integer</clazz>
<description id="274">The number of branches in parallel.</description>
<persistent>false</persistent>
<value idref="266"/>
</value>
</entry>
<entry>
<key id="275" type="java.lang.String">ParentJobID</key>
<value id="276" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="277">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="278">ParentJobID</description>
<persistent>true</persistent>
</value>
</entry>
<entry>
<key id="279" type="java.lang.String">ReProcessProcessedFiles</key>
<value id="280" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="281">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description id="282">Should already processed files be processed again?</description>
<persistent>false</persistent>
<value idref="251"/>
</value>
</entry>
<entry>
<key id="283" type="java.lang.String">RecursiveSearch</key>
<value id="284" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="285">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description id="286">Should sub directories be searched?</description>
<persistent>false</persistent>
<value idref="251"/>
</value>
</entry>
<entry>
<key id="287" type="java.lang.String">SortAscending</key>
<value id="288" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="289">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description id="290">Sort the files ascending or descending.</description>
<persistent>false</persistent>
<value id="291" type="java.lang.Boolean">true</value>
</value>
</entry>
<entry>
<key id="292" type="java.lang.String">SortOrder</key>
<value id="293" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="294">com.j2fe.feeds.activities.ListFiles$Sort</className>
<clazz>com.j2fe.feeds.activities.ListFiles$Sort</clazz>
<description id="295">Sort the files by TIME or NATURAL or FILESIZE?</description>
<persistent>false</persistent>
<value id="296" type="com.j2fe.feeds.activities.ListFiles$Sort">NATURAL</value>
</value>
</entry>
<entry>
<key id="297" type="java.lang.String">SuccessAction</key>
<value id="298" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="299">com.j2fe.feeds.SuccessAction</className>
<clazz>com.j2fe.feeds.SuccessAction</clazz>
<description id="300">What should be done with the file after processing. MOVE or LEAVE (no action) or DELETE.</description>
<persistent>false</persistent>
<value id="301" type="com.j2fe.feeds.SuccessAction">LEAVE</value>
</value>
</entry>
<entry>
<key id="302" type="java.lang.String">VendorDefinition</key>
<value id="303" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="304">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="305">The vendor definition (VENDOR ID) is used to find the message types and business feeds of the files in the directory. Only files which belong to the different Business Feeds will be processed. Either the vendor or the business feed has to be provided to the WF.</description>
<persistent>false</persistent>
<value id="306" type="java.lang.String">FITCH</value>
</value>
</entry>
<entry>
<key id="307" type="java.lang.String">serverTimestampChanged</key>
<value id="308" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="309">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description id="310">When Server Time has been modified then need to be set to true</description>
<persistent>false</persistent>
<value idref="251"/>
</value>
</entry>
</variables>
<version>3</version>
</com.j2fe.workflow.definition.Workflow>
</businessobject>
</goldensource-package>
