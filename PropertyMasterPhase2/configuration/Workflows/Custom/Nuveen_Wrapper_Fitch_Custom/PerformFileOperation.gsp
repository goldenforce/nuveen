<?xml version="1.0" encoding="UTF-8" standalone="no"?>
<goldensource-package version="8.8.1.34">
<package-comment/>
<businessobject displayString="14 - 20240729-CopytoLocal" type="com.j2fe.workflow.definition.Workflow">
<com.j2fe.workflow.definition.Workflow id="0">
<alwaysPersist>false</alwaysPersist>
<clustered>true</clustered>
<comment id="1">20240729-CopytoLocal</comment>
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
<name id="10">List Files From FTP</name>
<nodeHandler>com.j2fe.feeds.activities.ListFiles</nodeHandler>
<nodeHandlerClass id="11">com.j2fe.feeds.activities.ListFiles</nodeHandlerClass>
<parameters id="12" type="java.util.HashSet">
<item id="13" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="14">directory</name>
<stringValue id="15">SourceDirectory</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="16" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="17">fileSystem</name>
<stringValue id="18">filesystem/local</stringValue>
<type>REFERENCE</type>
</item>
<item id="19" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="20">list</name>
<stringValue id="21">FileList</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="22" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="23">pattern</name>
<stringValue id="24">FilePattern</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="25" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="26">sort</name>
<stringValue id="27">SortOrder</stringValue>
<type>VARIABLE</type>
</item>
<item id="28" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="29">sortAscending</name>
<stringValue id="30">SortAscending</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="31" type="java.util.HashSet">
<item id="32" type="com.j2fe.workflow.definition.Transition">
<name id="33">FTP</name>
<source id="34">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="35">Is SFTP</name>
<nodeHandler>com.j2fe.workflow.handler.impl.SwitchCaseSplit</nodeHandler>
<nodeHandlerClass id="36">com.j2fe.workflow.handler.impl.SwitchCaseSplit</nodeHandlerClass>
<parameters id="37" type="java.util.HashSet">
<item id="38" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="39">caseItem</name>
<stringValue id="40">FileSystemType</stringValue>
<type>VARIABLE</type>
</item>
<item id="41" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="42">defaultItem</name>
<stringValue id="43">FTP</stringValue>
<type>CONSTANT</type>
</item>
<item id="44" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="45">nullTransition</name>
<stringValue id="46">FTP</stringValue>
<type>CONSTANT</type>
</item>
</parameters>
<sources id="47" type="java.util.HashSet">
<item id="48" type="com.j2fe.workflow.definition.Transition">
<name id="49">goto-next</name>
<source id="50">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="51">Start</name>
<nodeHandler>com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandler>
<nodeHandlerClass id="52">com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandlerClass>
<sources id="53" type="java.util.HashSet"/>
<targets id="54" type="java.util.HashSet">
<item idref="48" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>START</type>
</source>
<target idref="34"/>
</item>
</sources>
<targets id="55" type="java.util.HashSet">
<item idref="32" type="com.j2fe.workflow.definition.Transition"/>
<item id="56" type="com.j2fe.workflow.definition.Transition">
<name id="57">SFTP</name>
<source idref="34"/>
<target id="58">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="59">List Files From SFTP</name>
<nodeHandler>com.j2fe.feeds.activities.ListFiles</nodeHandler>
<nodeHandlerClass id="60">com.j2fe.feeds.activities.ListFiles</nodeHandlerClass>
<parameters id="61" type="java.util.HashSet">
<item id="62" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="63">businessFeedFilter</name>
<stringValue id="64">BusinessFeed</stringValue>
<type>VARIABLE</type>
</item>
<item id="65" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="66">dataSourceFilter</name>
<stringValue id="67">VendorDefinition</stringValue>
<type>VARIABLE</type>
</item>
<item id="68" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="69">directory</name>
<stringValue id="70">SourceDirectory</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="71" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="72">fileSystem</name>
<stringValue id="73">filesystem/sftp/fitchsftp</stringValue>
<type>REFERENCE</type>
</item>
<item id="74" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="75">list</name>
<stringValue id="76">FileList</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="77" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="78">pattern</name>
<stringValue id="79">FilePattern</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="80" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="81">sort</name>
<stringValue id="82">SortOrder</stringValue>
<type>VARIABLE</type>
</item>
<item id="83" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="84">sortAscending</name>
<stringValue id="85">SortAscending</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="86" type="java.util.HashSet">
<item idref="56" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="87" type="java.util.HashSet">
<item id="88" type="com.j2fe.workflow.definition.Transition">
<name id="89">empty</name>
<source idref="58"/>
<target idref="3"/>
</item>
<item id="90" type="com.j2fe.workflow.definition.Transition">
<name id="91">not-empty</name>
<source idref="58"/>
<target id="92">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="93">NOP  #2</name>
<nodeHandler>com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandler>
<nodeHandlerClass id="94">com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandlerClass>
<sources id="95" type="java.util.HashSet">
<item id="96" type="com.j2fe.workflow.definition.Transition">
<name id="97">goto-next</name>
<source id="98">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="99">NOP </name>
<nodeHandler>com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandler>
<nodeHandlerClass id="100">com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandlerClass>
<sources id="101" type="java.util.HashSet">
<item id="102" type="com.j2fe.workflow.definition.Transition">
<name id="103">goto-next</name>
<source id="104">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="105">Copy To Local</name>
<nodeHandler>com.j2fe.general.activities.FileOperator</nodeHandler>
<nodeHandlerClass id="106">com.j2fe.general.activities.FileOperator</nodeHandlerClass>
<parameters id="107" type="java.util.HashSet">
<item id="108" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="109">operationToPerform</name>
<stringValue id="110">FileOperation</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="111" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="112">sourceDirectory</name>
<stringValue id="113">SourceDirectory</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="114" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="115">sourceFileName</name>
<stringValue id="116">FileName</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="117" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="118">sourceFileSystem</name>
<stringValue id="119">filesystem/sftp/fitchsftp</stringValue>
<type>REFERENCE</type>
</item>
<item id="120" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="121">targetDirectory</name>
<stringValue id="122">OutputDirectory</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="123" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="124">targetFileSystem</name>
<stringValue id="125">filesystem/local</stringValue>
<type>REFERENCE</type>
</item>
</parameters>
<sources id="126" type="java.util.HashSet">
<item id="127" type="com.j2fe.workflow.definition.Transition">
<name id="128">SFTP</name>
<source id="129">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="130">Is SFTP</name>
<nodeHandler>com.j2fe.workflow.handler.impl.SwitchCaseSplit</nodeHandler>
<nodeHandlerClass id="131">com.j2fe.workflow.handler.impl.SwitchCaseSplit</nodeHandlerClass>
<parameters id="132" type="java.util.HashSet">
<item id="133" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="134">caseItem</name>
<stringValue id="135">FileSystemType</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="136" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="137">defaultItem</name>
<stringValue id="138">FTP</stringValue>
<type>CONSTANT</type>
</item>
<item id="139" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="140">nullTransition</name>
<stringValue id="141">FTP</stringValue>
<type>CONSTANT</type>
</item>
</parameters>
<sources id="142" type="java.util.HashSet">
<item id="143" type="com.j2fe.workflow.definition.Transition">
<name id="144">goto-next</name>
<source id="145">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="146">Get FileName</name>
<nodeHandler>com.j2fe.general.activities.BeanShellScript</nodeHandler>
<nodeHandlerClass id="147">com.j2fe.general.activities.BeanShellScript</nodeHandlerClass>
<parameters id="148" type="java.util.HashSet">
<item id="149" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="150">statements</name>
<stringValue id="151">import com.j2fe.util.file.FileSystemItem;&#13;
&#13;
String fileName = ((FileSystemItem) file).getName();&#13;
int index = fileName.lastIndexOf("/");&#13;
&#13;
fileName =fileName.substring(index + 1);</stringValue>
<type>CONSTANT</type>
</item>
<item id="152" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="153">["file"]@java/lang/Object@</UITypeHint>
<input>true</input>
<name id="154">variables["file"]</name>
<stringValue id="155">File</stringValue>
<type>VARIABLE</type>
</item>
<item id="156" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="157">["fileName"]@java/lang/String@</UITypeHint>
<input>false</input>
<name id="158">variables["fileName"]</name>
<stringValue id="159">FileName</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
</parameters>
<sources id="160" type="java.util.HashSet">
<item id="161" type="com.j2fe.workflow.definition.Transition">
<name id="162">loop</name>
<source id="163">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="164">For Loop </name>
<nodeHandler>com.j2fe.workflow.handler.impl.ForEach</nodeHandler>
<nodeHandlerClass id="165">com.j2fe.workflow.handler.impl.ForEach</nodeHandlerClass>
<parameters id="166" type="java.util.HashSet">
<item id="167" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="168">counter</name>
<stringValue id="169">LoopCounter</stringValue>
<type>VARIABLE</type>
</item>
<item id="170" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="171">counter</name>
<stringValue id="172">LoopCounter</stringValue>
<type>VARIABLE</type>
</item>
<item id="173" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="174">incrementValue</name>
<objectValue id="175" type="java.lang.Integer">1</objectValue>
<type>CONSTANT</type>
</item>
<item id="176" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="177">input</name>
<stringValue id="178">FileList</stringValue>
<type>VARIABLE</type>
</item>
<item id="179" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="180">output</name>
<stringValue id="181">File</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
</parameters>
<sources id="182" type="java.util.HashSet">
<item id="183" type="com.j2fe.workflow.definition.Transition">
<name id="184">goto-next</name>
<source idref="92"/>
<target idref="163"/>
</item>
</sources>
<targets id="185" type="java.util.HashSet">
<item id="186" type="com.j2fe.workflow.definition.Transition">
<name id="187">end-loop</name>
<source idref="163"/>
<target idref="3"/>
</item>
<item idref="161" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>XORSPLIT</type>
</source>
<target idref="145"/>
</item>
</sources>
<targets id="188" type="java.util.HashSet">
<item idref="143" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="129"/>
</item>
</sources>
<targets id="189" type="java.util.HashSet">
<item id="190" type="com.j2fe.workflow.definition.Transition">
<name id="191">FTP</name>
<source idref="129"/>
<target id="192">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="193">Copy To Local</name>
<nodeHandler>com.j2fe.general.activities.FileOperator</nodeHandler>
<nodeHandlerClass id="194">com.j2fe.general.activities.FileOperator</nodeHandlerClass>
<parameters id="195" type="java.util.HashSet">
<item id="196" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="197">operationToPerform</name>
<stringValue id="198">FileOperation</stringValue>
<type>VARIABLE</type>
</item>
<item id="199" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="200">sourceDirectory</name>
<stringValue id="201">SourceDirectory</stringValue>
<type>VARIABLE</type>
</item>
<item id="202" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="203">sourceFileName</name>
<stringValue id="204">FileName</stringValue>
<type>VARIABLE</type>
</item>
<item id="205" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="206">sourceFileSystem</name>
<stringValue id="207">filesystem/local</stringValue>
<type>REFERENCE</type>
</item>
<item id="208" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="209">targetDirectory</name>
<stringValue id="210">OutputDirectory</stringValue>
<type>VARIABLE</type>
</item>
<item id="211" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="212">targetFileSystem</name>
<stringValue id="213">filesystem/local</stringValue>
<type>REFERENCE</type>
</item>
</parameters>
<sources id="214" type="java.util.HashSet">
<item idref="190" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="215" type="java.util.HashSet">
<item id="216" type="com.j2fe.workflow.definition.Transition">
<name id="217">goto-next</name>
<source idref="192"/>
<target idref="98"/>
</item>
</targets>
<type>ACTIVITY</type>
</target>
</item>
<item idref="127" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>XORSPLIT</type>
</source>
<target idref="104"/>
</item>
</sources>
<targets id="218" type="java.util.HashSet">
<item idref="102" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="98"/>
</item>
<item idref="216" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="219" type="java.util.HashSet">
<item idref="96" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="92"/>
</item>
<item id="220" type="com.j2fe.workflow.definition.Transition">
<name id="221">not-empty</name>
<source idref="9"/>
<target idref="92"/>
</item>
<item idref="90" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="222" type="java.util.HashSet">
<item idref="183" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</target>
</item>
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
<targets id="223" type="java.util.HashSet">
<item idref="7" type="com.j2fe.workflow.definition.Transition"/>
<item idref="220" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>XORSPLIT</type>
</source>
<target idref="3"/>
</item>
<item idref="88" type="com.j2fe.workflow.definition.Transition"/>
<item idref="186" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="224" type="java.util.HashSet"/>
<type>END</type>
</endNode>
<forcePurgeAtEnd>false</forcePurgeAtEnd>
<group id="225">Custom/Nuveen_Wrapper_Fitch_Custom</group>
<haltOnError>false</haltOnError>
<lastChangeUser id="226">user1</lastChangeUser>
<lastUpdate id="227">2024-07-29T18:16:02.000+0530</lastUpdate>
<name id="228">PerformFileOperation</name>
<optimize>true</optimize>
<parameter id="229" type="java.util.HashMap">
<entry>
<key id="230" type="java.lang.String">BusinessFeed</key>
<value id="231" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="232">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="233" type="java.lang.String">FileOperation</key>
<value id="234" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="235">com.j2fe.general.activities.FileOperator$Operation</className>
<clazz>com.j2fe.general.activities.FileOperator$Operation</clazz>
<description idref="2"/>
<input>true</input>
<output>false</output>
<required>true</required>
</value>
</entry>
<entry>
<key id="236" type="java.lang.String">FilePattern</key>
<value id="237" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="238">[Ljava.lang.String;</className>
<clazz>[Ljava.lang.String;</clazz>
<description idref="2"/>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="239" type="java.lang.String">FileSystemType</key>
<value id="240" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="241">com.j2fe.connector.BBFileSystemType</className>
<clazz>com.j2fe.connector.BBFileSystemType</clazz>
<description idref="2"/>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="242" type="java.lang.String">OutputDirectory</key>
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
<key id="245" type="java.lang.String">SortAscending</key>
<value id="246" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="247">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description id="248">Sort the files ascending or descending.</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="249" type="java.lang.String">SortOrder</key>
<value id="250" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="251">com.j2fe.feeds.activities.ListFiles$Sort</className>
<clazz>com.j2fe.feeds.activities.ListFiles$Sort</clazz>
<description id="252">Sort the files by TIME or NATURAL or FILESIZE?</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="253" type="java.lang.String">SourceDirectory</key>
<value id="254" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="255">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<input>true</input>
<output>false</output>
<required>true</required>
</value>
</entry>
<entry>
<key id="256" type="java.lang.String">VendorDefinition</key>
<value id="257" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="258">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
</parameter>
<permissions id="259" type="java.util.HashSet"/>
<priority>50</priority>
<purgeAtEnd>true</purgeAtEnd>
<retries>0</retries>
<startNode idref="50"/>
<status>RELEASED</status>
<variables id="260" type="java.util.HashMap">
<entry>
<key id="261" type="java.lang.String">BusinessFeed</key>
<value id="262" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="263">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="264" type="java.lang.String">FileList</key>
<value id="265" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="266">java.lang.Object</className>
<clazz>java.lang.Object</clazz>
<description idref="2"/>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="267" type="java.lang.String">FileOperation</key>
<value id="268" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="269">com.j2fe.general.activities.FileOperator$Operation</className>
<clazz>com.j2fe.general.activities.FileOperator$Operation</clazz>
<description idref="2"/>
<persistent>false</persistent>
<value id="270" type="com.j2fe.general.activities.FileOperator$Operation">Copy</value>
</value>
</entry>
<entry>
<key id="271" type="java.lang.String">FilePattern</key>
<value id="272" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="273">[Ljava.lang.String;</className>
<clazz>[Ljava.lang.String;</clazz>
<description idref="2"/>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="274" type="java.lang.String">FileSystemType</key>
<value id="275" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="276">com.j2fe.connector.BBFileSystemType</className>
<clazz>com.j2fe.connector.BBFileSystemType</clazz>
<description idref="2"/>
<persistent>false</persistent>
<value id="277" type="com.j2fe.connector.BBFileSystemType">FTP</value>
</value>
</entry>
<entry>
<key id="278" type="java.lang.String">LoopCounter</key>
<value id="279" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="280">java.lang.Integer</className>
<clazz>java.lang.Integer</clazz>
<description idref="2"/>
<persistent>false</persistent>
<value id="281" type="java.lang.Integer">0</value>
</value>
</entry>
<entry>
<key id="282" type="java.lang.String">OutputDirectory</key>
<value id="283" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="284">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="285" type="java.lang.String">SortAscending</key>
<value id="286" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="287">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description id="288">Sort the files ascending or descending.</description>
<persistent>false</persistent>
<value id="289" type="java.lang.Boolean">true</value>
</value>
</entry>
<entry>
<key id="290" type="java.lang.String">SortOrder</key>
<value id="291" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="292">com.j2fe.feeds.activities.ListFiles$Sort</className>
<clazz>com.j2fe.feeds.activities.ListFiles$Sort</clazz>
<description id="293">Sort the files by TIME or NATURAL or FILESIZE?</description>
<persistent>false</persistent>
<value id="294" type="com.j2fe.feeds.activities.ListFiles$Sort">NATURAL</value>
</value>
</entry>
<entry>
<key id="295" type="java.lang.String">SourceDirectory</key>
<value id="296" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="297">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="298" type="java.lang.String">VendorDefinition</key>
<value id="299" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="300">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<persistent>false</persistent>
<value id="301" type="java.lang.String">FITCH</value>
</value>
</entry>
</variables>
<version>14</version>
</com.j2fe.workflow.definition.Workflow>
</businessobject>
</goldensource-package>
