<?xml version="1.0" encoding="UTF-8" standalone="no"?>
<goldensource-package version="8.8.1.59">
<package-comment/>
<businessobject displayString="2 - 20240809-Eagle_Muni_Load" type="com.j2fe.workflow.definition.Workflow">
<com.j2fe.workflow.definition.Workflow id="0">
<alwaysPersist>false</alwaysPersist>
<clustered>true</clustered>
<comment id="1">20240809-Eagle_Muni_Load</comment>
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
<name id="10">Close Parent Job </name>
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
<activation>TRANSACTIONAL</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="20">Process Files in Directory</name>
<nodeHandler>com.j2fe.workflow.handler.impl.CallSubWorkflow</nodeHandler>
<nodeHandlerClass id="21">com.j2fe.workflow.handler.impl.CallSubWorkflow</nodeHandlerClass>
<parameters id="22" type="java.util.HashSet">
<item id="23" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="24">["BusinessFeed"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="25">input["BusinessFeed"]</name>
<stringValue id="26">BusinessFeed</stringValue>
<type>VARIABLE</type>
</item>
<item id="27" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="28">["Directory"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="29">input["Directory"]</name>
<stringValue id="30">DownloadDirectory</stringValue>
<type>VARIABLE</type>
</item>
<item id="31" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="32">["FileLoadEvent"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="33">input["FileLoadEvent"]</name>
<stringValue id="34">FileLoadEvent</stringValue>
<type>VARIABLE</type>
</item>
<item id="35" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="36">["FilePatterns"]@[Ljava/lang/String;@</UITypeHint>
<input>true</input>
<name id="37">input["FilePatterns"]</name>
<stringValue id="38">FilePatterns</stringValue>
<type>VARIABLE</type>
</item>
<item id="39" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="40">["IncludeFilePatternNBusinessFeed"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="41">input["IncludeFilePatternNBusinessFeed"]</name>
<stringValue id="42">IncludeFilePatternNBusinessFeed</stringValue>
<type>VARIABLE</type>
</item>
<item id="43" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="44">["LastRunInterval"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="45">input["LastRunInterval"]</name>
<stringValue id="46">LastRunInterval</stringValue>
<type>VARIABLE</type>
</item>
<item id="47" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="48">["MessageBulkSize"]@java/lang/Integer@</UITypeHint>
<input>true</input>
<name id="49">input["MessageBulkSize"]</name>
<stringValue id="50">MessageBulkSize</stringValue>
<type>VARIABLE</type>
</item>
<item id="51" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="52">["MessageProcessingEvent"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="53">input["MessageProcessingEvent"]</name>
<stringValue id="54">MessageProcessingEvent</stringValue>
<type>VARIABLE</type>
</item>
<item id="55" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="56">["MessageType"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="57">input["MessageType"]</name>
<stringValue id="58">MessageType</stringValue>
<type>VARIABLE</type>
</item>
<item id="59" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="60">["NrOfFilesParallel"]@java/lang/Integer@</UITypeHint>
<input>true</input>
<name id="61">input["NrOfFilesParallel"]</name>
<stringValue id="62">NrOfFilesParallel</stringValue>
<type>VARIABLE</type>
</item>
<item id="63" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="64">["OutputDirectory"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="65">input["OutputDirectory"]</name>
<stringValue id="66">OutputDirectory</stringValue>
<type>VARIABLE</type>
</item>
<item id="67" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="68">["ParallelBranches"]@java/lang/Integer@</UITypeHint>
<input>true</input>
<name id="69">input["ParallelBranches"]</name>
<stringValue id="70">ParallelBranches</stringValue>
<type>VARIABLE</type>
</item>
<item id="71" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="72">["ParentJobID"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="73">input["ParentJobID"]</name>
<stringValue id="74">ParentJobID</stringValue>
<type>VARIABLE</type>
</item>
<item id="75" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="76">["PrimaryGCEngine"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="77">input["PrimaryGCEngine"]</name>
<stringValue id="78">PrimaryGCEngine</stringValue>
<type>VARIABLE</type>
</item>
<item id="79" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="80">["PrimaryVDDBEngine"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="81">input["PrimaryVDDBEngine"]</name>
<stringValue id="82">PrimaryVDDBEngine</stringValue>
<type>VARIABLE</type>
</item>
<item id="83" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="84">["ReProcessProcessedFiles"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="85">input["ReProcessProcessedFiles"]</name>
<stringValue id="86">ReProcessProcessedFiles</stringValue>
<type>VARIABLE</type>
</item>
<item id="87" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="88">["SortAscending"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="89">input["SortAscending"]</name>
<stringValue id="90">SortAscending</stringValue>
<type>VARIABLE</type>
</item>
<item id="91" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="92">["SortOrder"]@com/j2fe/feeds/activities/ListFiles$Sort@</UITypeHint>
<input>true</input>
<name id="93">input["SortOrder"]</name>
<stringValue id="94">SortOrder</stringValue>
<type>VARIABLE</type>
</item>
<item id="95" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="96">["SortedFileDirectory"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="97">input["SortedFileDirectory"]</name>
<stringValue id="98">SortedFileDirectory</stringValue>
<type>VARIABLE</type>
</item>
<item id="99" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="100">["SuccessAction"]@com/j2fe/feeds/SuccessAction@</UITypeHint>
<input>true</input>
<name id="101">input["SuccessAction"]</name>
<stringValue id="102">SuccessAction</stringValue>
<type>VARIABLE</type>
</item>
<item id="103" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="104">["VendorDefinition"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="105">input["VendorDefinition"]</name>
<stringValue id="106">VendorDefinition</stringValue>
<type>VARIABLE</type>
</item>
<item id="107" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="108">["serverTimestampChanged"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="109">input["serverTimestampChanged"]</name>
<stringValue id="110">serverTimestampChanged</stringValue>
<type>VARIABLE</type>
</item>
<item id="111" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="112">name</name>
<stringValue id="113">Process Files in Directory</stringValue>
<type>CONSTANT</type>
</item>
</parameters>
<sources id="114" type="java.util.HashSet">
<item id="115" type="com.j2fe.workflow.definition.Transition">
<name id="116">goto-next</name>
<source id="117">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="118">File Transfer</name>
<nodeHandler>com.j2fe.workflow.handler.impl.CallSubWorkflow</nodeHandler>
<nodeHandlerClass id="119">com.j2fe.workflow.handler.impl.CallSubWorkflow</nodeHandlerClass>
<parameters id="120" type="java.util.HashSet">
<item id="121" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="122">["ArchiveInClientDir"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="123">input["ArchiveInClientDir"]</name>
<stringValue id="124">ArchiveInClientDir</stringValue>
<type>VARIABLE</type>
</item>
<item id="125" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="126">["BusinessFeed"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="127">input["BusinessFeed"]</name>
<stringValue id="128">BusinessFeed</stringValue>
<type>VARIABLE</type>
</item>
<item id="129" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="130">["ClientArchiveDirectory"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="131">input["ClientArchiveDirectory"]</name>
<stringValue id="132">ClientArchiveDirectory</stringValue>
<type>VARIABLE</type>
</item>
<item id="133" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="134">["SourceFileDirectory"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="135">input["SourceFileDirectory"]</name>
<stringValue id="136">SourceFileDirectory</stringValue>
<type>VARIABLE</type>
</item>
<item id="137" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="138">["SourceFileSystem"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="139">input["SourceFileSystem"]</name>
<stringValue id="140">SourceFileSystem</stringValue>
<type>VARIABLE</type>
</item>
<item id="141" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="142">["TargetFileDirectory"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="143">input["TargetFileDirectory"]</name>
<stringValue id="144">TargetFileDirectory</stringValue>
<type>VARIABLE</type>
</item>
<item id="145" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="146">["TargetFileSystem"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="147">input["TargetFileSystem"]</name>
<stringValue id="148">TargetFileSystem</stringValue>
<type>VARIABLE</type>
</item>
<item id="149" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="150">name</name>
<stringValue id="151">Nuveen_FileTransfers</stringValue>
<type>CONSTANT</type>
</item>
</parameters>
<sources id="152" type="java.util.HashSet">
<item id="153" type="com.j2fe.workflow.definition.Transition">
<name id="154">FTP</name>
<source id="155">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="156">Get Files from?</name>
<nodeHandler>com.j2fe.workflow.handler.impl.SwitchCaseSplit</nodeHandler>
<nodeHandlerClass id="157">com.j2fe.workflow.handler.impl.SwitchCaseSplit</nodeHandlerClass>
<parameters id="158" type="java.util.HashSet">
<item id="159" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="160">caseItem</name>
<stringValue id="161">GetFilesFrom</stringValue>
<type>VARIABLE</type>
</item>
<item id="162" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="163">defaultItem</name>
<stringValue id="164">S3</stringValue>
<type>CONSTANT</type>
</item>
<item id="165" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="166">nullTransition</name>
<stringValue id="167">S3</stringValue>
<type>CONSTANT</type>
</item>
</parameters>
<sources id="168" type="java.util.HashSet">
<item id="169" type="com.j2fe.workflow.definition.Transition">
<name id="170">goto-next</name>
<source id="171">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="172">Create Parent Job </name>
<nodeHandler>com.j2fe.streetlamp.activities.CreateJob</nodeHandler>
<nodeHandlerClass id="173">com.j2fe.streetlamp.activities.CreateJob</nodeHandlerClass>
<parameters id="174" type="java.util.HashSet">
<item id="175" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="176">configInfo</name>
<stringValue id="177">JobConfigText</stringValue>
<type>VARIABLE</type>
</item>
<item id="178" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="179">jobId</name>
<stringValue id="180">ParentJobID</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
</parameters>
<persistentVariables id="181" type="java.util.HashSet">
<item id="182" type="java.lang.String">ParentJobID
1000</item>
</persistentVariables>
<sources id="183" type="java.util.HashSet">
<item id="184" type="com.j2fe.workflow.definition.Transition">
<name id="185">goto-next</name>
<source id="186">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="187">Start</name>
<nodeHandler>com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandler>
<nodeHandlerClass id="188">com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandlerClass>
<sources id="189" type="java.util.HashSet"/>
<targets id="190" type="java.util.HashSet">
<item idref="184" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>START</type>
</source>
<target idref="171"/>
</item>
</sources>
<targets id="191" type="java.util.HashSet">
<item idref="169" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="155"/>
</item>
</sources>
<targets id="192" type="java.util.HashSet">
<item idref="153" type="com.j2fe.workflow.definition.Transition"/>
<item id="193" type="com.j2fe.workflow.definition.Transition">
<name id="194">S3</name>
<source idref="155"/>
<target id="195">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="196">get System Properties</name>
<nodeHandler>com.j2fe.general.activities.BeanShellScript</nodeHandler>
<nodeHandlerClass id="197">com.j2fe.general.activities.BeanShellScript</nodeHandlerClass>
<parameters id="198" type="java.util.HashSet">
<item id="199" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="200">statements</name>
<stringValue id="201">import java.text.*;

String o_s3BucketName = System.getProperty(i_s3BucketName);
String o_s3Prefix = System.getProperty(i_s3Prefix);
String o_s3Region = System.getProperty(i_s3Region);
</stringValue>
<type>CONSTANT</type>
</item>
<item id="202" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="203">["i_s3BucketName"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="204">variables["i_s3BucketName"]</name>
<stringValue id="205">s3BucketName</stringValue>
<type>VARIABLE</type>
</item>
<item id="206" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="207">variables["i_s3Prefix"]</name>
<stringValue id="208">s3KeyPrefix</stringValue>
<type>VARIABLE</type>
</item>
<item id="209" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="210">variables["i_s3Region"]</name>
<stringValue id="211">s3BucketRegion</stringValue>
<type>VARIABLE</type>
</item>
<item id="212" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="213">["o_s3BucketName"]@java/lang/String@</UITypeHint>
<input>false</input>
<name id="214">variables["o_s3BucketName"]</name>
<stringValue id="215">s3BucketName</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="216" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="217">["o_s3Prefix"]@java/lang/String@</UITypeHint>
<input>false</input>
<name id="218">variables["o_s3Prefix"]</name>
<stringValue id="219">s3KeyPrefix</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="220" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="221">["o_s3Region"]@java/lang/String@</UITypeHint>
<input>false</input>
<name id="222">variables["o_s3Region"]</name>
<stringValue id="223">s3BucketRegion</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
</parameters>
<sources id="224" type="java.util.HashSet">
<item idref="193" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="225" type="java.util.HashSet">
<item id="226" type="com.j2fe.workflow.definition.Transition">
<name id="227">goto-next</name>
<source idref="195"/>
<target id="228">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="229">S3FileListAndDownload</name>
<nodeHandler>com.j2fe.workflow.handler.impl.CallSubWorkflow</nodeHandler>
<nodeHandlerClass id="230">com.j2fe.workflow.handler.impl.CallSubWorkflow</nodeHandlerClass>
<parameters id="231" type="java.util.HashSet">
<item id="232" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="233">["BucketRegion"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="234">input["BucketRegion"]</name>
<stringValue id="235">s3BucketRegion</stringValue>
<type>VARIABLE</type>
</item>
<item id="236" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="237">["DownloadDirectory"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="238">input["DownloadDirectory"]</name>
<stringValue id="239">DownloadDirectory</stringValue>
<type>VARIABLE</type>
</item>
<item id="240" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="241">["FetchNewFilesOnly"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="242">input["FetchNewFilesOnly"]</name>
<stringValue id="243">FetchNewFilesOnly</stringValue>
<type>VARIABLE</type>
</item>
<item id="244" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="245">["FilePatterns"]@[Ljava/lang/String;@</UITypeHint>
<input>true</input>
<name id="246">input["FilePatterns"]</name>
<stringValue id="247">FilePatterns</stringValue>
<type>VARIABLE</type>
</item>
<item id="248" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="249">["KeyPrefix"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="250">input["KeyPrefix"]</name>
<stringValue id="251">s3KeyPrefix</stringValue>
<type>VARIABLE</type>
</item>
<item id="252" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="253">["ListAfter"]@java/util/Date@</UITypeHint>
<input>true</input>
<name id="254">input["ListAfter"]</name>
<stringValue id="255">ListAfter</stringValue>
<type>VARIABLE</type>
</item>
<item id="256" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="257">["S3BucketName"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="258">input["S3BucketName"]</name>
<stringValue id="259">s3BucketName</stringValue>
<type>VARIABLE</type>
</item>
<item id="260" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="261">name</name>
<stringValue id="262">S3FileListAndDownload</stringValue>
<type>CONSTANT</type>
</item>
</parameters>
<sources id="263" type="java.util.HashSet">
<item idref="226" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="264" type="java.util.HashSet">
<item id="265" type="com.j2fe.workflow.definition.Transition">
<name id="266">goto-next</name>
<source idref="228"/>
<target idref="19"/>
</item>
</targets>
<type>ACTIVITY</type>
</target>
</item>
</targets>
<type>ACTIVITY</type>
</target>
</item>
</targets>
<type>XORSPLIT</type>
</source>
<target idref="117"/>
</item>
</sources>
<targets id="267" type="java.util.HashSet">
<item idref="115" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="19"/>
</item>
<item idref="265" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="268" type="java.util.HashSet">
<item idref="17" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="9"/>
</item>
</sources>
<targets id="269" type="java.util.HashSet">
<item idref="7" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="3"/>
</item>
</sources>
<targets id="270" type="java.util.HashSet"/>
<type>END</type>
</endNode>
<forcePurgeAtEnd>false</forcePurgeAtEnd>
<group id="271">Custom/Processing</group>
<haltOnError>false</haltOnError>
<lastChangeUser id="272">user1</lastChangeUser>
<lastUpdate id="273">2024-08-10T11:35:16.000-0400</lastUpdate>
<name id="274">Nuveen_Muni_PFD_Wrapper</name>
<optimize>true</optimize>
<parameter id="275" type="java.util.HashMap">
<entry>
<key id="276" type="java.lang.String">ArchiveInClientDir</key>
<value id="277" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="278">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description idref="2"/>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="279" type="java.lang.String">BusinessFeed</key>
<value id="280" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="281">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="282" type="java.lang.String">ClientArchiveDirectory</key>
<value id="283" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="284">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="285" type="java.lang.String">DeleteLocalCopy</key>
<value id="286" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="287">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description idref="2"/>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="288" type="java.lang.String">DownloadDirectory</key>
<value id="289" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="290">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="291" type="java.lang.String">FetchNewFilesOnly</key>
<value id="292" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="293">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description idref="2"/>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="294" type="java.lang.String">FileLoadEvent</key>
<value id="295" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="296">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="297" type="java.lang.String">FilePatterns</key>
<value id="298" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="299">[Ljava.lang.String;</className>
<clazz>[Ljava.lang.String;</clazz>
<description idref="2"/>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="300" type="java.lang.String">GetFilesFrom</key>
<value id="301" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="302">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="303" type="java.lang.String">IncludeFilePatternNBusinessFeed</key>
<value id="304" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="305">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description idref="2"/>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="306" type="java.lang.String">JobConfigText</key>
<value id="307" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="308">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="309" type="java.lang.String">LastRunInterval</key>
<value id="310" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="311">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="312" type="java.lang.String">ListAfter</key>
<value id="313" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="314">java.util.Date</className>
<clazz>java.util.Date</clazz>
<description idref="2"/>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="315" type="java.lang.String">MessageBulkSize</key>
<value id="316" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="317">java.lang.Integer</className>
<clazz>java.lang.Integer</clazz>
<description idref="2"/>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="318" type="java.lang.String">MessageProcessingEvent</key>
<value id="319" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="320">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="321" type="java.lang.String">MessageType</key>
<value id="322" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="323">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="324" type="java.lang.String">NrOfFilesParallel</key>
<value id="325" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="326">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="327" type="java.lang.String">OutputDirectory</key>
<value id="328" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="329">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="330" type="java.lang.String">ParallelBranches</key>
<value id="331" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="332">java.lang.Integer</className>
<clazz>java.lang.Integer</clazz>
<description idref="2"/>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="333" type="java.lang.String">PrimaryGCEngine</key>
<value id="334" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="335">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="336" type="java.lang.String">PrimaryVDDBEngine</key>
<value id="337" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="338">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="339" type="java.lang.String">ReProcessProcessedFiles</key>
<value id="340" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="341">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description idref="2"/>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="342" type="java.lang.String">SortAscending</key>
<value id="343" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="344">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="345" type="java.lang.String">SortOrder</key>
<value id="346" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="347">com.j2fe.feeds.activities.ListFiles$Sort</className>
<clazz>com.j2fe.feeds.activities.ListFiles$Sort</clazz>
<description idref="2"/>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="348" type="java.lang.String">SortedFileDirectory</key>
<value id="349" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="350">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="351" type="java.lang.String">SourceFileDirectory</key>
<value id="352" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="353">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="354" type="java.lang.String">SourceFileSystem</key>
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
<key id="357" type="java.lang.String">SuccessAction</key>
<value id="358" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="359">com.j2fe.feeds.SuccessAction</className>
<clazz>com.j2fe.feeds.SuccessAction</clazz>
<description idref="2"/>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="360" type="java.lang.String">TargetFileDirectory</key>
<value id="361" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="362">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="363" type="java.lang.String">TargetFileSystem</key>
<value id="364" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="365">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="366" type="java.lang.String">VendorDefinition</key>
<value id="367" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="368">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="369" type="java.lang.String">s3BucketName</key>
<value id="370" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="371">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="372" type="java.lang.String">s3BucketRegion</key>
<value id="373" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="374">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="375" type="java.lang.String">s3BucketToPlaceTriggerFile</key>
<value id="376" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="377">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="378" type="java.lang.String">s3KeyPrefix</key>
<value id="379" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="380">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="381" type="java.lang.String">s3TriggerPrefix</key>
<value id="382" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="383">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="384" type="java.lang.String">serverTimestampChanged</key>
<value id="385" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="386">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description idref="2"/>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
</parameter>
<permissions id="387" type="java.util.HashSet"/>
<priority>50</priority>
<purgeAtEnd>false</purgeAtEnd>
<retries>0</retries>
<startNode idref="186"/>
<status>RELEASED</status>
<variables id="388" type="java.util.HashMap">
<entry>
<key id="389" type="java.lang.String">ArchiveInClientDir</key>
<value id="390" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="391">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description idref="2"/>
<persistent>false</persistent>
<value id="392" type="java.lang.Boolean">false</value>
</value>
</entry>
<entry>
<key id="393" type="java.lang.String">BusinessFeed</key>
<value id="394" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="395">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="396" type="java.lang.String">ClientArchiveDirectory</key>
<value id="397" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="398">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="399" type="java.lang.String">DeleteLocalCopy</key>
<value id="400" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="401">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description idref="2"/>
<persistent>false</persistent>
<value id="402" type="java.lang.Boolean">true</value>
</value>
</entry>
<entry>
<key id="403" type="java.lang.String">DownloadDirectory</key>
<value id="404" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="405">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="406" type="java.lang.String">FetchNewFilesOnly</key>
<value id="407" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="408">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description idref="2"/>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="409" type="java.lang.String">FileLoadEvent</key>
<value id="410" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="411">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<persistent>false</persistent>
<value id="412" type="java.lang.String">StandardFileLoad</value>
</value>
</entry>
<entry>
<key id="413" type="java.lang.String">FilePatterns</key>
<value id="414" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="415">[Ljava.lang.String;</className>
<clazz>[Ljava.lang.String;</clazz>
<description idref="2"/>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="416" type="java.lang.String">GetFilesFrom</key>
<value id="417" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="418">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<persistent>false</persistent>
<value id="419" type="java.lang.String">S3</value>
</value>
</entry>
<entry>
<key id="420" type="java.lang.String">IncludeFilePatternNBusinessFeed</key>
<value id="421" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="422">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description idref="2"/>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="423" type="java.lang.String">JobConfigText</key>
<value id="424" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="425">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="426" type="java.lang.String">LastRunInterval</key>
<value id="427" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="428">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<persistent>false</persistent>
<value id="429" type="java.lang.String">24</value>
</value>
</entry>
<entry>
<key id="430" type="java.lang.String">ListAfter</key>
<value id="431" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="432">java.util.Date</className>
<clazz>java.util.Date</clazz>
<description idref="2"/>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="433" type="java.lang.String">MessageBulkSize</key>
<value id="434" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="435">java.lang.Integer</className>
<clazz>java.lang.Integer</clazz>
<description idref="2"/>
<persistent>false</persistent>
<value id="436" type="java.lang.Integer">500</value>
</value>
</entry>
<entry>
<key id="437" type="java.lang.String">MessageProcessingEvent</key>
<value id="438" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="439">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<persistent>false</persistent>
<value id="440" type="java.lang.String">ProcessFeedMessage</value>
</value>
</entry>
<entry>
<key id="441" type="java.lang.String">MessageType</key>
<value id="442" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="443">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="444" type="java.lang.String">NrOfFilesParallel</key>
<value id="445" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="446">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<persistent>false</persistent>
<value id="447" type="java.lang.String">2</value>
</value>
</entry>
<entry>
<key id="448" type="java.lang.String">OutputDirectory</key>
<value id="449" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="450">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="451" type="java.lang.String">ParallelBranches</key>
<value id="452" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="453">java.lang.Integer</className>
<clazz>java.lang.Integer</clazz>
<description idref="2"/>
<persistent>false</persistent>
<value id="454" type="java.lang.Integer">2</value>
</value>
</entry>
<entry>
<key id="455" type="java.lang.String">PrimaryGCEngine</key>
<value id="456" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="457">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<persistent>false</persistent>
<value id="458" type="java.lang.String">engine/TPS-1</value>
</value>
</entry>
<entry>
<key id="459" type="java.lang.String">PrimaryVDDBEngine</key>
<value id="460" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="461">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<persistent>false</persistent>
<value id="462" type="java.lang.String">engine/TPS-VDDB</value>
</value>
</entry>
<entry>
<key id="463" type="java.lang.String">ReProcessProcessedFiles</key>
<value id="464" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="465">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description idref="2"/>
<persistent>false</persistent>
<value idref="392"/>
</value>
</entry>
<entry>
<key id="466" type="java.lang.String">SortAscending</key>
<value id="467" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="468">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="469" type="java.lang.String">SortOrder</key>
<value id="470" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="471">com.j2fe.feeds.activities.ListFiles$Sort</className>
<clazz>com.j2fe.feeds.activities.ListFiles$Sort</clazz>
<description idref="2"/>
<persistent>false</persistent>
<value id="472" type="com.j2fe.feeds.activities.ListFiles$Sort">NATURAL</value>
</value>
</entry>
<entry>
<key id="473" type="java.lang.String">SortedFileDirectory</key>
<value id="474" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="475">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="476" type="java.lang.String">SourceFileDirectory</key>
<value id="477" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="478">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="479" type="java.lang.String">SourceFileSystem</key>
<value id="480" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="481">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="482" type="java.lang.String">SuccessAction</key>
<value id="483" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="484">com.j2fe.feeds.SuccessAction</className>
<clazz>com.j2fe.feeds.SuccessAction</clazz>
<description idref="2"/>
<persistent>false</persistent>
<value id="485" type="com.j2fe.feeds.SuccessAction">LEAVE</value>
</value>
</entry>
<entry>
<key id="486" type="java.lang.String">TargetFileDirectory</key>
<value id="487" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="488">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="489" type="java.lang.String">TargetFileSystem</key>
<value id="490" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="491">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="492" type="java.lang.String">VendorDefinition</key>
<value id="493" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="494">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="495" type="java.lang.String">s3BucketName</key>
<value id="496" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="497">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="498" type="java.lang.String">s3BucketRegion</key>
<value id="499" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="500">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="501" type="java.lang.String">s3BucketToPlaceTriggerFile</key>
<value id="502" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="503">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="504" type="java.lang.String">s3KeyPrefix</key>
<value id="505" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="506">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="507" type="java.lang.String">s3TriggerPrefix</key>
<value id="508" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="509">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="510" type="java.lang.String">serverTimestampChanged</key>
<value id="511" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="512">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description idref="2"/>
<persistent>false</persistent>
<value idref="392"/>
</value>
</entry>
</variables>
<version>2</version>
</com.j2fe.workflow.definition.Workflow>
</businessobject>
</goldensource-package>
