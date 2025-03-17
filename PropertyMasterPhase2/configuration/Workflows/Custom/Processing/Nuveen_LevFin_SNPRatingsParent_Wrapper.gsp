<?xml version="1.0" encoding="UTF-8" standalone="no"?>
<goldensource-package version="8.8.1.59">
<package-comment/>
<businessobject displayString="2 - Cleanup_Staging_Files" type="com.j2fe.workflow.definition.Workflow">
<com.j2fe.workflow.definition.Workflow id="0">
<alwaysPersist>false</alwaysPersist>
<clustered>true</clustered>
<comment id="1">Cleanup_Staging_Files</comment>
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
<name id="10">Cleanup output files </name>
<nodeHandler>com.j2fe.general.activities.CleanupFiles</nodeHandler>
<nodeHandlerClass id="11">com.j2fe.general.activities.CleanupFiles</nodeHandlerClass>
<parameters id="12" type="java.util.HashSet">
<item id="13" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="14">daysToKeep</name>
<stringValue id="15">0</stringValue>
<type>CONSTANT</type>
</item>
<item id="16" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="17">directory</name>
<stringValue id="18">/edmfs/app/requestreply/snp/ratings/output/</stringValue>
<type>CONSTANT</type>
</item>
<item id="19" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="20">pattern</name>
<stringValue id="21">.*</stringValue>
<type>CONSTANT</type>
</item>
</parameters>
<sources id="22" type="java.util.HashSet">
<item id="23" type="com.j2fe.workflow.definition.Transition">
<name id="24">goto-next</name>
<source id="25">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="3"/>
<directJoin>false</directJoin>
<name id="26">Cleanup input files </name>
<nodeHandler>com.j2fe.general.activities.CleanupFiles</nodeHandler>
<nodeHandlerClass id="27">com.j2fe.general.activities.CleanupFiles</nodeHandlerClass>
<parameters id="28" type="java.util.HashSet">
<item id="29" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="30">daysToKeep</name>
<objectValue id="31" type="java.lang.Integer">0</objectValue>
<type>CONSTANT</type>
</item>
<item id="32" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="33">directory</name>
<stringValue id="34">/edmfs/app/requestreply/snp/ratings/input/</stringValue>
<type>CONSTANT</type>
</item>
<item id="35" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="36">pattern</name>
<stringValue id="37">.*</stringValue>
<type>CONSTANT</type>
</item>
</parameters>
<sources id="38" type="java.util.HashSet">
<item id="39" type="com.j2fe.workflow.definition.Transition">
<name id="40">goto-next</name>
<source id="41">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="3"/>
<directJoin>false</directJoin>
<name id="42">Call SNPRatingsParent </name>
<nodeHandler>com.j2fe.workflow.handler.impl.CallSubWorkflow</nodeHandler>
<nodeHandlerClass id="43">com.j2fe.workflow.handler.impl.CallSubWorkflow</nodeHandlerClass>
<parameters id="44" type="java.util.HashSet">
<item id="45" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="46">["BulkFilePatterns"]@[Ljava/lang/String;@</UITypeHint>
<input>true</input>
<name id="47">input["BulkFilePatterns"]</name>
<stringValue id="48">BulkFilePatterns</stringValue>
<type>VARIABLE</type>
</item>
<item id="49" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="50">["BulkRange"]@java/lang/Integer@</UITypeHint>
<input>true</input>
<name id="51">input["BulkRange"]</name>
<stringValue id="52">BulkRange</stringValue>
<type>VARIABLE</type>
</item>
<item id="53" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="54">["BulkSize"]@java/lang/Integer@</UITypeHint>
<input>true</input>
<name id="55">input["BulkSize"]</name>
<stringValue id="56">BulkSize</stringValue>
<type>VARIABLE</type>
</item>
<item id="57" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="58">["FileLoadEvent"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="59">input["FileLoadEvent"]</name>
<stringValue id="60">FileLoadEvent</stringValue>
<type>VARIABLE</type>
</item>
<item id="61" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="62">["FilePatterns"]@[Ljava/lang/String;@</UITypeHint>
<input>true</input>
<name id="63">input["FilePatterns"]</name>
<stringValue id="64">FilePatterns</stringValue>
<type>VARIABLE</type>
</item>
<item id="65" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="66">["ISSUERGroupPurposeType"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="67">input["ISSUERGroupPurposeType"]</name>
<stringValue id="68">ISSUERGroupPurposeType</stringValue>
<type>VARIABLE</type>
</item>
<item id="69" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="70">["ISSUGroupPurposeType"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="71">input["ISSUGroupPurposeType"]</name>
<stringValue id="72">ISSUGroupPurposeType</stringValue>
<type>VARIABLE</type>
</item>
<item id="73" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="74">["InputDirectory"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="75">input["InputDirectory"]</name>
<stringValue id="76">InputDirectory</stringValue>
<type>VARIABLE</type>
</item>
<item id="77" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="78">["IsFullFile"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="79">input["IsFullFile"]</name>
<stringValue id="80">IsFullFile</stringValue>
<type>VARIABLE</type>
</item>
<item id="81" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="82">["MessageBulkSize"]@java/lang/Integer@</UITypeHint>
<input>true</input>
<name id="83">input["MessageBulkSize"]</name>
<stringValue id="84">MessageBulkSize</stringValue>
<type>VARIABLE</type>
</item>
<item id="85" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="86">["MoveDirectory"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="87">input["MoveDirectory"]</name>
<stringValue id="88">MoveDirectory</stringValue>
<type>VARIABLE</type>
</item>
<item id="89" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="90">["MoveFiles"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="91">input["MoveFiles"]</name>
<stringValue id="92">MoveFiles</stringValue>
<type>VARIABLE</type>
</item>
<item id="93" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="94">["NrOfFilesParallel"]@java/lang/Integer@</UITypeHint>
<input>true</input>
<name id="95">input["NrOfFilesParallel"]</name>
<stringValue id="96">NrOfFilesParallel</stringValue>
<type>VARIABLE</type>
</item>
<item id="97" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="98">["NrOfStagingFilesParallel"]@java/lang/Integer@</UITypeHint>
<input>true</input>
<name id="99">input["NrOfStagingFilesParallel"]</name>
<stringValue id="100">NrOfStagingFilesParallel</stringValue>
<type>VARIABLE</type>
</item>
<item id="101" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="102">["OutputDirectory"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="103">input["OutputDirectory"]</name>
<stringValue id="104">OutputDirectory</stringValue>
<type>VARIABLE</type>
</item>
<item id="105" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="106">["ParallelBranches"]@java/lang/Integer@</UITypeHint>
<input>true</input>
<name id="107">input["ParallelBranches"]</name>
<stringValue id="108">ParallelBranches</stringValue>
<type>VARIABLE</type>
</item>
<item id="109" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="110">["RatingsType"]@com/j2fe/connector/RatingsType@</UITypeHint>
<input>true</input>
<name id="111">input["RatingsType"]</name>
<stringValue id="112">RatingsType</stringValue>
<type>VARIABLE</type>
</item>
<item id="113" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="114">["ReProcessProcessedFiles"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="115">input["ReProcessProcessedFiles"]</name>
<stringValue id="116">ReProcessProcessedFiles</stringValue>
<type>VARIABLE</type>
</item>
<item id="117" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="118">["SortOrder"]@com/j2fe/feeds/activities/ListFiles$Sort@</UITypeHint>
<input>true</input>
<name id="119">input["SortOrder"]</name>
<stringValue id="120">SortOrder</stringValue>
<type>VARIABLE</type>
</item>
<item id="121" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="122">["StagingBulkSize"]@java/lang/Integer@</UITypeHint>
<input>true</input>
<name id="123">input["StagingBulkSize"]</name>
<stringValue id="124">StagingBulkSize</stringValue>
<type>VARIABLE</type>
</item>
<item id="125" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="126">["StagingParentJobID"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="127">input["StagingParentJobID"]</name>
<stringValue id="128">StagingParentJobID</stringValue>
<type>VARIABLE</type>
</item>
<item id="129" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="130">["SuccessAction"]@com/j2fe/feeds/SuccessAction@</UITypeHint>
<input>true</input>
<name id="131">input["SuccessAction"]</name>
<stringValue id="132">SuccessAction</stringValue>
<type>VARIABLE</type>
</item>
<item id="133" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="134">["VendorDefinition"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="135">input["VendorDefinition"]</name>
<stringValue id="136">VendorDefinition</stringValue>
<type>VARIABLE</type>
</item>
<item id="137" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="138">["VendorDirectories"]@[Ljava/lang/String;@</UITypeHint>
<input>true</input>
<name id="139">input["VendorDirectories"]</name>
<stringValue id="140">VendorDirectories</stringValue>
<type>VARIABLE</type>
</item>
<item id="141" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="142">["considerNewInstrAddedToSOIEOI"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="143">input["considerNewInstrAddedToSOIEOI"]</name>
<stringValue id="144">considerNewInstrAddedToSOIEOI</stringValue>
<type>VARIABLE</type>
</item>
<item id="145" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="146">["considerOnlyDateNewInstr"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="147">input["considerOnlyDateNewInstr"]</name>
<stringValue id="148">considerOnlyDateNewInstr</stringValue>
<type>VARIABLE</type>
</item>
<item id="149" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="150">["considerSOIEOIonly"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="151">input["considerSOIEOIonly"]</name>
<stringValue id="152">considerSOIEOIonly</stringValue>
<type>VARIABLE</type>
</item>
<item id="153" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="154">["resetFailedParticipantsInSoi"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="155">input["resetFailedParticipantsInSoi"]</name>
<stringValue id="156">resetFailedParticipantsInSoi</stringValue>
<type>VARIABLE</type>
</item>
<item id="157" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="158">name</name>
<stringValue id="159">SNPRatingsParent</stringValue>
<type>CONSTANT</type>
</item>
</parameters>
<sources id="160" type="java.util.HashSet">
<item id="161" type="com.j2fe.workflow.definition.Transition">
<name id="162">goto-next</name>
<source id="163">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="3"/>
<directJoin>false</directJoin>
<name id="164">Start</name>
<nodeHandler>com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandler>
<nodeHandlerClass id="165">com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandlerClass>
<sources id="166" type="java.util.HashSet"/>
<targets id="167" type="java.util.HashSet">
<item idref="161" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>START</type>
</source>
<target idref="41"/>
</item>
</sources>
<targets id="168" type="java.util.HashSet">
<item idref="39" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="25"/>
</item>
</sources>
<targets id="169" type="java.util.HashSet">
<item idref="23" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="9"/>
</item>
</sources>
<targets id="170" type="java.util.HashSet">
<item idref="7" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="2"/>
</item>
</sources>
<targets id="171" type="java.util.HashSet"/>
<type>END</type>
</endNode>
<forcePurgeAtEnd>false</forcePurgeAtEnd>
<group id="172">Custom/Processing</group>
<haltOnError>false</haltOnError>
<lastChangeUser id="173">user1</lastChangeUser>
<lastUpdate id="174">2024-05-28T22:05:47.000-0400</lastUpdate>
<name id="175">Nuveen_LevFin_SNPRatingsParent_Wrapper</name>
<optimize>true</optimize>
<parameter id="176" type="java.util.HashMap">
<entry>
<key id="177" type="java.lang.String">BulkFilePatterns</key>
<value id="178" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="179">[Ljava.lang.String;</className>
<clazz>[Ljava.lang.String;</clazz>
<description id="180">File patterns to be considered in preparation of files in BulkOutputDirectory.</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="181" type="java.lang.String">BulkRange</key>
<value id="182" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="183">java.lang.Integer</className>
<clazz>java.lang.Integer</clazz>
<description id="184">Number of bulks need to be processed in parallel during bulking phase.</description>
<input>true</input>
<output>false</output>
<required>true</required>
</value>
</entry>
<entry>
<key id="185" type="java.lang.String">BulkSize</key>
<value id="186" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="187">java.lang.Integer</className>
<clazz>java.lang.Integer</clazz>
<description id="188">BulkSize to determine size of bulk during bulking phase.</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="189" type="java.lang.String">DownloadException</key>
<value id="190" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="191">java.lang.String</className>
<clazz>java.lang.String</clazz>
<input>false</input>
<output>true</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="192" type="java.lang.String">FileLoadEvent</key>
<value id="193" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="194">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="195">FileLoadEvent for loading of bulk files</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="196" type="java.lang.String">FilePatterns</key>
<value id="197" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="198">[Ljava.lang.String;</className>
<clazz>[Ljava.lang.String;</clazz>
<description id="199">FilePatterns to be downloaded from remote SNP directories</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="200" type="java.lang.String">ISSUERGroupPurposeType</key>
<value id="201" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="202">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="203">This parameter  specifies Group Purpose type of ISSUER.</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="204" type="java.lang.String">ISSUGroupPurposeType</key>
<value id="205" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="206">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="207">This parameter  specifies Group Purpose type of ISSU.</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="208" type="java.lang.String">InputDirectory</key>
<value id="209" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="210">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="211">The directory it uses to store unzipped files.</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="212" type="java.lang.String">IsFullFile</key>
<value id="213" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="214">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<input>true</input>
<output>false</output>
<required>true</required>
</value>
</entry>
<entry>
<key id="215" type="java.lang.String">MessageBulkSize</key>
<value id="216" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="217">java.lang.Integer</className>
<clazz>java.lang.Integer</clazz>
<description id="218">The number of messages which sould be processed in parallel.</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="219" type="java.lang.String">MoveDirectory</key>
<value id="220" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="221">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="222">Directory where zip, staging and bulk output files will be 
will be moved.</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="223" type="java.lang.String">MoveFiles</key>
<value id="224" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="225">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<input>true</input>
<output>false</output>
<required>true</required>
</value>
</entry>
<entry>
<key id="226" type="java.lang.String">NrOfFilesParallel</key>
<value id="227" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="228">java.lang.Integer</className>
<clazz>java.lang.Integer</clazz>
<description id="229">Number of files to be loaded in parallel.</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="230" type="java.lang.String">NrOfStagingFilesParallel</key>
<value id="231" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="232">java.lang.Integer</className>
<clazz>java.lang.Integer</clazz>
<description id="233">Number of Staging Files in Parallel</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="234" type="java.lang.String">OutputDirectory</key>
<value id="235" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="236">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="237">The output directory for generated bulk files.</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="238" type="java.lang.String">ParallelBranches</key>
<value id="239" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="240">java.lang.Integer</className>
<clazz>java.lang.Integer</clazz>
<description id="241">The number of files that are processed in parallel, as long as they belong to the same group (see File Definitions at Business Feed).</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="242" type="java.lang.String">RatingsType</key>
<value id="243" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="244">com.j2fe.connector.RatingsType</className>
<clazz>com.j2fe.connector.RatingsType</clazz>
<input>true</input>
<output>false</output>
<required>true</required>
</value>
</entry>
<entry>
<key id="245" type="java.lang.String">ReProcessProcessedFiles</key>
<value id="246" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="247">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<input>true</input>
<output>false</output>
<required>true</required>
</value>
</entry>
<entry>
<key id="248" type="java.lang.String">SortOrder</key>
<value id="249" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="250">com.j2fe.feeds.activities.ListFiles$Sort</className>
<clazz>com.j2fe.feeds.activities.ListFiles$Sort</clazz>
<description id="251">The parameter denotes order in which files need to be sorted .
Default value is set to FILESIZE where bigger file would be picked up first for loading .
Note : If Client downloads multiple dated Changes file together for processing than the parameter value  needs to be changed to TIME.</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="252" type="java.lang.String">StagingBulkSize</key>
<value id="253" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="254">java.lang.Integer</className>
<clazz>java.lang.Integer</clazz>
<description id="255">The number of messages from a file which are processed in parallel.</description>
<input>true</input>
<output>false</output>
<required>true</required>
</value>
</entry>
<entry>
<key id="256" type="java.lang.String">StagingException</key>
<value id="257" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="258">java.lang.String</className>
<clazz>java.lang.String</clazz>
<input>false</input>
<output>true</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="259" type="java.lang.String">StagingParentJobID</key>
<value id="260" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="261">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="262">StagingParentJobID</description>
<input>true</input>
<output>true</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="263" type="java.lang.String">SuccessAction</key>
<value id="264" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="265">com.j2fe.feeds.SuccessAction</className>
<clazz>com.j2fe.feeds.SuccessAction</clazz>
<description id="266">What should be done with the file after processing. MOVE or LEAVE (no action) or DELETE.</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="267" type="java.lang.String">VendorDefinition</key>
<value id="268" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="269">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="270">The vendor definition is used to find the message types and business feeds of the files in the directory. Only files which belong to the different Business Feeds will be processed.
Either the vendor or the business feed has to be provided to the WF.</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="271" type="java.lang.String">VendorDirectories</key>
<value id="272" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="273">[Ljava.lang.String;</className>
<clazz>[Ljava.lang.String;</clazz>
<description id="274">Remote SNP Directories</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="275" type="java.lang.String">considerNewInstrAddedToSOIEOI</key>
<value id="276" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="277">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description id="278">To Consider those instruments which are newly added to SOI/EOI</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="279" type="java.lang.String">considerOnlyDateNewInstr</key>
<value id="280" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="281">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description id="282">This parameter is set true when only  date needs to be considered while quering the LAS_PROC_TMS column of EOIP table  .</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="283" type="java.lang.String">considerSOIEOIonly</key>
<value id="284" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="285">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description id="286">To Condider instruments which are only a part of SOI/EOI</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="287" type="java.lang.String">resetFailedParticipantsInSoi</key>
<value id="288" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="289">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description id="290">These flag indicates whether the user wants to reset the System Date of the particular Instrument in the SOI Group whose records have failed with severity 40/50 , so that they are picked up in next processing.</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
</parameter>
<permissions id="291" type="java.util.HashSet"/>
<priority>50</priority>
<purgeAtEnd>false</purgeAtEnd>
<retries>0</retries>
<startNode idref="163"/>
<status>RELEASED</status>
<variables id="292" type="java.util.HashMap">
<entry>
<key id="293" type="java.lang.String">BulkFilePatterns</key>
<value id="294" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="295">[Ljava.lang.String;</className>
<clazz>[Ljava.lang.String;</clazz>
<description id="296">File patterns to be considered in preparation of files in BulkOutputDirectory.</description>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="297" type="java.lang.String">BulkRange</key>
<value id="298" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="299">java.lang.Integer</className>
<clazz>java.lang.Integer</clazz>
<description id="300">Number of bulks need to be processed in parallel during bulking phase.</description>
<persistent>false</persistent>
<value id="301" type="java.lang.Integer">10</value>
</value>
</entry>
<entry>
<key id="302" type="java.lang.String">BulkSize</key>
<value id="303" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="304">java.lang.Integer</className>
<clazz>java.lang.Integer</clazz>
<description id="305">BulkSize to determine size of bulk during bulking phase.</description>
<persistent>false</persistent>
<value id="306" type="java.lang.Integer">20000</value>
</value>
</entry>
<entry>
<key id="307" type="java.lang.String">DownloadException</key>
<value id="308" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="309">java.lang.String</className>
<clazz>java.lang.String</clazz>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="310" type="java.lang.String">FileLoadEvent</key>
<value id="311" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="312">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="313">FileLoadEvent for loading of bulk files</description>
<persistent>false</persistent>
<value id="314" type="java.lang.String">StandardFileLoad</value>
</value>
</entry>
<entry>
<key id="315" type="java.lang.String">FilePatterns</key>
<value id="316" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="317">[Ljava.lang.String;</className>
<clazz>[Ljava.lang.String;</clazz>
<description id="318">FilePatterns to be downloaded from remote SNP directories</description>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="319" type="java.lang.String">ISSUERGroupPurposeType</key>
<value id="320" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="321">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="322">This parameter  specifies Group Purpose type of ISSUER.</description>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="323" type="java.lang.String">ISSUGroupPurposeType</key>
<value id="324" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="325">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="326">This parameter  specifies Group Purpose type of ISSU.</description>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="327" type="java.lang.String">InputDirectory</key>
<value id="328" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="329">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="330">The directory it uses to store unzipped files.</description>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="331" type="java.lang.String">IsFullFile</key>
<value id="332" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="333">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<persistent>false</persistent>
<value id="334" type="java.lang.Boolean">false</value>
</value>
</entry>
<entry>
<key id="335" type="java.lang.String">MessageBulkSize</key>
<value id="336" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="337">java.lang.Integer</className>
<clazz>java.lang.Integer</clazz>
<description id="338">The number of messages which sould be processed in parallel.</description>
<persistent>false</persistent>
<value id="339" type="java.lang.Integer">500</value>
</value>
</entry>
<entry>
<key id="340" type="java.lang.String">Metadata</key>
<value id="341" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="342">java.lang.Object</className>
<clazz>java.lang.Object</clazz>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="343" type="java.lang.String">MoveDirectory</key>
<value id="344" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="345">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="346">Directory where zip, staging and bulk output files will be 
will be moved.</description>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="347" type="java.lang.String">MoveFiles</key>
<value id="348" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="349">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<persistent>false</persistent>
<value idref="334"/>
</value>
</entry>
<entry>
<key id="350" type="java.lang.String">NrOfFilesParallel</key>
<value id="351" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="352">java.lang.Integer</className>
<clazz>java.lang.Integer</clazz>
<description id="353">Number of files to be loaded in parallel.</description>
<persistent>false</persistent>
<value id="354" type="java.lang.Integer">2</value>
</value>
</entry>
<entry>
<key id="355" type="java.lang.String">NrOfStagingFilesParallel</key>
<value id="356" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="357">java.lang.Integer</className>
<clazz>java.lang.Integer</clazz>
<description id="358">Number of Staging Files in Parallel</description>
<persistent>false</persistent>
<value id="359" type="java.lang.Integer">7</value>
</value>
</entry>
<entry>
<key id="360" type="java.lang.String">OutputDirectory</key>
<value id="361" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="362">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="363">The output directory for generated bulk files.</description>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="364" type="java.lang.String">ParallelBranches</key>
<value id="365" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="366">java.lang.Integer</className>
<clazz>java.lang.Integer</clazz>
<description id="367">The number of files that are processed in parallel, as long as they belong to the same group (see File Definitions at Business Feed).</description>
<persistent>false</persistent>
<value idref="354"/>
</value>
</entry>
<entry>
<key id="368" type="java.lang.String">RatingsJob</key>
<value id="369" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="370">java.lang.String</className>
<clazz>java.lang.String</clazz>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="371" type="java.lang.String">RatingsType</key>
<value id="372" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="373">com.j2fe.connector.RatingsType</className>
<clazz>com.j2fe.connector.RatingsType</clazz>
<persistent>false</persistent>
<value id="374" type="com.j2fe.connector.RatingsType">ALL</value>
</value>
</entry>
<entry>
<key id="375" type="java.lang.String">ReProcessProcessedFiles</key>
<value id="376" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="377">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<persistent>false</persistent>
<value idref="334"/>
</value>
</entry>
<entry>
<key id="378" type="java.lang.String">SortOrder</key>
<value id="379" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="380">com.j2fe.feeds.activities.ListFiles$Sort</className>
<clazz>com.j2fe.feeds.activities.ListFiles$Sort</clazz>
<description id="381">The parameter denotes order in which files need to be sorted .
Default value is set to FILESIZE where bigger file would be picked up first for loading .
Note : If Client downloads multiple dated Changes file together for processing than the parameter value  needs to be changed to TIME.</description>
<persistent>false</persistent>
<value id="382" type="com.j2fe.feeds.activities.ListFiles$Sort">FILESIZE</value>
</value>
</entry>
<entry>
<key id="383" type="java.lang.String">StagingBulkSize</key>
<value id="384" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="385">java.lang.Integer</className>
<clazz>java.lang.Integer</clazz>
<description id="386">The number of messages from a file which are processed in parallel.</description>
<persistent>false</persistent>
<value id="387" type="java.lang.Integer">500</value>
</value>
</entry>
<entry>
<key id="388" type="java.lang.String">StagingException</key>
<value id="389" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="390">java.lang.String</className>
<clazz>java.lang.String</clazz>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="391" type="java.lang.String">StagingParentJobID</key>
<value id="392" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="393">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="394">StagingParentJobID</description>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="395" type="java.lang.String">SuccessAction</key>
<value id="396" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="397">com.j2fe.feeds.SuccessAction</className>
<clazz>com.j2fe.feeds.SuccessAction</clazz>
<description id="398">What should be done with the file after processing. MOVE or LEAVE (no action) or DELETE.</description>
<persistent>false</persistent>
<value id="399" type="com.j2fe.feeds.SuccessAction">LEAVE</value>
</value>
</entry>
<entry>
<key id="400" type="java.lang.String">VendorDefinition</key>
<value id="401" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="402">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="403">The vendor definition is used to find the message types and business feeds of the files in the directory. Only files which belong to the different Business Feeds will be processed.
Either the vendor or the business feed has to be provided to the WF.</description>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="404" type="java.lang.String">VendorDirectories</key>
<value id="405" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="406">[Ljava.lang.String;</className>
<clazz>[Ljava.lang.String;</clazz>
<description id="407">Remote SNP Directories</description>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="408" type="java.lang.String">considerNewInstrAddedToSOIEOI</key>
<value id="409" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="410">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description id="411">To Consider those instruments which are newly added to SOI/EOI</description>
<persistent>false</persistent>
<value idref="334"/>
</value>
</entry>
<entry>
<key id="412" type="java.lang.String">considerOnlyDateNewInstr</key>
<value id="413" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="414">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description id="415">This parameter is set true when only  date needs to be considered while quering the LAS_PROC_TMS column of EOIP table  .</description>
<persistent>false</persistent>
<value idref="334"/>
</value>
</entry>
<entry>
<key id="416" type="java.lang.String">considerSOIEOIonly</key>
<value id="417" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="418">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description id="419">To Condider instruments which are only a part of SOI/EOI</description>
<persistent>false</persistent>
<value idref="334"/>
</value>
</entry>
<entry>
<key id="420" type="java.lang.String">resetFailedParticipantsInSoi</key>
<value id="421" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="422">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description id="423">These flag indicates whether the user wants to reset the System Date of the particular Instrument in the SOI Group whose records have failed with severity 40/50 , so that they are picked up in next processing.</description>
<persistent>false</persistent>
<value idref="334"/>
</value>
</entry>
</variables>
<version>2</version>
</com.j2fe.workflow.definition.Workflow>
</businessobject>
</goldensource-package>
