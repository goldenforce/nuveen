<?xml version="1.0" encoding="UTF-8" standalone="no"?>
<goldensource-package version="8.8.1.34">
<package-comment/>
<businessobject displayString="18 - 20241101_ParantJobId" type="com.j2fe.workflow.definition.Workflow">
<com.j2fe.workflow.definition.Workflow id="0">
<alwaysPersist>true</alwaysPersist>
<clustered>true</clustered>
<comment id="1">20241101_ParantJobId</comment>
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
<name id="8">empty</name>
<source id="9">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="10">List Files </name>
<nodeHandler>com.j2fe.feeds.activities.ListFiles</nodeHandler>
<nodeHandlerClass id="11">com.j2fe.feeds.activities.ListFiles</nodeHandlerClass>
<parameters id="12" type="java.util.HashSet">
<item id="13" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="14">directory</name>
<stringValue id="15">DownloadDirectory</stringValue>
<type>VARIABLE</type>
</item>
<item id="16" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="17">fileSystem</name>
<stringValue id="18">filesystem/local</stringValue>
<type>REFERENCE</type>
</item>
<item id="19" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="20">includeBoth</name>
<objectValue id="21" type="java.lang.Boolean">false</objectValue>
<type>CONSTANT</type>
</item>
<item id="22" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="23">list</name>
<stringValue id="24">FileList</stringValue>
<type>VARIABLE</type>
</item>
<item id="25" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="26">pattern</name>
<stringValue id="27">FilePatterns</stringValue>
<type>VARIABLE</type>
</item>
<item id="28" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="29">sort</name>
<stringValue id="30">SortOrder</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="31" type="java.util.HashSet">
<item id="32" type="com.j2fe.workflow.definition.Transition">
<name id="33">ToSplit</name>
<source id="34">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description id="35">Automatically generated</description>
<directJoin>false</directJoin>
<name id="36">Merge</name>
<nodeHandler>com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandler>
<nodeHandlerClass id="37">com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandlerClass>
<sources id="38" type="java.util.HashSet">
<item id="39" type="com.j2fe.workflow.definition.Transition">
<name id="40">goto-next</name>
<source id="41">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="42">File Transfer</name>
<nodeHandler>com.j2fe.workflow.handler.impl.CallSubWorkflow</nodeHandler>
<nodeHandlerClass id="43">com.j2fe.workflow.handler.impl.CallSubWorkflow</nodeHandlerClass>
<parameters id="44" type="java.util.HashSet">
<item id="45" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="46">["ArchiveInClientDir"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="47">input["ArchiveInClientDir"]</name>
<stringValue id="48">ArchiveInClientDir</stringValue>
<type>VARIABLE</type>
</item>
<item id="49" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="50">["BusinessFeed"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="51">input["BusinessFeed"]</name>
<stringValue id="52">BusinessFeed</stringValue>
<type>VARIABLE</type>
</item>
<item id="53" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="54">["ClientArchiveDirectory"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="55">input["ClientArchiveDirectory"]</name>
<stringValue id="56">ClientArchiveDirectory</stringValue>
<type>VARIABLE</type>
</item>
<item id="57" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="58">["SourceFileDirectory"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="59">input["SourceFileDirectory"]</name>
<stringValue id="60">SourceFileDirectory</stringValue>
<type>VARIABLE</type>
</item>
<item id="61" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="62">["SourceFileSystem"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="63">input["SourceFileSystem"]</name>
<stringValue id="64">SourceFileSystem</stringValue>
<type>VARIABLE</type>
</item>
<item id="65" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="66">["TargetFileDirectory"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="67">input["TargetFileDirectory"]</name>
<stringValue id="68">TargetFileDirectory</stringValue>
<type>VARIABLE</type>
</item>
<item id="69" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="70">["TargetFileSystem"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="71">input["TargetFileSystem"]</name>
<stringValue id="72">TargetFileSystem</stringValue>
<type>VARIABLE</type>
</item>
<item id="73" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="74">name</name>
<stringValue id="75">Nuveen_FileTransfers</stringValue>
<type>CONSTANT</type>
</item>
</parameters>
<sources id="76" type="java.util.HashSet">
<item id="77" type="com.j2fe.workflow.definition.Transition">
<name id="78">FTP</name>
<source id="79">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="80">Get Files from?</name>
<nodeHandler>com.j2fe.workflow.handler.impl.SwitchCaseSplit</nodeHandler>
<nodeHandlerClass id="81">com.j2fe.workflow.handler.impl.SwitchCaseSplit</nodeHandlerClass>
<parameters id="82" type="java.util.HashSet">
<item id="83" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="84">caseItem</name>
<stringValue id="85">GetFilesFrom</stringValue>
<type>VARIABLE</type>
</item>
<item id="86" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="87">defaultItem</name>
<stringValue id="88">S3</stringValue>
<type>CONSTANT</type>
</item>
<item id="89" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="90">nullTransition</name>
<stringValue id="91">S3</stringValue>
<type>CONSTANT</type>
</item>
</parameters>
<sources id="92" type="java.util.HashSet">
<item id="93" type="com.j2fe.workflow.definition.Transition">
<name id="94">goto-next</name>
<source id="95">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="96">Start</name>
<nodeHandler>com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandler>
<nodeHandlerClass id="97">com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandlerClass>
<sources id="98" type="java.util.HashSet"/>
<targets id="99" type="java.util.HashSet">
<item idref="93" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>START</type>
</source>
<target idref="79"/>
</item>
</sources>
<targets id="100" type="java.util.HashSet">
<item idref="77" type="com.j2fe.workflow.definition.Transition"/>
<item id="101" type="com.j2fe.workflow.definition.Transition">
<name id="102">S3</name>
<source idref="79"/>
<target id="103">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="104">get System Properties</name>
<nodeHandler>com.j2fe.general.activities.BeanShellScript</nodeHandler>
<nodeHandlerClass id="105">com.j2fe.general.activities.BeanShellScript</nodeHandlerClass>
<parameters id="106" type="java.util.HashSet">
<item id="107" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="108">statements</name>
<stringValue id="109">import java.text.*;&#13;
&#13;
String o_s3BucketName = System.getProperty(i_s3BucketName);&#13;
String o_s3Prefix = System.getProperty(i_s3Prefix);&#13;
String o_s3Region = System.getProperty(i_s3Region);&#13;
</stringValue>
<type>CONSTANT</type>
</item>
<item id="110" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="111">["i_s3BucketName"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="112">variables["i_s3BucketName"]</name>
<stringValue id="113">s3BucketName</stringValue>
<type>VARIABLE</type>
</item>
<item id="114" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="115">variables["i_s3Prefix"]</name>
<stringValue id="116">s3KeyPrefix</stringValue>
<type>VARIABLE</type>
</item>
<item id="117" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="118">variables["i_s3Region"]</name>
<stringValue id="119">s3BucketRegion</stringValue>
<type>VARIABLE</type>
</item>
<item id="120" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="121">["o_s3BucketName"]@java/lang/String@</UITypeHint>
<input>false</input>
<name id="122">variables["o_s3BucketName"]</name>
<stringValue id="123">s3BucketName</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="124" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="125">["o_s3Prefix"]@java/lang/String@</UITypeHint>
<input>false</input>
<name id="126">variables["o_s3Prefix"]</name>
<stringValue id="127">s3KeyPrefix</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="128" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="129">["o_s3Region"]@java/lang/String@</UITypeHint>
<input>false</input>
<name id="130">variables["o_s3Region"]</name>
<stringValue id="131">s3BucketRegion</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
</parameters>
<sources id="132" type="java.util.HashSet">
<item idref="101" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="133" type="java.util.HashSet">
<item id="134" type="com.j2fe.workflow.definition.Transition">
<name id="135">goto-next</name>
<source idref="103"/>
<target id="136">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="137">S3FileListAndDownload</name>
<nodeHandler>com.j2fe.workflow.handler.impl.CallSubWorkflow</nodeHandler>
<nodeHandlerClass id="138">com.j2fe.workflow.handler.impl.CallSubWorkflow</nodeHandlerClass>
<parameters id="139" type="java.util.HashSet">
<item id="140" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="141">["BucketRegion"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="142">input["BucketRegion"]</name>
<stringValue id="143">s3BucketRegion</stringValue>
<type>VARIABLE</type>
</item>
<item id="144" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="145">["DownloadDirectory"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="146">input["DownloadDirectory"]</name>
<stringValue id="147">DownloadDirectory</stringValue>
<type>VARIABLE</type>
</item>
<item id="148" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="149">["FetchNewFilesOnly"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="150">input["FetchNewFilesOnly"]</name>
<stringValue id="151">FetchNewFilesOnly</stringValue>
<type>VARIABLE</type>
</item>
<item id="152" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="153">["FilePatterns"]@[Ljava/lang/String;@</UITypeHint>
<input>true</input>
<name id="154">input["FilePatterns"]</name>
<stringValue id="155">FilePatterns</stringValue>
<type>VARIABLE</type>
</item>
<item id="156" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="157">["KeyPrefix"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="158">input["KeyPrefix"]</name>
<stringValue id="159">s3KeyPrefix</stringValue>
<type>VARIABLE</type>
</item>
<item id="160" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="161">["ListAfter"]@java/util/Date@</UITypeHint>
<input>true</input>
<name id="162">input["ListAfter"]</name>
<stringValue id="163">ListAfter</stringValue>
<type>VARIABLE</type>
</item>
<item id="164" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="165">["S3BucketName"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="166">input["S3BucketName"]</name>
<stringValue id="167">s3BucketName</stringValue>
<type>VARIABLE</type>
</item>
<item id="168" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="169">name</name>
<stringValue id="170">S3FileListAndDownload</stringValue>
<type>CONSTANT</type>
</item>
</parameters>
<sources id="171" type="java.util.HashSet">
<item idref="134" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="172" type="java.util.HashSet">
<item id="173" type="com.j2fe.workflow.definition.Transition">
<name id="174">goto-next</name>
<source idref="136"/>
<target idref="34"/>
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
<target idref="41"/>
</item>
</sources>
<targets id="175" type="java.util.HashSet">
<item idref="39" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="34"/>
</item>
<item idref="173" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="176" type="java.util.HashSet">
<item idref="32" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="9"/>
</item>
</sources>
<targets id="177" type="java.util.HashSet">
<item idref="7" type="com.j2fe.workflow.definition.Transition"/>
<item id="178" type="com.j2fe.workflow.definition.Transition">
<name id="179">not-empty</name>
<source idref="9"/>
<target id="180">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="181">Create Parent Job </name>
<nodeHandler>com.j2fe.streetlamp.activities.CreateJob</nodeHandler>
<nodeHandlerClass id="182">com.j2fe.streetlamp.activities.CreateJob</nodeHandlerClass>
<parameters id="183" type="java.util.HashSet">
<item id="184" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="185">configInfo</name>
<stringValue id="186">JobConfigText</stringValue>
<type>VARIABLE</type>
</item>
<item id="187" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="188">jobId</name>
<stringValue id="189">ParentJobID</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
</parameters>
<persistentVariables id="190" type="java.util.HashSet">
<item id="191" type="java.lang.String">ParentJobID
1000</item>
</persistentVariables>
<sources id="192" type="java.util.HashSet">
<item idref="178" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="193" type="java.util.HashSet">
<item id="194" type="com.j2fe.workflow.definition.Transition">
<name id="195">goto-next</name>
<source idref="180"/>
<target id="196">
<activation>TRANSACTIONAL</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="197">Process Files in Directory</name>
<nodeHandler>com.j2fe.workflow.handler.impl.CallSubWorkflow</nodeHandler>
<nodeHandlerClass id="198">com.j2fe.workflow.handler.impl.CallSubWorkflow</nodeHandlerClass>
<parameters id="199" type="java.util.HashSet">
<item id="200" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="201">["BusinessFeed"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="202">input["BusinessFeed"]</name>
<stringValue id="203">BusinessFeed</stringValue>
<type>VARIABLE</type>
</item>
<item id="204" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="205">["Directory"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="206">input["Directory"]</name>
<stringValue id="207">DownloadDirectory</stringValue>
<type>VARIABLE</type>
</item>
<item id="208" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="209">["FileLoadEvent"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="210">input["FileLoadEvent"]</name>
<stringValue id="211">FileLoadEvent</stringValue>
<type>VARIABLE</type>
</item>
<item id="212" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="213">["FilePatterns"]@[Ljava/lang/String;@</UITypeHint>
<input>true</input>
<name id="214">input["FilePatterns"]</name>
<stringValue id="215">FilePatterns</stringValue>
<type>VARIABLE</type>
</item>
<item id="216" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="217">["IncludeFilePatternNBusinessFeed"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="218">input["IncludeFilePatternNBusinessFeed"]</name>
<stringValue id="219">IncludeFilePatternNBusinessFeed</stringValue>
<type>VARIABLE</type>
</item>
<item id="220" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="221">["LastRunInterval"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="222">input["LastRunInterval"]</name>
<stringValue id="223">LastRunInterval</stringValue>
<type>VARIABLE</type>
</item>
<item id="224" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="225">["MessageBulkSize"]@java/lang/Integer@</UITypeHint>
<input>true</input>
<name id="226">input["MessageBulkSize"]</name>
<stringValue id="227">MessageBulkSize</stringValue>
<type>VARIABLE</type>
</item>
<item id="228" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="229">["MessageProcessingEvent"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="230">input["MessageProcessingEvent"]</name>
<stringValue id="231">MessageProcessingEvent</stringValue>
<type>VARIABLE</type>
</item>
<item id="232" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="233">["MessageType"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="234">input["MessageType"]</name>
<stringValue id="235">MessageType</stringValue>
<type>VARIABLE</type>
</item>
<item id="236" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="237">["NrOfFilesParallel"]@java/lang/Integer@</UITypeHint>
<input>true</input>
<name id="238">input["NrOfFilesParallel"]</name>
<stringValue id="239">NrOfFilesParallel</stringValue>
<type>VARIABLE</type>
</item>
<item id="240" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="241">["OutputDirectory"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="242">input["OutputDirectory"]</name>
<stringValue id="243">OutputDirectory</stringValue>
<type>VARIABLE</type>
</item>
<item id="244" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="245">["ParallelBranches"]@java/lang/Integer@</UITypeHint>
<input>true</input>
<name id="246">input["ParallelBranches"]</name>
<stringValue id="247">ParallelBranches</stringValue>
<type>VARIABLE</type>
</item>
<item id="248" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="249">["ParentJobID"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="250">input["ParentJobID"]</name>
<stringValue id="251">ParentJobID</stringValue>
<type>VARIABLE</type>
</item>
<item id="252" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="253">["PrimaryGCEngine"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="254">input["PrimaryGCEngine"]</name>
<stringValue id="255">PrimaryGCEngine</stringValue>
<type>VARIABLE</type>
</item>
<item id="256" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="257">["PrimaryVDDBEngine"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="258">input["PrimaryVDDBEngine"]</name>
<stringValue id="259">PrimaryVDDBEngine</stringValue>
<type>VARIABLE</type>
</item>
<item id="260" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="261">["ReProcessProcessedFiles"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="262">input["ReProcessProcessedFiles"]</name>
<stringValue id="263">ReProcessProcessedFiles</stringValue>
<type>VARIABLE</type>
</item>
<item id="264" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="265">["SortAscending"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="266">input["SortAscending"]</name>
<stringValue id="267">SortAscending</stringValue>
<type>VARIABLE</type>
</item>
<item id="268" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="269">["SortOrder"]@com/j2fe/feeds/activities/ListFiles$Sort@</UITypeHint>
<input>true</input>
<name id="270">input["SortOrder"]</name>
<stringValue id="271">SortOrder</stringValue>
<type>VARIABLE</type>
</item>
<item id="272" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="273">["SortedFileDirectory"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="274">input["SortedFileDirectory"]</name>
<stringValue id="275">SortedFileDirectory</stringValue>
<type>VARIABLE</type>
</item>
<item id="276" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="277">["SuccessAction"]@com/j2fe/feeds/SuccessAction@</UITypeHint>
<input>true</input>
<name id="278">input["SuccessAction"]</name>
<stringValue id="279">SuccessAction</stringValue>
<type>VARIABLE</type>
</item>
<item id="280" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="281">["VendorDefinition"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="282">input["VendorDefinition"]</name>
<stringValue id="283">VendorDefinition</stringValue>
<type>VARIABLE</type>
</item>
<item id="284" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="285">["serverTimestampChanged"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="286">input["serverTimestampChanged"]</name>
<stringValue id="287">serverTimestampChanged</stringValue>
<type>VARIABLE</type>
</item>
<item id="288" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="289">name</name>
<stringValue id="290">Process Files in Directory</stringValue>
<type>CONSTANT</type>
</item>
</parameters>
<sources id="291" type="java.util.HashSet">
<item idref="194" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="292" type="java.util.HashSet">
<item id="293" type="com.j2fe.workflow.definition.Transition">
<name id="294">goto-next</name>
<source idref="196"/>
<target id="295">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="296">Place Trigger File</name>
<nodeHandler>com.j2fe.workflow.handler.impl.SwitchCaseSplit</nodeHandler>
<nodeHandlerClass id="297">com.j2fe.workflow.handler.impl.SwitchCaseSplit</nodeHandlerClass>
<parameters id="298" type="java.util.HashSet">
<item id="299" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="300">caseItem</name>
<stringValue id="301">BusinessFeed</stringValue>
<type>VARIABLE</type>
</item>
<item id="302" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="303">defaultItem</name>
<stringValue id="304">DEFAULT</stringValue>
<type>CONSTANT</type>
</item>
<item id="305" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="306">nullTransition</name>
<stringValue id="307">DEFAULT</stringValue>
<type>CONSTANT</type>
</item>
</parameters>
<sources id="308" type="java.util.HashSet">
<item idref="293" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="309" type="java.util.HashSet">
<item id="310" type="com.j2fe.workflow.definition.Transition">
<name id="311">DEFAULT</name>
<source idref="295"/>
<target id="312">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="313">NOP </name>
<nodeHandler>com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandler>
<nodeHandlerClass id="314">com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandlerClass>
<sources id="315" type="java.util.HashSet">
<item idref="310" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="316" type="java.util.HashSet">
<item id="317" type="com.j2fe.workflow.definition.Transition">
<name id="318">goto-next</name>
<source idref="312"/>
<target id="319">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="320">Close Parent Job </name>
<nodeHandler>com.j2fe.streetlamp.activities.CloseJob</nodeHandler>
<nodeHandlerClass id="321">com.j2fe.streetlamp.activities.CloseJob</nodeHandlerClass>
<parameters id="322" type="java.util.HashSet">
<item id="323" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="324">jobId</name>
<stringValue id="325">ParentJobID</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="326" type="java.util.HashSet">
<item idref="317" type="com.j2fe.workflow.definition.Transition"/>
<item id="327" type="com.j2fe.workflow.definition.Transition">
<name id="328">goto-next</name>
<source id="329">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="330">upload to S3</name>
<nodeHandler>com.j2fe.general.activities.BeanShellScript</nodeHandler>
<nodeHandlerClass id="331">com.j2fe.general.activities.BeanShellScript</nodeHandlerClass>
<parameters id="332" type="java.util.HashSet">
<item id="333" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="334">statements</name>
<objectValue id="335" type="java.lang.String">import java.io.File;&#13;
&#13;
import java.io.File;&#13;
import java.io.FileWriter;&#13;
import java.io.IOException;&#13;
import java.text.SimpleDateFormat;&#13;
import java.util.Date;&#13;
&#13;
import com.amazonaws.services.s3.AmazonS3;&#13;
import com.amazonaws.services.s3.AmazonS3ClientBuilder;&#13;
import com.amazonaws.services.s3.model.ObjectMetadata;&#13;
import com.amazonaws.services.s3.model.PutObjectRequest;&#13;
&#13;
SimpleDateFormat format = new SimpleDateFormat("yyyyMMdd");&#13;
String sFormat = format.format(new Date());&#13;
&#13;
String bucketKey = prefix ;  &#13;
AmazonS3 s3Client = AmazonS3ClientBuilder.standard()&#13;
		.withRegion(region)&#13;
		.build();&#13;
&#13;
File publishedDir = new File(publishingDir);&#13;
&#13;
	File f = new File(publishedDir + File.separator + bfName + "_Load_" +sFormat + ".done");&#13;
	FileWriter fw = new FileWriter(f);&#13;
	fw.write(sFormat);&#13;
	fw.flush();&#13;
	fw.close();&#13;
	PutObjectRequest request = new PutObjectRequest(bucketName, bucketKey + "/" + f.getName(), f);&#13;
	ObjectMetadata metadata = new ObjectMetadata();&#13;
	metadata.setContentType("text/plain");&#13;
	metadata.addUserMetadata("title", "GoldenSource Trigger Files");				&#13;
	request.setMetadata(metadata);&#13;
	s3Client.putObject(request);&#13;
	f.delete();</objectValue>
<type>CONSTANT</type>
</item>
<item id="336" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="337">variables["bfName"]</name>
<stringValue id="338">BusinessFeed</stringValue>
<type>VARIABLE</type>
</item>
<item id="339" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="340">variables["bucketName"]</name>
<stringValue id="341">o_s3BucketToPlaceTriggerFile</stringValue>
<type>VARIABLE</type>
</item>
<item id="342" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="343">variables["deleteLocalCopy"]</name>
<stringValue id="344">DeleteLocalCopy</stringValue>
<type>VARIABLE</type>
</item>
<item id="345" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="346">variables["prefix"]</name>
<stringValue id="347">o_s3TriggerPrefix</stringValue>
<type>VARIABLE</type>
</item>
<item id="348" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="349">variables["publishingDir"]</name>
<stringValue id="350">DownloadDirectory</stringValue>
<type>VARIABLE</type>
</item>
<item id="351" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="352">variables["region"]</name>
<stringValue id="353">s3BucketRegion</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="354" type="java.util.HashSet">
<item id="355" type="com.j2fe.workflow.definition.Transition">
<name id="356">goto-next</name>
<source id="357">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="358">get System Prop to Trigger</name>
<nodeHandler>com.j2fe.general.activities.BeanShellScript</nodeHandler>
<nodeHandlerClass id="359">com.j2fe.general.activities.BeanShellScript</nodeHandlerClass>
<parameters id="360" type="java.util.HashSet">
<item id="361" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="362">statements</name>
<stringValue id="363">import java.text.*;&#13;
&#13;
String o_s3BucketToPlaceTriggerFile = System.getProperty(i_s3BucketToPlaceTriggerFile);&#13;
String o_s3TriggerPrefix = System.getProperty(i_s3TriggerPrefix);&#13;
</stringValue>
<type>CONSTANT</type>
</item>
<item id="364" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="365">["i_s3BucketToPlaceTriggerFile"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="366">variables["i_s3BucketToPlaceTriggerFile"]</name>
<stringValue id="367">s3BucketToPlaceTriggerFile</stringValue>
<type>VARIABLE</type>
</item>
<item id="368" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="369">variables["i_s3TriggerPrefix"]</name>
<stringValue id="370">s3TriggerPrefix</stringValue>
<type>VARIABLE</type>
</item>
<item id="371" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="372">["o_s3BucketToPlaceTriggerFile"]@java/lang/String@</UITypeHint>
<input>false</input>
<name id="373">variables["o_s3BucketToPlaceTriggerFile"]</name>
<stringValue id="374">o_s3BucketToPlaceTriggerFile</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="375" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="376">variables["o_s3TriggerPrefix"]</name>
<stringValue id="377">o_s3TriggerPrefix</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<persistentVariables id="378" type="java.util.HashSet">
<item id="379" type="java.lang.String">o_s3TriggerPrefix
1000</item>
<item id="380" type="java.lang.String">o_s3BucketToPlaceTriggerFile
1000</item>
</persistentVariables>
<sources id="381" type="java.util.HashSet">
<item id="382" type="com.j2fe.workflow.definition.Transition">
<name id="383">rows-found</name>
<source id="384">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="385">Check WSO Load Success</name>
<nodeHandler>com.j2fe.general.activities.database.DBQuery</nodeHandler>
<nodeHandlerClass id="386">com.j2fe.general.activities.database.DBQuery</nodeHandlerClass>
<parameters id="387" type="java.util.HashSet">
<item id="388" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="389">database</name>
<stringValue id="390">jdbc/GSDM-1</stringValue>
<type>REFERENCE</type>
</item>
<item id="391" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="392">firstColumnsResult</name>
<stringValue id="393">LoadCount</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="394" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="395">indexedParameters[0]</name>
<stringValue id="396">ParentJobID</stringValue>
<type>VARIABLE</type>
</item>
<item id="397" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="398">querySQL</name>
<stringValue id="399">select 1  from ft_t_jblg where prnt_job_id =  ?</stringValue>
<type>CONSTANT</type>
</item>
</parameters>
<sources id="400" type="java.util.HashSet">
<item id="401" type="com.j2fe.workflow.definition.Transition">
<name id="402">WSO_Asset</name>
<source idref="295"/>
<target idref="384"/>
</item>
</sources>
<targets id="403" type="java.util.HashSet">
<item id="404" type="com.j2fe.workflow.definition.Transition">
<name id="405">nothing-found</name>
<source idref="384"/>
<target idref="319"/>
</item>
<item idref="382" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>XORSPLIT</type>
</source>
<target idref="357"/>
</item>
</sources>
<targets id="406" type="java.util.HashSet">
<item idref="355" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="329"/>
</item>
</sources>
<targets id="407" type="java.util.HashSet">
<item idref="327" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="319"/>
</item>
<item idref="404" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="408" type="java.util.HashSet">
<item id="409" type="com.j2fe.workflow.definition.Transition">
<name id="410">goto-next</name>
<source idref="319"/>
<target idref="3"/>
</item>
</targets>
<type>ACTIVITY</type>
</target>
</item>
</targets>
<type>ACTIVITY</type>
</target>
</item>
<item idref="401" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>XORSPLIT</type>
</target>
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
<target idref="3"/>
</item>
<item idref="409" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="411" type="java.util.HashSet"/>
<type>END</type>
</endNode>
<forcePurgeAtEnd>false</forcePurgeAtEnd>
<group id="412">Custom/Processing</group>
<haltOnError>false</haltOnError>
<lastChangeUser id="413">user1</lastChangeUser>
<lastUpdate id="414">2024-11-01T13:44:26.000-0400</lastUpdate>
<name id="415">Nuveen_LevFin_PFD_Wrapper</name>
<optimize>true</optimize>
<parameter id="416" type="java.util.HashMap">
<entry>
<key id="417" type="java.lang.String">ArchiveInClientDir</key>
<value id="418" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="419">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description idref="2"/>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="420" type="java.lang.String">BusinessFeed</key>
<value id="421" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="422">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="423" type="java.lang.String">ClientArchiveDirectory</key>
<value id="424" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="425">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="426" type="java.lang.String">DeleteLocalCopy</key>
<value id="427" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="428">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description idref="2"/>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="429" type="java.lang.String">DownloadDirectory</key>
<value id="430" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="431">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="432" type="java.lang.String">FetchNewFilesOnly</key>
<value id="433" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="434">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description idref="2"/>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="435" type="java.lang.String">FileLoadEvent</key>
<value id="436" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="437">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="438" type="java.lang.String">FilePatterns</key>
<value id="439" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="440">[Ljava.lang.String;</className>
<clazz>[Ljava.lang.String;</clazz>
<description idref="2"/>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="441" type="java.lang.String">GetFilesFrom</key>
<value id="442" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="443">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="444" type="java.lang.String">IncludeFilePatternNBusinessFeed</key>
<value id="445" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="446">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description idref="2"/>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="447" type="java.lang.String">JobConfigText</key>
<value id="448" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="449">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="450" type="java.lang.String">LastRunInterval</key>
<value id="451" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="452">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="453" type="java.lang.String">ListAfter</key>
<value id="454" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="455">java.util.Date</className>
<clazz>java.util.Date</clazz>
<description idref="2"/>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="456" type="java.lang.String">MessageBulkSize</key>
<value id="457" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="458">java.lang.Integer</className>
<clazz>java.lang.Integer</clazz>
<description idref="2"/>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="459" type="java.lang.String">MessageProcessingEvent</key>
<value id="460" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="461">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="462" type="java.lang.String">MessageType</key>
<value id="463" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="464">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="465" type="java.lang.String">NrOfFilesParallel</key>
<value id="466" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="467">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="468" type="java.lang.String">OutputDirectory</key>
<value id="469" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="470">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="471" type="java.lang.String">ParallelBranches</key>
<value id="472" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="473">java.lang.Integer</className>
<clazz>java.lang.Integer</clazz>
<description idref="2"/>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="474" type="java.lang.String">PrimaryGCEngine</key>
<value id="475" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="476">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="477" type="java.lang.String">PrimaryVDDBEngine</key>
<value id="478" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="479">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="480" type="java.lang.String">ReProcessProcessedFiles</key>
<value id="481" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="482">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description idref="2"/>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="483" type="java.lang.String">SortAscending</key>
<value id="484" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="485">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="486" type="java.lang.String">SortOrder</key>
<value id="487" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="488">com.j2fe.feeds.activities.ListFiles$Sort</className>
<clazz>com.j2fe.feeds.activities.ListFiles$Sort</clazz>
<description idref="2"/>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="489" type="java.lang.String">SortedFileDirectory</key>
<value id="490" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="491">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="492" type="java.lang.String">SourceFileDirectory</key>
<value id="493" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="494">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="495" type="java.lang.String">SourceFileSystem</key>
<value id="496" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="497">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="498" type="java.lang.String">SuccessAction</key>
<value id="499" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="500">com.j2fe.feeds.SuccessAction</className>
<clazz>com.j2fe.feeds.SuccessAction</clazz>
<description idref="2"/>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="501" type="java.lang.String">TargetFileDirectory</key>
<value id="502" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="503">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="504" type="java.lang.String">TargetFileSystem</key>
<value id="505" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="506">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="507" type="java.lang.String">VendorDefinition</key>
<value id="508" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="509">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="510" type="java.lang.String">s3BucketName</key>
<value id="511" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="512">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="513" type="java.lang.String">s3BucketRegion</key>
<value id="514" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="515">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="516" type="java.lang.String">s3BucketToPlaceTriggerFile</key>
<value id="517" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="518">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="519" type="java.lang.String">s3KeyPrefix</key>
<value id="520" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="521">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="522" type="java.lang.String">s3TriggerPrefix</key>
<value id="523" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="524">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="525" type="java.lang.String">serverTimestampChanged</key>
<value id="526" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="527">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description idref="2"/>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
</parameter>
<permissions id="528" type="java.util.HashSet"/>
<priority>50</priority>
<purgeAtEnd>false</purgeAtEnd>
<retries>0</retries>
<startNode idref="95"/>
<status>RELEASED</status>
<variables id="529" type="java.util.HashMap">
<entry>
<key id="530" type="java.lang.String">ArchiveInClientDir</key>
<value id="531" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="532">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description idref="2"/>
<persistent>false</persistent>
<value idref="21"/>
</value>
</entry>
<entry>
<key id="533" type="java.lang.String">BusinessFeed</key>
<value id="534" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="535">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="536" type="java.lang.String">ClientArchiveDirectory</key>
<value id="537" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="538">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="539" type="java.lang.String">Counter</key>
<value id="540" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="541">java.lang.Integer</className>
<clazz>java.lang.Integer</clazz>
<description idref="2"/>
<persistent>false</persistent>
<value id="542" type="java.lang.Integer">0</value>
</value>
</entry>
<entry>
<key id="543" type="java.lang.String">DeleteLocalCopy</key>
<value id="544" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="545">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description idref="2"/>
<persistent>false</persistent>
<value id="546" type="java.lang.Boolean">true</value>
</value>
</entry>
<entry>
<key id="547" type="java.lang.String">DownloadDirectory</key>
<value id="548" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="549">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="550" type="java.lang.String">FetchNewFilesOnly</key>
<value id="551" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="552">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description idref="2"/>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="553" type="java.lang.String">FileLoadEvent</key>
<value id="554" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="555">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<persistent>false</persistent>
<value id="556" type="java.lang.String">StandardFileLoad</value>
</value>
</entry>
<entry>
<key id="557" type="java.lang.String">FilePatterns</key>
<value id="558" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="559">[Ljava.lang.String;</className>
<clazz>[Ljava.lang.String;</clazz>
<description idref="2"/>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="560" type="java.lang.String">GetFilesFrom</key>
<value id="561" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="562">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<persistent>false</persistent>
<value id="563" type="java.lang.String">S3</value>
</value>
</entry>
<entry>
<key id="564" type="java.lang.String">IncludeFilePatternNBusinessFeed</key>
<value id="565" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="566">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description idref="2"/>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="567" type="java.lang.String">JobConfigText</key>
<value id="568" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="569">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="570" type="java.lang.String">LastRunInterval</key>
<value id="571" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="572">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<persistent>false</persistent>
<value id="573" type="java.lang.String">24</value>
</value>
</entry>
<entry>
<key id="574" type="java.lang.String">ListAfter</key>
<value id="575" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="576">java.util.Date</className>
<clazz>java.util.Date</clazz>
<description idref="2"/>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="577" type="java.lang.String">MessageBulkSize</key>
<value id="578" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="579">java.lang.Integer</className>
<clazz>java.lang.Integer</clazz>
<description idref="2"/>
<persistent>false</persistent>
<value id="580" type="java.lang.Integer">500</value>
</value>
</entry>
<entry>
<key id="581" type="java.lang.String">MessageProcessingEvent</key>
<value id="582" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="583">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<persistent>false</persistent>
<value id="584" type="java.lang.String">ProcessFeedMessage</value>
</value>
</entry>
<entry>
<key id="585" type="java.lang.String">MessageType</key>
<value id="586" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="587">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="588" type="java.lang.String">NrOfFilesParallel</key>
<value id="589" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="590">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<persistent>false</persistent>
<value id="591" type="java.lang.String">2</value>
</value>
</entry>
<entry>
<key id="592" type="java.lang.String">OutputDirectory</key>
<value id="593" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="594">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="595" type="java.lang.String">ParallelBranches</key>
<value id="596" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="597">java.lang.Integer</className>
<clazz>java.lang.Integer</clazz>
<description idref="2"/>
<persistent>false</persistent>
<value id="598" type="java.lang.Integer">2</value>
</value>
</entry>
<entry>
<key id="599" type="java.lang.String">PrimaryGCEngine</key>
<value id="600" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="601">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<persistent>false</persistent>
<value id="602" type="java.lang.String">engine/TPS-1</value>
</value>
</entry>
<entry>
<key id="603" type="java.lang.String">PrimaryVDDBEngine</key>
<value id="604" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="605">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<persistent>false</persistent>
<value id="606" type="java.lang.String">engine/TPS-VDDB</value>
</value>
</entry>
<entry>
<key id="607" type="java.lang.String">ReProcessProcessedFiles</key>
<value id="608" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="609">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description idref="2"/>
<persistent>false</persistent>
<value idref="21"/>
</value>
</entry>
<entry>
<key id="610" type="java.lang.String">SortAscending</key>
<value id="611" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="612">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="613" type="java.lang.String">SortOrder</key>
<value id="614" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="615">com.j2fe.feeds.activities.ListFiles$Sort</className>
<clazz>com.j2fe.feeds.activities.ListFiles$Sort</clazz>
<description idref="2"/>
<persistent>false</persistent>
<value id="616" type="com.j2fe.feeds.activities.ListFiles$Sort">NATURAL</value>
</value>
</entry>
<entry>
<key id="617" type="java.lang.String">SortedFileDirectory</key>
<value id="618" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="619">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="620" type="java.lang.String">SourceFileDirectory</key>
<value id="621" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="622">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="623" type="java.lang.String">SourceFileSystem</key>
<value id="624" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="625">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="626" type="java.lang.String">SuccessAction</key>
<value id="627" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="628">com.j2fe.feeds.SuccessAction</className>
<clazz>com.j2fe.feeds.SuccessAction</clazz>
<description idref="2"/>
<persistent>false</persistent>
<value id="629" type="com.j2fe.feeds.SuccessAction">LEAVE</value>
</value>
</entry>
<entry>
<key id="630" type="java.lang.String">TargetFileDirectory</key>
<value id="631" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="632">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="633" type="java.lang.String">TargetFileSystem</key>
<value id="634" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="635">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="636" type="java.lang.String">VendorDefinition</key>
<value id="637" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="638">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="639" type="java.lang.String">s3BucketName</key>
<value id="640" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="641">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="642" type="java.lang.String">s3BucketRegion</key>
<value id="643" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="644">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="645" type="java.lang.String">s3BucketToPlaceTriggerFile</key>
<value id="646" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="647">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="648" type="java.lang.String">s3KeyPrefix</key>
<value id="649" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="650">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="651" type="java.lang.String">s3TriggerPrefix</key>
<value id="652" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="653">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="654" type="java.lang.String">serverTimestampChanged</key>
<value id="655" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="656">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description idref="2"/>
<persistent>false</persistent>
<value idref="21"/>
</value>
</entry>
</variables>
<version>18</version>
</com.j2fe.workflow.definition.Workflow>
</businessobject>
</goldensource-package>
