<?xml version="1.0" encoding="UTF-8" standalone="no"?>
<goldensource-package version="8.8.1.66">
<package-comment/>
<businessobject displayString="10 - 20240812-Muni" type="com.j2fe.workflow.definition.Workflow">
<com.j2fe.workflow.definition.Workflow id="0">
<alwaysPersist>false</alwaysPersist>
<clustered>true</clustered>
<comment id="1">20240812-Muni</comment>
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
<stringValue id="18">/edmfs/app/requestreply/muni/snp/ratings/output/</stringValue>
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
<stringValue id="34">/edmfs/app/requestreply/muni/snp/ratings/input/</stringValue>
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
<UITypeHint id="82">["LoadSNPLoanSOIData"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="83">input["LoadSNPLoanSOIData"]</name>
<stringValue id="84">LoadSNPLoanSOIData</stringValue>
<type>VARIABLE</type>
</item>
<item id="85" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="86">["MessageBulkSize"]@java/lang/Integer@</UITypeHint>
<input>true</input>
<name id="87">input["MessageBulkSize"]</name>
<stringValue id="88">MessageBulkSize</stringValue>
<type>VARIABLE</type>
</item>
<item id="89" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="90">["MoveDirectory"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="91">input["MoveDirectory"]</name>
<stringValue id="92">MoveDirectory</stringValue>
<type>VARIABLE</type>
</item>
<item id="93" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="94">["MoveFiles"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="95">input["MoveFiles"]</name>
<stringValue id="96">MoveFiles</stringValue>
<type>VARIABLE</type>
</item>
<item id="97" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="98">["MuniEntityBusinessFeed"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="99">input["MuniEntityBusinessFeed"]</name>
<stringValue id="100">MuniEntityBusinessFeed</stringValue>
<type>VARIABLE</type>
</item>
<item id="101" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="102">["MuniFilePatterns"]@[Ljava/lang/String;@</UITypeHint>
<input>true</input>
<name id="103">input["MuniFilePatterns"]</name>
<stringValue id="104">MuniFilePatterns</stringValue>
<type>VARIABLE</type>
</item>
<item id="105" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="106">["MuniMessageType"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="107">input["MuniMessageType"]</name>
<stringValue id="108">MuniMessageType</stringValue>
<type>VARIABLE</type>
</item>
<item id="109" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="110">["MuniSecurityBusinessFeed"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="111">input["MuniSecurityBusinessFeed"]</name>
<stringValue id="112">MuniSecurityBusinessFeed</stringValue>
<type>VARIABLE</type>
</item>
<item id="113" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="114">["NrOfFilesParallel"]@java/lang/Integer@</UITypeHint>
<input>true</input>
<name id="115">input["NrOfFilesParallel"]</name>
<stringValue id="116">NrOfFilesParallel</stringValue>
<type>VARIABLE</type>
</item>
<item id="117" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="118">["NrOfStagingFilesParallel"]@java/lang/Integer@</UITypeHint>
<input>true</input>
<name id="119">input["NrOfStagingFilesParallel"]</name>
<stringValue id="120">NrOfStagingFilesParallel</stringValue>
<type>VARIABLE</type>
</item>
<item id="121" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="122">["OutputDirectory"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="123">input["OutputDirectory"]</name>
<stringValue id="124">OutputDirectory</stringValue>
<type>VARIABLE</type>
</item>
<item id="125" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="126">["ParallelBranches"]@java/lang/Integer@</UITypeHint>
<input>true</input>
<name id="127">input["ParallelBranches"]</name>
<stringValue id="128">ParallelBranches</stringValue>
<type>VARIABLE</type>
</item>
<item id="129" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="130">["RatingsType"]@com/j2fe/connector/RatingsType@</UITypeHint>
<input>true</input>
<name id="131">input["RatingsType"]</name>
<stringValue id="132">RatingsType</stringValue>
<type>VARIABLE</type>
</item>
<item id="133" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="134">["ReProcessProcessedFiles"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="135">input["ReProcessProcessedFiles"]</name>
<stringValue id="136">ReProcessProcessedFiles</stringValue>
<type>VARIABLE</type>
</item>
<item id="137" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="138">["SortOrder"]@com/j2fe/feeds/activities/ListFiles$Sort@</UITypeHint>
<input>true</input>
<name id="139">input["SortOrder"]</name>
<stringValue id="140">SortOrder</stringValue>
<type>VARIABLE</type>
</item>
<item id="141" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="142">["StagingBulkSize"]@java/lang/Integer@</UITypeHint>
<input>true</input>
<name id="143">input["StagingBulkSize"]</name>
<stringValue id="144">StagingBulkSize</stringValue>
<type>VARIABLE</type>
</item>
<item id="145" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="146">["StagingParentJobID"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="147">input["StagingParentJobID"]</name>
<stringValue id="148">StagingParentJobID</stringValue>
<type>VARIABLE</type>
</item>
<item id="149" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="150">["SuccessAction"]@com/j2fe/feeds/SuccessAction@</UITypeHint>
<input>true</input>
<name id="151">input["SuccessAction"]</name>
<stringValue id="152">SuccessAction</stringValue>
<type>VARIABLE</type>
</item>
<item id="153" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="154">["VendorDefinition"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="155">input["VendorDefinition"]</name>
<stringValue id="156">VendorDefinition</stringValue>
<type>VARIABLE</type>
</item>
<item id="157" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="158">["VendorDirectories"]@[Ljava/lang/String;@</UITypeHint>
<input>true</input>
<name id="159">input["VendorDirectories"]</name>
<stringValue id="160">VendorDirectories</stringValue>
<type>VARIABLE</type>
</item>
<item id="161" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="162">["considerNewInstrAddedToSOIEOI"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="163">input["considerNewInstrAddedToSOIEOI"]</name>
<stringValue id="164">considerNewInstrAddedToSOIEOI</stringValue>
<type>VARIABLE</type>
</item>
<item id="165" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="166">["considerOnlyDateNewInstr"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="167">input["considerOnlyDateNewInstr"]</name>
<stringValue id="168">considerOnlyDateNewInstr</stringValue>
<type>VARIABLE</type>
</item>
<item id="169" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="170">["considerSOIEOIonly"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="171">input["considerSOIEOIonly"]</name>
<stringValue id="172">considerSOIEOIonly</stringValue>
<type>VARIABLE</type>
</item>
<item id="173" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="174">["resetFailedParticipantsInSoi"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="175">input["resetFailedParticipantsInSoi"]</name>
<stringValue id="176">resetFailedParticipantsInSoi</stringValue>
<type>VARIABLE</type>
</item>
<item id="177" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="178">name</name>
<stringValue id="179">SNPRatingsParent_NuveenMuni</stringValue>
<type>CONSTANT</type>
</item>
</parameters>
<sources id="180" type="java.util.HashSet">
<item id="181" type="com.j2fe.workflow.definition.Transition">
<name id="182">goto-next</name>
<source id="183">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="3"/>
<directJoin>false</directJoin>
<name id="184">Start</name>
<nodeHandler>com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandler>
<nodeHandlerClass id="185">com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandlerClass>
<sources id="186" type="java.util.HashSet"/>
<targets id="187" type="java.util.HashSet">
<item idref="181" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>START</type>
</source>
<target idref="41"/>
</item>
</sources>
<targets id="188" type="java.util.HashSet">
<item idref="39" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="25"/>
</item>
</sources>
<targets id="189" type="java.util.HashSet">
<item idref="23" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="9"/>
</item>
</sources>
<targets id="190" type="java.util.HashSet">
<item idref="7" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="2"/>
</item>
</sources>
<targets id="191" type="java.util.HashSet"/>
<type>END</type>
</endNode>
<forcePurgeAtEnd>false</forcePurgeAtEnd>
<group id="192">Custom/Processing</group>
<haltOnError>false</haltOnError>
<lastChangeUser id="193">user1</lastChangeUser>
<lastUpdate id="194">2024-09-16T09:07:40.000-0400</lastUpdate>
<name id="195">Nuveen_Muni_SNPRatingsParent_Wrapper</name>
<optimize>true</optimize>
<parameter id="196" type="java.util.HashMap">
<entry>
<key id="197" type="java.lang.String">BulkFilePatterns</key>
<value id="198" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="199">[Ljava.lang.String;</className>
<clazz>[Ljava.lang.String;</clazz>
<description id="200">File patterns to be considered in preparation of files in BulkOutputDirectory.</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="201" type="java.lang.String">BulkRange</key>
<value id="202" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="203">java.lang.Integer</className>
<clazz>java.lang.Integer</clazz>
<description id="204">Number of bulks need to be processed in parallel during bulking phase.</description>
<input>true</input>
<output>false</output>
<required>true</required>
</value>
</entry>
<entry>
<key id="205" type="java.lang.String">BulkSize</key>
<value id="206" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="207">java.lang.Integer</className>
<clazz>java.lang.Integer</clazz>
<description id="208">BulkSize to determine size of bulk during bulking phase.</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="209" type="java.lang.String">DownloadException</key>
<value id="210" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="211">java.lang.String</className>
<clazz>java.lang.String</clazz>
<input>false</input>
<output>true</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="212" type="java.lang.String">FileLoadEvent</key>
<value id="213" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="214">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="215">FileLoadEvent for loading of bulk files</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="216" type="java.lang.String">FilePatterns</key>
<value id="217" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="218">[Ljava.lang.String;</className>
<clazz>[Ljava.lang.String;</clazz>
<description id="219">FilePatterns to be downloaded from remote SNP directories</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="220" type="java.lang.String">ISSUERGroupPurposeType</key>
<value id="221" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="222">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="223">This parameter  specifies Group Purpose type of ISSUER.</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="224" type="java.lang.String">ISSUGroupPurposeType</key>
<value id="225" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="226">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="227">This parameter  specifies Group Purpose type of ISSU.</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="228" type="java.lang.String">InputDirectory</key>
<value id="229" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="230">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="231">The directory it uses to store unzipped files.</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="232" type="java.lang.String">IsFullFile</key>
<value id="233" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="234">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<input>true</input>
<output>false</output>
<required>true</required>
</value>
</entry>
<entry>
<key id="235" type="java.lang.String">LoadSNPLoanSOIData</key>
<value id="236" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="237">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description idref="3"/>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="238" type="java.lang.String">MessageBulkSize</key>
<value id="239" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="240">java.lang.Integer</className>
<clazz>java.lang.Integer</clazz>
<description id="241">The number of messages which sould be processed in parallel.</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="242" type="java.lang.String">MoveDirectory</key>
<value id="243" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="244">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="245">Directory where zip, staging and bulk output files will be 
will be moved.</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="246" type="java.lang.String">MoveFiles</key>
<value id="247" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="248">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<input>true</input>
<output>false</output>
<required>true</required>
</value>
</entry>
<entry>
<key id="249" type="java.lang.String">MuniEntityBusinessFeed</key>
<value id="250" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="251">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="3"/>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="252" type="java.lang.String">MuniFilePatterns</key>
<value id="253" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="254">[Ljava.lang.String;</className>
<clazz>[Ljava.lang.String;</clazz>
<description idref="3"/>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="255" type="java.lang.String">MuniMessageType</key>
<value id="256" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="257">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="3"/>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="258" type="java.lang.String">MuniSecurityBusinessFeed</key>
<value id="259" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="260">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="3"/>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="261" type="java.lang.String">NrOfFilesParallel</key>
<value id="262" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="263">java.lang.Integer</className>
<clazz>java.lang.Integer</clazz>
<description id="264">Number of files to be loaded in parallel.</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="265" type="java.lang.String">NrOfStagingFilesParallel</key>
<value id="266" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="267">java.lang.Integer</className>
<clazz>java.lang.Integer</clazz>
<description id="268">Number of Staging Files in Parallel</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="269" type="java.lang.String">OutputDirectory</key>
<value id="270" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="271">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="272">The output directory for generated bulk files.</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="273" type="java.lang.String">ParallelBranches</key>
<value id="274" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="275">java.lang.Integer</className>
<clazz>java.lang.Integer</clazz>
<description id="276">The number of files that are processed in parallel, as long as they belong to the same group (see File Definitions at Business Feed).</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="277" type="java.lang.String">RatingsType</key>
<value id="278" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="279">com.j2fe.connector.RatingsType</className>
<clazz>com.j2fe.connector.RatingsType</clazz>
<input>true</input>
<output>false</output>
<required>true</required>
</value>
</entry>
<entry>
<key id="280" type="java.lang.String">ReProcessProcessedFiles</key>
<value id="281" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="282">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<input>true</input>
<output>false</output>
<required>true</required>
</value>
</entry>
<entry>
<key id="283" type="java.lang.String">SortOrder</key>
<value id="284" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="285">com.j2fe.feeds.activities.ListFiles$Sort</className>
<clazz>com.j2fe.feeds.activities.ListFiles$Sort</clazz>
<description id="286">The parameter denotes order in which files need to be sorted .
Default value is set to FILESIZE where bigger file would be picked up first for loading .
Note : If Client downloads multiple dated Changes file together for processing than the parameter value  needs to be changed to TIME.</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="287" type="java.lang.String">StagingBulkSize</key>
<value id="288" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="289">java.lang.Integer</className>
<clazz>java.lang.Integer</clazz>
<description id="290">The number of messages from a file which are processed in parallel.</description>
<input>true</input>
<output>false</output>
<required>true</required>
</value>
</entry>
<entry>
<key id="291" type="java.lang.String">StagingException</key>
<value id="292" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="293">java.lang.String</className>
<clazz>java.lang.String</clazz>
<input>false</input>
<output>true</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="294" type="java.lang.String">StagingParentJobID</key>
<value id="295" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="296">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="297">StagingParentJobID</description>
<input>true</input>
<output>true</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="298" type="java.lang.String">SuccessAction</key>
<value id="299" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="300">com.j2fe.feeds.SuccessAction</className>
<clazz>com.j2fe.feeds.SuccessAction</clazz>
<description id="301">What should be done with the file after processing. MOVE or LEAVE (no action) or DELETE.</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="302" type="java.lang.String">VendorDefinition</key>
<value id="303" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="304">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="305">The vendor definition is used to find the message types and business feeds of the files in the directory. Only files which belong to the different Business Feeds will be processed.
Either the vendor or the business feed has to be provided to the WF.</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="306" type="java.lang.String">VendorDirectories</key>
<value id="307" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="308">[Ljava.lang.String;</className>
<clazz>[Ljava.lang.String;</clazz>
<description id="309">Remote SNP Directories</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="310" type="java.lang.String">considerNewInstrAddedToSOIEOI</key>
<value id="311" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="312">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description id="313">To Consider those instruments which are newly added to SOI/EOI</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="314" type="java.lang.String">considerOnlyDateNewInstr</key>
<value id="315" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="316">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description id="317">This parameter is set true when only  date needs to be considered while quering the LAS_PROC_TMS column of EOIP table  .</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="318" type="java.lang.String">considerSOIEOIonly</key>
<value id="319" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="320">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description id="321">To Condider instruments which are only a part of SOI/EOI</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="322" type="java.lang.String">resetFailedParticipantsInSoi</key>
<value id="323" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="324">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description id="325">These flag indicates whether the user wants to reset the System Date of the particular Instrument in the SOI Group whose records have failed with severity 40/50 , so that they are picked up in next processing.</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
</parameter>
<permissions id="326" type="java.util.HashSet"/>
<priority>50</priority>
<purgeAtEnd>false</purgeAtEnd>
<retries>0</retries>
<startNode idref="183"/>
<status>RELEASED</status>
<variables id="327" type="java.util.HashMap">
<entry>
<key id="328" type="java.lang.String">BulkFilePatterns</key>
<value id="329" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="330">[Ljava.lang.String;</className>
<clazz>[Ljava.lang.String;</clazz>
<description id="331">File patterns to be considered in preparation of files in BulkOutputDirectory.</description>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="332" type="java.lang.String">BulkRange</key>
<value id="333" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="334">java.lang.Integer</className>
<clazz>java.lang.Integer</clazz>
<description id="335">Number of bulks need to be processed in parallel during bulking phase.</description>
<persistent>false</persistent>
<value id="336" type="java.lang.Integer">10</value>
</value>
</entry>
<entry>
<key id="337" type="java.lang.String">BulkSize</key>
<value id="338" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="339">java.lang.Integer</className>
<clazz>java.lang.Integer</clazz>
<description id="340">BulkSize to determine size of bulk during bulking phase.</description>
<persistent>false</persistent>
<value id="341" type="java.lang.Integer">20000</value>
</value>
</entry>
<entry>
<key id="342" type="java.lang.String">DownloadException</key>
<value id="343" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="344">java.lang.String</className>
<clazz>java.lang.String</clazz>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="345" type="java.lang.String">FileLoadEvent</key>
<value id="346" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="347">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="348">FileLoadEvent for loading of bulk files</description>
<persistent>false</persistent>
<value id="349" type="java.lang.String">StandardFileLoad</value>
</value>
</entry>
<entry>
<key id="350" type="java.lang.String">FilePatterns</key>
<value id="351" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="352">[Ljava.lang.String;</className>
<clazz>[Ljava.lang.String;</clazz>
<description id="353">FilePatterns to be downloaded from remote SNP directories</description>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="354" type="java.lang.String">ISSUERGroupPurposeType</key>
<value id="355" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="356">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="357">This parameter  specifies Group Purpose type of ISSUER.</description>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="358" type="java.lang.String">ISSUGroupPurposeType</key>
<value id="359" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="360">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="361">This parameter  specifies Group Purpose type of ISSU.</description>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="362" type="java.lang.String">InputDirectory</key>
<value id="363" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="364">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="365">The directory it uses to store unzipped files.</description>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="366" type="java.lang.String">IsFullFile</key>
<value id="367" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="368">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<persistent>false</persistent>
<value id="369" type="java.lang.Boolean">false</value>
</value>
</entry>
<entry>
<key id="370" type="java.lang.String">LoadSNPLoanSOIData</key>
<value id="371" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="372">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description idref="3"/>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="373" type="java.lang.String">MessageBulkSize</key>
<value id="374" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="375">java.lang.Integer</className>
<clazz>java.lang.Integer</clazz>
<description id="376">The number of messages which sould be processed in parallel.</description>
<persistent>false</persistent>
<value id="377" type="java.lang.Integer">500</value>
</value>
</entry>
<entry>
<key id="378" type="java.lang.String">Metadata</key>
<value id="379" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="380">java.lang.Object</className>
<clazz>java.lang.Object</clazz>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="381" type="java.lang.String">MoveDirectory</key>
<value id="382" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="383">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="384">Directory where zip, staging and bulk output files will be 
will be moved.</description>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="385" type="java.lang.String">MoveFiles</key>
<value id="386" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="387">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<persistent>false</persistent>
<value idref="369"/>
</value>
</entry>
<entry>
<key id="388" type="java.lang.String">MuniEntityBusinessFeed</key>
<value id="389" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="390">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="3"/>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="391" type="java.lang.String">MuniFilePatterns</key>
<value id="392" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="393">[Ljava.lang.String;</className>
<clazz>[Ljava.lang.String;</clazz>
<description idref="3"/>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="394" type="java.lang.String">MuniMessageType</key>
<value id="395" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="396">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="3"/>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="397" type="java.lang.String">MuniSecurityBusinessFeed</key>
<value id="398" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="399">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="3"/>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="400" type="java.lang.String">NrOfFilesParallel</key>
<value id="401" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="402">java.lang.Integer</className>
<clazz>java.lang.Integer</clazz>
<description id="403">Number of files to be loaded in parallel.</description>
<persistent>false</persistent>
<value id="404" type="java.lang.Integer">2</value>
</value>
</entry>
<entry>
<key id="405" type="java.lang.String">NrOfStagingFilesParallel</key>
<value id="406" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="407">java.lang.Integer</className>
<clazz>java.lang.Integer</clazz>
<description id="408">Number of Staging Files in Parallel</description>
<persistent>false</persistent>
<value id="409" type="java.lang.Integer">7</value>
</value>
</entry>
<entry>
<key id="410" type="java.lang.String">OutputDirectory</key>
<value id="411" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="412">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="413">The output directory for generated bulk files.</description>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="414" type="java.lang.String">ParallelBranches</key>
<value id="415" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="416">java.lang.Integer</className>
<clazz>java.lang.Integer</clazz>
<description id="417">The number of files that are processed in parallel, as long as they belong to the same group (see File Definitions at Business Feed).</description>
<persistent>false</persistent>
<value idref="404"/>
</value>
</entry>
<entry>
<key id="418" type="java.lang.String">RatingsJob</key>
<value id="419" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="420">java.lang.String</className>
<clazz>java.lang.String</clazz>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="421" type="java.lang.String">RatingsType</key>
<value id="422" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="423">com.j2fe.connector.RatingsType</className>
<clazz>com.j2fe.connector.RatingsType</clazz>
<persistent>false</persistent>
<value id="424" type="com.j2fe.connector.RatingsType">ALL</value>
</value>
</entry>
<entry>
<key id="425" type="java.lang.String">ReProcessProcessedFiles</key>
<value id="426" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="427">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<persistent>false</persistent>
<value idref="369"/>
</value>
</entry>
<entry>
<key id="428" type="java.lang.String">SortOrder</key>
<value id="429" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="430">com.j2fe.feeds.activities.ListFiles$Sort</className>
<clazz>com.j2fe.feeds.activities.ListFiles$Sort</clazz>
<description id="431">The parameter denotes order in which files need to be sorted .
Default value is set to FILESIZE where bigger file would be picked up first for loading .
Note : If Client downloads multiple dated Changes file together for processing than the parameter value  needs to be changed to TIME.</description>
<persistent>false</persistent>
<value id="432" type="com.j2fe.feeds.activities.ListFiles$Sort">FILESIZE</value>
</value>
</entry>
<entry>
<key id="433" type="java.lang.String">StagingBulkSize</key>
<value id="434" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="435">java.lang.Integer</className>
<clazz>java.lang.Integer</clazz>
<description id="436">The number of messages from a file which are processed in parallel.</description>
<persistent>false</persistent>
<value id="437" type="java.lang.Integer">500</value>
</value>
</entry>
<entry>
<key id="438" type="java.lang.String">StagingException</key>
<value id="439" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="440">java.lang.String</className>
<clazz>java.lang.String</clazz>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="441" type="java.lang.String">StagingParentJobID</key>
<value id="442" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="443">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="444">StagingParentJobID</description>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="445" type="java.lang.String">SuccessAction</key>
<value id="446" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="447">com.j2fe.feeds.SuccessAction</className>
<clazz>com.j2fe.feeds.SuccessAction</clazz>
<description id="448">What should be done with the file after processing. MOVE or LEAVE (no action) or DELETE.</description>
<persistent>false</persistent>
<value id="449" type="com.j2fe.feeds.SuccessAction">LEAVE</value>
</value>
</entry>
<entry>
<key id="450" type="java.lang.String">VendorDefinition</key>
<value id="451" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="452">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="453">The vendor definition is used to find the message types and business feeds of the files in the directory. Only files which belong to the different Business Feeds will be processed.
Either the vendor or the business feed has to be provided to the WF.</description>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="454" type="java.lang.String">VendorDirectories</key>
<value id="455" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="456">[Ljava.lang.String;</className>
<clazz>[Ljava.lang.String;</clazz>
<description id="457">Remote SNP Directories</description>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="458" type="java.lang.String">considerNewInstrAddedToSOIEOI</key>
<value id="459" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="460">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description id="461">To Consider those instruments which are newly added to SOI/EOI</description>
<persistent>false</persistent>
<value idref="369"/>
</value>
</entry>
<entry>
<key id="462" type="java.lang.String">considerOnlyDateNewInstr</key>
<value id="463" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="464">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description id="465">This parameter is set true when only  date needs to be considered while quering the LAS_PROC_TMS column of EOIP table  .</description>
<persistent>false</persistent>
<value idref="369"/>
</value>
</entry>
<entry>
<key id="466" type="java.lang.String">considerSOIEOIonly</key>
<value id="467" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="468">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description id="469">To Condider instruments which are only a part of SOI/EOI</description>
<persistent>false</persistent>
<value idref="369"/>
</value>
</entry>
<entry>
<key id="470" type="java.lang.String">resetFailedParticipantsInSoi</key>
<value id="471" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="472">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description id="473">These flag indicates whether the user wants to reset the System Date of the particular Instrument in the SOI Group whose records have failed with severity 40/50 , so that they are picked up in next processing.</description>
<persistent>false</persistent>
<value idref="369"/>
</value>
</entry>
</variables>
<version>10</version>
</com.j2fe.workflow.definition.Workflow>
</businessobject>
</goldensource-package>
