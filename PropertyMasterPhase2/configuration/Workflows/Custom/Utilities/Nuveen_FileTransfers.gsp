<?xml version="1.0" encoding="UTF-8" standalone="no"?>
<goldensource-package version="8.8.1.47">
<package-comment/>
<businessobject displayString="4 - 20231101 - Added Client Archive Directory" type="com.j2fe.workflow.definition.Workflow">
<com.j2fe.workflow.definition.Workflow id="0">
<alwaysPersist>false</alwaysPersist>
<clustered>true</clustered>
<comment id="1">20231101 - Added Client Archive Directory</comment>
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
<name id="8">empty</name>
<source id="9">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="3"/>
<directJoin>false</directJoin>
<name id="10">List Files</name>
<nodeHandler>com.j2fe.feeds.activities.ListFiles</nodeHandler>
<nodeHandlerClass id="11">com.j2fe.feeds.activities.ListFiles</nodeHandlerClass>
<parameters id="12" type="java.util.HashSet">
<item id="13" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="14">businessFeedFilter</name>
<stringValue id="15">BusinessFeed</stringValue>
<type>VARIABLE</type>
</item>
<item id="16" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="17">directory</name>
<stringValue id="18">SourceFileDirectory</stringValue>
<type>VARIABLE</type>
</item>
<item id="19" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="20">fileSystem</name>
<stringValue id="21">SourceFileSystem</stringValue>
<type>VARIABLE</type>
</item>
<item id="22" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="23">list</name>
<stringValue id="24">Files</stringValue>
<type>VARIABLE</type>
</item>
<item id="25" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="26">pattern</name>
<stringValue id="27">filePatternArray</stringValue>
<type>VARIABLE</type>
</item>
<item id="28" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="29">sort</name>
<objectValue id="30" type="com.j2fe.feeds.activities.ListFiles$Sort">TIME</objectValue>
<type>CONSTANT</type>
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
<description idref="3"/>
<directJoin>false</directJoin>
<name id="42">String To Array</name>
<nodeHandler>com.j2fe.xenomorph.activities.StringToArray</nodeHandler>
<nodeHandlerClass id="43">com.j2fe.xenomorph.activities.StringToArray</nodeHandlerClass>
<parameters id="44" type="java.util.HashSet">
<item id="45" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="46">delimiter</name>
<stringValue id="47">,</stringValue>
<type>CONSTANT</type>
</item>
<item id="48" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="49">inputString</name>
<stringValue id="50">FilePattern</stringValue>
<type>VARIABLE</type>
</item>
<item id="51" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="52">returnArray</name>
<stringValue id="53">filePatternArray</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="54" type="java.util.HashSet">
<item id="55" type="com.j2fe.workflow.definition.Transition">
<name id="56">false</name>
<source id="57">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="3"/>
<directJoin>false</directJoin>
<name id="58">Is Null</name>
<nodeHandler>com.j2fe.general.activities.IsNull</nodeHandler>
<nodeHandlerClass id="59">com.j2fe.general.activities.IsNull</nodeHandlerClass>
<parameters id="60" type="java.util.HashSet">
<item id="61" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="62">input</name>
<stringValue id="63">FilePattern</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="64" type="java.util.HashSet">
<item id="65" type="com.j2fe.workflow.definition.Transition">
<name id="66">goto-next</name>
<source id="67">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="3"/>
<directJoin>false</directJoin>
<name id="68">Start</name>
<nodeHandler>com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandler>
<nodeHandlerClass id="69">com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandlerClass>
<sources id="70" type="java.util.HashSet"/>
<targets id="71" type="java.util.HashSet">
<item idref="65" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>START</type>
</source>
<target idref="57"/>
</item>
</sources>
<targets id="72" type="java.util.HashSet">
<item idref="55" type="com.j2fe.workflow.definition.Transition"/>
<item id="73" type="com.j2fe.workflow.definition.Transition">
<name id="74">true</name>
<source idref="57"/>
<target idref="34"/>
</item>
</targets>
<type>XORSPLIT</type>
</source>
<target idref="41"/>
</item>
</sources>
<targets id="75" type="java.util.HashSet">
<item idref="39" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="34"/>
</item>
<item idref="73" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="76" type="java.util.HashSet">
<item idref="32" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="9"/>
</item>
</sources>
<targets id="77" type="java.util.HashSet">
<item idref="7" type="com.j2fe.workflow.definition.Transition"/>
<item id="78" type="com.j2fe.workflow.definition.Transition">
<name id="79">not-empty</name>
<source idref="9"/>
<target id="80">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description id="81">Automatically generated</description>
<directJoin>false</directJoin>
<name id="82">Merge</name>
<nodeHandler>com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandler>
<nodeHandlerClass id="83">com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandlerClass>
<sources id="84" type="java.util.HashSet">
<item id="85" type="com.j2fe.workflow.definition.Transition">
<name id="86">goto-next</name>
<source id="87">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="3"/>
<directJoin>false</directJoin>
<name id="88">File Operations MOVE</name>
<nodeHandler>com.j2fe.general.activities.FileOperator</nodeHandler>
<nodeHandlerClass id="89">com.j2fe.general.activities.FileOperator</nodeHandlerClass>
<parameters id="90" type="java.util.HashSet">
<item id="91" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="92">operationToPerform</name>
<objectValue id="93" type="com.j2fe.general.activities.FileOperator$Operation">Move</objectValue>
<type>CONSTANT</type>
</item>
<item id="94" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="95">sourceDirectory</name>
<stringValue id="96">SourceFileDirectory</stringValue>
<type>VARIABLE</type>
</item>
<item id="97" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="98">sourceFileName</name>
<stringValue id="99">Filename</stringValue>
<type>VARIABLE</type>
</item>
<item id="100" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="101">sourceFileSystem</name>
<stringValue id="102">SourceFileSystem</stringValue>
<type>VARIABLE</type>
</item>
<item id="103" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="104">targetDirectory</name>
<stringValue id="105">TargetFileDirectory</stringValue>
<type>VARIABLE</type>
</item>
<item id="106" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="107">targetFileName</name>
<stringValue id="108">Filename</stringValue>
<type>VARIABLE</type>
</item>
<item id="109" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="110">targetFileSystem</name>
<stringValue id="111">TargetFileSystem</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="112" type="java.util.HashSet">
<item id="113" type="com.j2fe.workflow.definition.Transition">
<name id="114">false</name>
<source id="115">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="3"/>
<directJoin>false</directJoin>
<name id="116">Copy In Client Archive</name>
<nodeHandler>com.j2fe.workflow.handler.impl.SwitchCaseSplit</nodeHandler>
<nodeHandlerClass id="117">com.j2fe.workflow.handler.impl.SwitchCaseSplit</nodeHandlerClass>
<parameters id="118" type="java.util.HashSet">
<item id="119" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="120">caseItem</name>
<stringValue id="121">ArchiveInClientDir</stringValue>
<type>VARIABLE</type>
</item>
<item id="122" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="123">defaultItem</name>
<stringValue id="124">false</stringValue>
<type>CONSTANT</type>
</item>
<item id="125" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="126">nullTransition</name>
<stringValue id="127">false</stringValue>
<type>CONSTANT</type>
</item>
</parameters>
<sources id="128" type="java.util.HashSet">
<item id="129" type="com.j2fe.workflow.definition.Transition">
<name id="130">goto-next</name>
<source id="131">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="3"/>
<directJoin>false</directJoin>
<name id="132">Get Absolute Filename</name>
<nodeHandler>com.j2fe.general.activities.BeanShellScript</nodeHandler>
<nodeHandlerClass id="133">com.j2fe.general.activities.BeanShellScript</nodeHandlerClass>
<parameters id="134" type="java.util.HashSet">
<item id="135" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="136">statements</name>
<stringValue id="137">import java.io.File;
import java.io.IOException;
import org.apache.commons.io.FilenameUtils;

//String fileName=FilenameUtils.getName(File.toString());

String filepath=singleFile.getName();

String fileName = filepath.substring(filepath.lastIndexOf("/")+1);</stringValue>
<type>CONSTANT</type>
</item>
<item id="138" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="139">variables["fileName"]</name>
<stringValue id="140">Filename</stringValue>
<type>VARIABLE</type>
</item>
<item id="141" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="142">variables["singleFile"]</name>
<stringValue id="143">File</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="144" type="java.util.HashSet">
<item id="145" type="com.j2fe.workflow.definition.Transition">
<name id="146">loop</name>
<source id="147">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="3"/>
<directJoin>false</directJoin>
<name id="148">For Loop</name>
<nodeHandler>com.j2fe.workflow.handler.impl.ForEach</nodeHandler>
<nodeHandlerClass id="149">com.j2fe.workflow.handler.impl.ForEach</nodeHandlerClass>
<parameters id="150" type="java.util.HashSet">
<item id="151" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="152">counter</name>
<stringValue id="153">Counter</stringValue>
<type>VARIABLE</type>
</item>
<item id="154" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="155">counter</name>
<stringValue id="156">Counter</stringValue>
<type>VARIABLE</type>
</item>
<item id="157" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="158">input</name>
<stringValue id="159">Files</stringValue>
<type>VARIABLE</type>
</item>
<item id="160" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="161">output</name>
<stringValue id="162">File</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="163" type="java.util.HashSet">
<item id="164" type="com.j2fe.workflow.definition.Transition">
<name id="165">ToSplit</name>
<source idref="80"/>
<target idref="147"/>
</item>
</sources>
<targets id="166" type="java.util.HashSet">
<item id="167" type="com.j2fe.workflow.definition.Transition">
<name id="168">end-loop</name>
<source idref="147"/>
<target idref="2"/>
</item>
<item idref="145" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>XORSPLIT</type>
</source>
<target idref="131"/>
</item>
</sources>
<targets id="169" type="java.util.HashSet">
<item idref="129" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="115"/>
</item>
</sources>
<targets id="170" type="java.util.HashSet">
<item idref="113" type="com.j2fe.workflow.definition.Transition"/>
<item id="171" type="com.j2fe.workflow.definition.Transition">
<name id="172">true</name>
<source idref="115"/>
<target id="173">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="3"/>
<directJoin>false</directJoin>
<name id="174">File Operations COPY</name>
<nodeHandler>com.j2fe.general.activities.FileOperator</nodeHandler>
<nodeHandlerClass id="175">com.j2fe.general.activities.FileOperator</nodeHandlerClass>
<parameters id="176" type="java.util.HashSet">
<item id="177" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="178">operationToPerform</name>
<objectValue id="179" type="com.j2fe.general.activities.FileOperator$Operation">Copy</objectValue>
<type>CONSTANT</type>
</item>
<item id="180" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="181">sourceDirectory</name>
<stringValue id="182">SourceFileDirectory</stringValue>
<type>VARIABLE</type>
<variablePart idref="3"/>
</item>
<item id="183" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="184">sourceFileName</name>
<stringValue id="185">Filename</stringValue>
<type>VARIABLE</type>
<variablePart idref="3"/>
</item>
<item id="186" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="187">sourceFileSystem</name>
<stringValue id="188">SourceFileSystem</stringValue>
<type>VARIABLE</type>
<variablePart idref="3"/>
</item>
<item id="189" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="190">targetDirectory</name>
<stringValue id="191">ClientArchiveDirectory</stringValue>
<type>VARIABLE</type>
</item>
<item id="192" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="193">targetFileName</name>
<stringValue id="194">Filename</stringValue>
<type>VARIABLE</type>
<variablePart idref="3"/>
</item>
<item id="195" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="196">targetFileSystem</name>
<stringValue id="197">TargetFileSystem</stringValue>
<type>VARIABLE</type>
<variablePart idref="3"/>
</item>
</parameters>
<sources id="198" type="java.util.HashSet">
<item idref="171" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="199" type="java.util.HashSet">
<item id="200" type="com.j2fe.workflow.definition.Transition">
<name id="201">goto-next</name>
<source idref="173"/>
<target idref="87"/>
</item>
</targets>
<type>ACTIVITY</type>
</target>
</item>
</targets>
<type>XORSPLIT</type>
</source>
<target idref="87"/>
</item>
<item idref="200" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="202" type="java.util.HashSet">
<item idref="85" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="80"/>
</item>
<item idref="78" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="203" type="java.util.HashSet">
<item idref="164" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</target>
</item>
</targets>
<type>XORSPLIT</type>
</source>
<target idref="2"/>
</item>
<item idref="167" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="204" type="java.util.HashSet"/>
<type>END</type>
</endNode>
<forcePurgeAtEnd>false</forcePurgeAtEnd>
<group id="205">Custom/Utilities</group>
<haltOnError>false</haltOnError>
<lastChangeUser id="206">user1</lastChangeUser>
<lastUpdate id="207">2023-11-01T10:36:57.000+0530</lastUpdate>
<name id="208">Nuveen_FileTransfers</name>
<optimize>true</optimize>
<parameter id="209" type="java.util.HashMap">
<entry>
<key id="210" type="java.lang.String">ArchiveInClientDir</key>
<value id="211" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="212">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description idref="3"/>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="213" type="java.lang.String">BusinessFeed</key>
<value id="214" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="215">java.lang.String</className>
<clazz>java.lang.String</clazz>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="216" type="java.lang.String">ClientArchiveDirectory</key>
<value id="217" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="218">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="3"/>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="219" type="java.lang.String">FilePattern</key>
<value id="220" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="221">java.lang.String</className>
<clazz>java.lang.String</clazz>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="222" type="java.lang.String">SourceFileDirectory</key>
<value id="223" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="224">java.lang.String</className>
<clazz>java.lang.String</clazz>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="225" type="java.lang.String">SourceFileSystem</key>
<value id="226" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="227">java.lang.String</className>
<clazz>java.lang.String</clazz>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="228" type="java.lang.String">TargetFileDirectory</key>
<value id="229" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="230">java.lang.String</className>
<clazz>java.lang.String</clazz>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="231" type="java.lang.String">TargetFileSystem</key>
<value id="232" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="233">java.lang.String</className>
<clazz>java.lang.String</clazz>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
</parameter>
<permissions id="234" type="java.util.HashSet"/>
<priority>50</priority>
<purgeAtEnd>true</purgeAtEnd>
<retries>0</retries>
<startNode idref="67"/>
<status>RELEASED</status>
<variables id="235" type="java.util.HashMap">
<entry>
<key id="236" type="java.lang.String">ArchiveInClientDir</key>
<value id="237" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="238">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description idref="3"/>
<persistent>false</persistent>
<value id="239" type="java.lang.Boolean">false</value>
</value>
</entry>
<entry>
<key id="240" type="java.lang.String">BusinessFeed</key>
<value id="241" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="242">java.lang.String</className>
<clazz>java.lang.String</clazz>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="243" type="java.lang.String">ClientArchiveDirectory</key>
<value id="244" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="245">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="3"/>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="246" type="java.lang.String">Counter</key>
<value id="247" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="248">java.lang.Integer</className>
<clazz>java.lang.Integer</clazz>
<persistent>false</persistent>
<value id="249" type="java.lang.Integer">0</value>
</value>
</entry>
<entry>
<key id="250" type="java.lang.String">FilePattern</key>
<value id="251" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="252">java.lang.String</className>
<clazz>java.lang.String</clazz>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="253" type="java.lang.String">SourceFileDirectory</key>
<value id="254" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="255">java.lang.String</className>
<clazz>java.lang.String</clazz>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="256" type="java.lang.String">SourceFileSystem</key>
<value id="257" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="258">java.lang.String</className>
<clazz>java.lang.String</clazz>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="259" type="java.lang.String">TargetFileDirectory</key>
<value id="260" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="261">java.lang.String</className>
<clazz>java.lang.String</clazz>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="262" type="java.lang.String">TargetFileSystem</key>
<value id="263" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="264">java.lang.String</className>
<clazz>java.lang.String</clazz>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="265" type="java.lang.String">filePatternArray</key>
<value id="266" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="267">java.lang.Object</className>
<clazz>java.lang.Object</clazz>
<persistent>false</persistent>
</value>
</entry>
</variables>
<version>4</version>
</com.j2fe.workflow.definition.Workflow>
</businessobject>
</goldensource-package>
