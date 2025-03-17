<?xml version="1.0" encoding="UTF-8" standalone="no"?>
<goldensource-package version="8.8.1.59">
<package-comment/>
<businessobject displayString="3 - 8.8.1.23:SFTP_FileSystem" type="com.j2fe.workflow.definition.Workflow">
<com.j2fe.workflow.definition.Workflow id="0">
<alwaysPersist>false</alwaysPersist>
<clustered>true</clustered>
<comment id="1">8.8.1.23:SFTP_FileSystem</comment>
<description id="2">This workflow is for processing Fitch files (from Fitch FTP account)</description>
<endNode id="3">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description id="4"/>
<directJoin>false</directJoin>
<name id="5">END</name>
<nodeHandler>com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandler>
<nodeHandlerClass id="6">com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandlerClass>
<sources id="7" type="java.util.HashSet">
<item id="8" type="com.j2fe.workflow.definition.Transition">
<name id="9">empty</name>
<source id="10">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="4"/>
<directJoin>false</directJoin>
<name id="11">List Files</name>
<nodeHandler>com.j2fe.feeds.activities.ListFiles</nodeHandler>
<nodeHandlerClass id="12">com.j2fe.feeds.activities.ListFiles</nodeHandlerClass>
<parameters id="13" type="java.util.HashSet">
<item id="14" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="15">businessFeedFilter</name>
<stringValue id="16">BusinessFeed</stringValue>
<type>VARIABLE</type>
</item>
<item id="17" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="18">dataSourceFilter</name>
<stringValue id="19">VendorDefinition</stringValue>
<type>VARIABLE</type>
</item>
<item id="20" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="21">directory</name>
<stringValue id="22">Directory</stringValue>
<type>VARIABLE</type>
</item>
<item id="23" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="24">fileSystemId</name>
<stringValue id="25">FileSystemName</stringValue>
<type>VARIABLE</type>
</item>
<item id="26" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="27">includeBoth</name>
<stringValue id="28">IncludeFilePatternNBusinessFeed</stringValue>
<type>VARIABLE</type>
</item>
<item id="29" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="30">list</name>
<stringValue id="31">Files</stringValue>
<type>VARIABLE</type>
</item>
<item id="32" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="33">pattern</name>
<stringValue id="34">FilePatterns</stringValue>
<type>VARIABLE</type>
</item>
<item id="35" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="36">recursive</name>
<stringValue id="37">RecursiveSearch</stringValue>
<type>VARIABLE</type>
</item>
<item id="38" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="39">sort</name>
<stringValue id="40">SortOrder</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="41" type="java.util.HashSet">
<item id="42" type="com.j2fe.workflow.definition.Transition">
<name id="43">SFTP</name>
<source id="44">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="4"/>
<directJoin>false</directJoin>
<name id="45">Switch Case</name>
<nodeHandler>com.j2fe.workflow.handler.impl.SwitchCaseSplit</nodeHandler>
<nodeHandlerClass id="46">com.j2fe.workflow.handler.impl.SwitchCaseSplit</nodeHandlerClass>
<parameters id="47" type="java.util.HashSet">
<item id="48" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="49">caseItem</name>
<stringValue id="50">FitchFileSystemType</stringValue>
<type>VARIABLE</type>
</item>
<item id="51" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="52">defaultItem</name>
<stringValue id="53">false</stringValue>
<type>CONSTANT</type>
</item>
<item id="54" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="55">nullTransition</name>
<stringValue id="56">false</stringValue>
<type>CONSTANT</type>
</item>
</parameters>
<sources id="57" type="java.util.HashSet">
<item id="58" type="com.j2fe.workflow.definition.Transition">
<name id="59">false</name>
<source id="60">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="4"/>
<directJoin>false</directJoin>
<name id="61">Is Workflow Running?</name>
<nodeHandler>com.j2fe.feeds.activities.CheckRunningWorkflows</nodeHandler>
<nodeHandlerClass id="62">com.j2fe.feeds.activities.CheckRunningWorkflows</nodeHandlerClass>
<parameters id="63" type="java.util.HashSet">
<item id="64" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="65">businessFeed</name>
<stringValue id="66">BusinessFeed</stringValue>
<type>VARIABLE</type>
</item>
<item id="67" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="68">uri</name>
<stringValue id="69">Directory</stringValue>
<type>VARIABLE</type>
</item>
<item id="70" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="71">vendorDefinition</name>
<stringValue id="72">VendorDefinition</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="73" type="java.util.HashSet">
<item id="74" type="com.j2fe.workflow.definition.Transition">
<name id="75">goto-next</name>
<source id="76">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="4"/>
<directJoin>false</directJoin>
<name id="77">START</name>
<nodeHandler>com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandler>
<nodeHandlerClass id="78">com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandlerClass>
<sources id="79" type="java.util.HashSet"/>
<targets id="80" type="java.util.HashSet">
<item idref="74" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>START</type>
</source>
<target idref="60"/>
</item>
</sources>
<targets id="81" type="java.util.HashSet">
<item idref="58" type="com.j2fe.workflow.definition.Transition"/>
<item id="82" type="com.j2fe.workflow.definition.Transition">
<name id="83">true</name>
<source idref="60"/>
<target idref="3"/>
</item>
</targets>
<type>XORSPLIT</type>
</source>
<target idref="44"/>
</item>
</sources>
<targets id="84" type="java.util.HashSet">
<item id="85" type="com.j2fe.workflow.definition.Transition">
<name id="86">FTP</name>
<source idref="44"/>
<target id="87">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="4"/>
<directJoin>false</directJoin>
<name id="88">List Files</name>
<nodeHandler>com.j2fe.feeds.activities.ListFiles</nodeHandler>
<nodeHandlerClass id="89">com.j2fe.feeds.activities.ListFiles</nodeHandlerClass>
<parameters id="90" type="java.util.HashSet">
<item id="91" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="92">businessFeedFilter</name>
<stringValue id="93">BusinessFeed</stringValue>
<type>VARIABLE</type>
</item>
<item id="94" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="95">dataSourceFilter</name>
<stringValue id="96">VendorDefinition</stringValue>
<type>VARIABLE</type>
</item>
<item id="97" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="98">directory</name>
<stringValue id="99">Directory</stringValue>
<type>VARIABLE</type>
</item>
<item id="100" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="101">fileSystemId</name>
<stringValue id="102">FileSystemName</stringValue>
<type>VARIABLE</type>
</item>
<item id="103" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="104">includeBoth</name>
<stringValue id="105">IncludeFilePatternNBusinessFeed</stringValue>
<type>VARIABLE</type>
</item>
<item id="106" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="107">list</name>
<stringValue id="108">Files</stringValue>
<type>VARIABLE</type>
</item>
<item id="109" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="110">pattern</name>
<stringValue id="111">FilePatterns</stringValue>
<type>VARIABLE</type>
</item>
<item id="112" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="113">recursive</name>
<stringValue id="114">RecursiveSearch</stringValue>
<type>VARIABLE</type>
</item>
<item id="115" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="116">sort</name>
<stringValue id="117">SortOrder</stringValue>
<type>VARIABLE</type>
</item>
<item id="118" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="119">sortAscending</name>
<stringValue id="120">SortAscending</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="121" type="java.util.HashSet">
<item idref="85" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="122" type="java.util.HashSet">
<item id="123" type="com.j2fe.workflow.definition.Transition">
<name id="124">empty</name>
<source idref="87"/>
<target idref="3"/>
</item>
<item id="125" type="com.j2fe.workflow.definition.Transition">
<name id="126">not-empty</name>
<source idref="87"/>
<target id="127">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="4"/>
<directJoin>false</directJoin>
<name id="128">Call Prepare File Processing</name>
<nodeHandler>com.j2fe.workflow.handler.impl.CallSubWorkflow</nodeHandler>
<nodeHandlerClass id="129">com.j2fe.workflow.handler.impl.CallSubWorkflow</nodeHandlerClass>
<parameters id="130" type="java.util.HashSet">
<item id="131" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="132">["BusinessFeed"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="133">input["BusinessFeed"]</name>
<stringValue id="134">BusinessFeed</stringValue>
<type>VARIABLE</type>
</item>
<item id="135" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="136">["FileLoadEvent"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="137">input["FileLoadEvent"]</name>
<stringValue id="138">FileLoadEvent</stringValue>
<type>VARIABLE</type>
</item>
<item id="139" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="140">["Files"]@[Ljava/lang/Object;@</UITypeHint>
<input>true</input>
<name id="141">input["Files"]</name>
<stringValue id="142">Files</stringValue>
<type>VARIABLE</type>
</item>
<item id="143" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="144">["MessageBulkSize"]@java/lang/Integer@</UITypeHint>
<input>true</input>
<name id="145">input["MessageBulkSize"]</name>
<stringValue id="146">MessageBulkSize</stringValue>
<type>VARIABLE</type>
</item>
<item id="147" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="148">["MessageMetaData"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="149">input["MessageMetaData"]</name>
<stringValue id="150">MessageMetaData</stringValue>
<type>VARIABLE</type>
</item>
<item id="151" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="152">["MessageProcessingEvent"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="153">input["MessageProcessingEvent"]</name>
<stringValue id="154">MessageProcessingEvent</stringValue>
<type>VARIABLE</type>
</item>
<item id="155" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="156">["NrOfFilesParallel"]@java/lang/Integer@</UITypeHint>
<input>true</input>
<name id="157">input["NrOfFilesParallel"]</name>
<stringValue id="158">NrOfFilesParallel</stringValue>
<type>VARIABLE</type>
</item>
<item id="159" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="160">["OutputDirectory"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="161">input["OutputDirectory"]</name>
<stringValue id="162">OutputDirectory</stringValue>
<type>VARIABLE</type>
</item>
<item id="163" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="164">["ParallelBranches"]@java/lang/Integer@</UITypeHint>
<input>true</input>
<name id="165">input["ParallelBranches"]</name>
<stringValue id="166">ParallelBranches</stringValue>
<type>VARIABLE</type>
</item>
<item id="167" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="168">["Parent Job Id"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="169">input["Parent Job Id"]</name>
<stringValue id="170">ParentJobID</stringValue>
<type>VARIABLE</type>
</item>
<item id="171" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="172">["ReProcessProcessedFiles"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="173">input["ReProcessProcessedFiles"]</name>
<stringValue id="174">ReProcessProcessedFiles</stringValue>
<type>VARIABLE</type>
</item>
<item id="175" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="176">["SuccessAction"]@com/j2fe/feeds/SuccessAction@</UITypeHint>
<input>true</input>
<name id="177">input["SuccessAction"]</name>
<stringValue id="178">SuccessAction</stringValue>
<type>VARIABLE</type>
</item>
<item id="179" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="180">["VendorDefinition"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="181">input["VendorDefinition"]</name>
<stringValue id="182">VendorDefinition</stringValue>
<type>VARIABLE</type>
</item>
<item id="183" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="184">["serverTimestampChanged"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="185">input["serverTimestampChanged"]</name>
<stringValue id="186">serverTimestampChanged</stringValue>
<type>VARIABLE</type>
</item>
<item id="187" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="188">name</name>
<stringValue id="189">Prepare File Processing</stringValue>
<type>CONSTANT</type>
</item>
</parameters>
<sources id="190" type="java.util.HashSet">
<item id="191" type="com.j2fe.workflow.definition.Transition">
<name id="192">not-empty</name>
<source idref="10"/>
<target idref="127"/>
</item>
<item idref="125" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="193" type="java.util.HashSet">
<item id="194" type="com.j2fe.workflow.definition.Transition">
<name id="195">goto-next</name>
<source idref="127"/>
<target idref="3"/>
</item>
</targets>
<type>ACTIVITY</type>
</target>
</item>
</targets>
<type>XORSPLIT</type>
</target>
</item>
<item idref="42" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>XORSPLIT</type>
</source>
<target idref="10"/>
</item>
</sources>
<targets id="196" type="java.util.HashSet">
<item idref="8" type="com.j2fe.workflow.definition.Transition"/>
<item idref="191" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>XORSPLIT</type>
</source>
<target idref="3"/>
</item>
<item idref="123" type="com.j2fe.workflow.definition.Transition"/>
<item idref="194" type="com.j2fe.workflow.definition.Transition"/>
<item idref="82" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="197" type="java.util.HashSet"/>
<type>END</type>
</endNode>
<forcePurgeAtEnd>false</forcePurgeAtEnd>
<group id="198">Batch Connections/Fitch</group>
<haltOnError>false</haltOnError>
<lastChangeUser id="199">user1</lastChangeUser>
<lastUpdate id="200">2024-04-16T12:14:02.000-0400</lastUpdate>
<name id="201">Fitch</name>
<optimize>true</optimize>
<parameter id="202" type="java.util.HashMap">
<entry>
<key id="203" type="java.lang.String">BusinessFeed</key>
<value id="204" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="205">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="206">The Business Feed to be used for the file processing. Only files which belong to the feed will be picked up from the directory! Either Business Feed or the Vendor Definition must be provided.</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="207" type="java.lang.String">Directory</key>
<value id="208" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="209">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="210">The directory it is searched for files. If not set the working directory configured in the Assembly will be used as directory searched for files.</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="211" type="java.lang.String">FileLoadEvent</key>
<value id="212" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="213">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="214">The Event that is called to process a file.</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="215" type="java.lang.String">FilePatterns</key>
<value id="216" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="217">[Ljava.lang.String;</className>
<clazz>[Ljava.lang.String;</clazz>
<description id="218">In addition to the file patterns defined at Business Feed level, more restrictive file patterns can be specified.</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="219" type="java.lang.String">FileSystemName</key>
<value id="220" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="221">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="4"/>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="222" type="java.lang.String">FitchFileSystemType</key>
<value id="223" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="224">com.j2fe.connector.BBFileSystemType</className>
<clazz>com.j2fe.connector.BBFileSystemType</clazz>
<description id="225">FitchFileSystemType(SFTP or FTp)</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="226" type="java.lang.String">IncludeFilePatternNBusinessFeed</key>
<value id="227" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="228">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description id="229">Whether to consider both Custom File patterns and patterns in Business Feed while listing of files.</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="230" type="java.lang.String">MessageBulkSize</key>
<value id="231" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="232">java.lang.Integer</className>
<clazz>java.lang.Integer</clazz>
<description id="233">The number of messages from a file which are processed in parallel.</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="234" type="java.lang.String">MessageMetaData</key>
<value id="235" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="236">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="237">MessageMetaData</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="238" type="java.lang.String">MessageProcessingEvent</key>
<value id="239" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="240">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="241">The Event that is called to process a message.</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="242" type="java.lang.String">NrOfFilesParallel</key>
<value id="243" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="244">java.lang.Integer</className>
<clazz>java.lang.Integer</clazz>
<description id="245">The number of files that are processed in parallel, as long as they belong to the same group (see File Definitions at Business Feed).</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="246" type="java.lang.String">OutputDirectory</key>
<value id="247" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="248">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="249">Only if SuccessAction is MOVE. The files will be moved to this directory.</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="250" type="java.lang.String">ParallelBranches</key>
<value id="251" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="252">java.lang.Integer</className>
<clazz>java.lang.Integer</clazz>
<description id="253">The number of branches in parallel.</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="254" type="java.lang.String">ParentJobID</key>
<value id="255" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="256">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="257">Parent Job id is used to correlated all the child jobs.</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="258" type="java.lang.String">ReProcessProcessedFiles</key>
<value id="259" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="260">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description id="261">Should already processed files be processed again</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="262" type="java.lang.String">RecursiveSearch</key>
<value id="263" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="264">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description id="265">Should sub directories be searched?</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="266" type="java.lang.String">SortAscending</key>
<value id="267" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="268">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description id="269">Sort the files ascending or descending.</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="270" type="java.lang.String">SortOrder</key>
<value id="271" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="272">com.j2fe.feeds.activities.ListFiles$Sort</className>
<clazz>com.j2fe.feeds.activities.ListFiles$Sort</clazz>
<description id="273">Sort the files by TIME or NATURAL or FILESIZE?</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="274" type="java.lang.String">SuccessAction</key>
<value id="275" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="276">com.j2fe.feeds.SuccessAction</className>
<clazz>com.j2fe.feeds.SuccessAction</clazz>
<description id="277">What should be done with the file after processing. MOVE or LEAVE (no action) or DELETE.</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="278" type="java.lang.String">VendorDefinition</key>
<value id="279" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="280">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="281">The vendor definition (VENDOR ID) is used to find the message types and business feeds of the files in the directory. Only files which belong to the different Business Feeds will be processed. Either the vendor or the business feed has to be provided to the WF.</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="282" type="java.lang.String">serverTimestampChanged</key>
<value id="283" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="284">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description id="285">When Server Time has been modified then need to be set to true</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
</parameter>
<permissions id="286" type="java.util.HashSet"/>
<priority>50</priority>
<purgeAtEnd>false</purgeAtEnd>
<retries>0</retries>
<startNode idref="76"/>
<status>RELEASED</status>
<variables id="287" type="java.util.HashMap">
<entry>
<key id="288" type="java.lang.String">BusinessFeed</key>
<value id="289" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="290">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="291">The Business Feed to be used for the file processing. Only files which belong to the feed will be picked up from the directory! Either Business Feed or the Vendor Definition must be provided.</description>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="292" type="java.lang.String">Directory</key>
<value id="293" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="294">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="295">The directory it is searched for files. If not set the working directory configured in the Assembly will be used as directory searched for files.</description>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="296" type="java.lang.String">FileLoadEvent</key>
<value id="297" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="298">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="299">The Event that is called to process a file.</description>
<persistent>false</persistent>
<value id="300" type="java.lang.String">StandardFileLoad</value>
</value>
</entry>
<entry>
<key id="301" type="java.lang.String">FilePatterns</key>
<value id="302" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="303">[Ljava.lang.String;</className>
<clazz>[Ljava.lang.String;</clazz>
<description id="304">In addition to the file patterns defined at Business Feed level, more restrictive file patterns can be specified.</description>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="305" type="java.lang.String">FileSystemName</key>
<value id="306" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="307">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="4"/>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="308" type="java.lang.String">FitchFileSystemType</key>
<value id="309" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="310">com.j2fe.connector.BBFileSystemType</className>
<clazz>com.j2fe.connector.BBFileSystemType</clazz>
<description id="311">FitchFileSystemType(SFTP or FTp)</description>
<persistent>false</persistent>
<value id="312" type="com.j2fe.connector.BBFileSystemType">FTP</value>
</value>
</entry>
<entry>
<key id="313" type="java.lang.String">IncludeFilePatternNBusinessFeed</key>
<value id="314" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="315">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description id="316">Whether to consider both Custom File patterns and patterns in Business Feed while listing of files.</description>
<persistent>false</persistent>
<value id="317" type="java.lang.Boolean">false</value>
</value>
</entry>
<entry>
<key id="318" type="java.lang.String">MessageBulkSize</key>
<value id="319" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="320">java.lang.Integer</className>
<clazz>java.lang.Integer</clazz>
<description id="321">The number of messages from a file which are processed in parallel.</description>
<persistent>false</persistent>
<value id="322" type="java.lang.Integer">500</value>
</value>
</entry>
<entry>
<key id="323" type="java.lang.String">MessageMetaData</key>
<value id="324" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="325">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="326">MessageMetaData</description>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="327" type="java.lang.String">MessageProcessingEvent</key>
<value id="328" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="329">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="330">The Event that is called to process a message.</description>
<persistent>false</persistent>
<value id="331" type="java.lang.String">ProcessFeedMessage</value>
</value>
</entry>
<entry>
<key id="332" type="java.lang.String">NrOfFilesParallel</key>
<value id="333" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="334">java.lang.Integer</className>
<clazz>java.lang.Integer</clazz>
<description id="335">The number of files that are processed in parallel, as long as they belong to the same group (see File Definitions at Business Feed).</description>
<persistent>false</persistent>
<value id="336" type="java.lang.Integer">2</value>
</value>
</entry>
<entry>
<key id="337" type="java.lang.String">OutputDirectory</key>
<value id="338" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="339">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="340">Only if SuccessAction is MOVE. The files will be moved to this directory.</description>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="341" type="java.lang.String">ParallelBranches</key>
<value id="342" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="343">java.lang.Integer</className>
<clazz>java.lang.Integer</clazz>
<description id="344">The number of branches in parallel.</description>
<persistent>false</persistent>
<value idref="336"/>
</value>
</entry>
<entry>
<key id="345" type="java.lang.String">ParentJobID</key>
<value id="346" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="347">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="348">Parent Job id is used to correlated all the child jobs.</description>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="349" type="java.lang.String">ReProcessProcessedFiles</key>
<value id="350" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="351">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description id="352">Should already processed files be processed again</description>
<persistent>false</persistent>
<value idref="317"/>
</value>
</entry>
<entry>
<key id="353" type="java.lang.String">RecursiveSearch</key>
<value id="354" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="355">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description id="356">Should sub directories be searched?</description>
<persistent>false</persistent>
<value idref="317"/>
</value>
</entry>
<entry>
<key id="357" type="java.lang.String">SortAscending</key>
<value id="358" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="359">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description id="360">Sort the files ascending or descending.</description>
<persistent>false</persistent>
<value id="361" type="java.lang.Boolean">true</value>
</value>
</entry>
<entry>
<key id="362" type="java.lang.String">SortOrder</key>
<value id="363" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="364">com.j2fe.feeds.activities.ListFiles$Sort</className>
<clazz>com.j2fe.feeds.activities.ListFiles$Sort</clazz>
<description id="365">Sort the files by TIME or NATURAL or FILESIZE?</description>
<persistent>false</persistent>
<value id="366" type="com.j2fe.feeds.activities.ListFiles$Sort">NATURAL</value>
</value>
</entry>
<entry>
<key id="367" type="java.lang.String">SuccessAction</key>
<value id="368" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="369">com.j2fe.feeds.SuccessAction</className>
<clazz>com.j2fe.feeds.SuccessAction</clazz>
<description id="370">What should be done with the file after processing. MOVE or LEAVE (no action) or DELETE.</description>
<persistent>false</persistent>
<value id="371" type="com.j2fe.feeds.SuccessAction">LEAVE</value>
</value>
</entry>
<entry>
<key id="372" type="java.lang.String">VendorDefinition</key>
<value id="373" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="374">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="375">The vendor definition (VENDOR ID) is used to find the message types and business feeds of the files in the directory. Only files which belong to the different Business Feeds will be processed. Either the vendor or the business feed has to be provided to the WF.</description>
<persistent>false</persistent>
<value id="376" type="java.lang.String">FITCH</value>
</value>
</entry>
<entry>
<key id="377" type="java.lang.String">serverTimestampChanged</key>
<value id="378" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="379">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description id="380">When Server Time has been modified then need to be set to true</description>
<persistent>false</persistent>
<value idref="317"/>
</value>
</entry>
</variables>
<version>3</version>
</com.j2fe.workflow.definition.Workflow>
</businessobject>
</goldensource-package>
