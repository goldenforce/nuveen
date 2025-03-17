<?xml version="1.0" encoding="UTF-8" standalone="no"?>
<goldensource-package version="8.8.1.59">
<package-comment/>
<businessobject displayString="37 - Deleted_Publishing" type="com.j2fe.workflow.definition.Workflow">
<com.j2fe.workflow.definition.Workflow id="0">
<alwaysPersist>false</alwaysPersist>
<clustered>true</clustered>
<comment id="1">Deleted_Publishing</comment>
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
<stringValue id="15">JobID</stringValue>
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
<name id="20">BBG Request Reply</name>
<nodeHandler>com.j2fe.workflow.handler.impl.CallSubWorkflow</nodeHandler>
<nodeHandlerClass id="21">com.j2fe.workflow.handler.impl.CallSubWorkflow</nodeHandlerClass>
<parameters id="22" type="java.util.HashSet">
<item id="23" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="24">["BBDownloadDirectory"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="25">input["BBDownloadDirectory"]</name>
<stringValue id="26">BBDownloadDirectory</stringValue>
<type>VARIABLE</type>
</item>
<item id="27" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="28">["BBTimeout"]@java/lang/Long@</UITypeHint>
<input>true</input>
<name id="29">input["BBTimeout"]</name>
<stringValue id="30">BBTimeout</stringValue>
<type>VARIABLE</type>
</item>
<item id="31" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="32">["BBUploadDirectory"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="33">input["BBUploadDirectory"]</name>
<stringValue id="34">BBUploadDirectory</stringValue>
<type>VARIABLE</type>
</item>
<item id="35" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="36">["ExcludeFields"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="37">input["ExcludeFields"]</name>
<stringValue id="38">ExcludeFields</stringValue>
<type>VARIABLE</type>
</item>
<item id="39" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="40">["MaxRequestsPerFile"]@java/lang/Long@</UITypeHint>
<input>true</input>
<name id="41">input["MaxRequestsPerFile"]</name>
<stringValue id="42">MaxRequestsPerFile</stringValue>
<type>VARIABLE</type>
</item>
<item id="43" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="44">["MaxRetryTime"]@java/lang/Integer@</UITypeHint>
<input>true</input>
<name id="45">input["MaxRetryTime"]</name>
<stringValue id="46">MaxRetryTime</stringValue>
<type>VARIABLE</type>
</item>
<item id="47" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="48">["Message"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="49">input["Message"]</name>
<stringValue id="50">vendorRequestXML</stringValue>
<type>VARIABLE</type>
</item>
<item id="51" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="52">["MoveDirectory"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="53">input["MoveDirectory"]</name>
<stringValue id="54">MoveDirectory</stringValue>
<type>VARIABLE</type>
</item>
<item id="55" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="56">["NoOfFilesToRunInParallel"]@java/lang/Integer@</UITypeHint>
<input>true</input>
<name id="57">input["NoOfFilesToRunInParallel"]</name>
<stringValue id="58">NoOfFilesToRunInParallel</stringValue>
<type>VARIABLE</type>
</item>
<item id="59" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="60">["ParentJobID"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="61">input["ParentJobID"]</name>
<stringValue id="62">JobID</stringValue>
<type>VARIABLE</type>
</item>
<item id="63" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="64">["ParticipantPurposeType"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="65">input["ParticipantPurposeType"]</name>
<stringValue id="66">ParticipantPurposeType</stringValue>
<type>VARIABLE</type>
</item>
<item id="67" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="68">["PreserveSpacesInBBIdentifier"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="69">input["PreserveSpacesInBBIdentifier"]</name>
<stringValue id="70">PreserveSpacesInBBIdentifier</stringValue>
<type>VARIABLE</type>
</item>
<item id="71" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="72">["ProcessResponseFileImmediately"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="73">input["ProcessResponseFileImmediately"]</name>
<stringValue id="74">ProcessResponseFileImmediately</stringValue>
<type>VARIABLE</type>
</item>
<item id="75" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="76">["RemoveDuplicateFields"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="77">input["RemoveDuplicateFields"]</name>
<stringValue id="78">RemoveDuplicateFields</stringValue>
<type>VARIABLE</type>
</item>
<item id="79" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="80">["StoreRequestFileLocalDirectory"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="81">input["StoreRequestFileLocalDirectory"]</name>
<stringValue id="82">StoreRequestFileLocalDirectory</stringValue>
<type>VARIABLE</type>
</item>
<item id="83" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="84">["StoreRequestFileonLocal"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="85">input["StoreRequestFileonLocal"]</name>
<stringValue id="86">StoreRequestFileonLocal</stringValue>
<type>VARIABLE</type>
</item>
<item id="87" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="88">["isOpenFigiEnabled"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="89">input["isOpenFigiEnabled"]</name>
<stringValue id="90">isOpenFigiEnabled</stringValue>
<type>VARIABLE</type>
</item>
<item id="91" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="92">name</name>
<stringValue id="93">Request Reply</stringValue>
<type>CONSTANT</type>
</item>
</parameters>
<sources id="94" type="java.util.HashSet">
<item id="95" type="com.j2fe.workflow.definition.Transition">
<name id="96">rows-found</name>
<source id="97">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="98">get Request XML</name>
<nodeHandler>com.j2fe.general.activities.database.XMLQuery</nodeHandler>
<nodeHandlerClass id="99">com.j2fe.general.activities.database.XMLQuery</nodeHandlerClass>
<parameters id="100" type="java.util.HashSet">
<item id="101" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="102">database</name>
<stringValue id="103">jdbc/GSDM-1</stringValue>
<type>REFERENCE</type>
</item>
<item id="104" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="105">indexedParameters[0]</name>
<stringValue id="106">RequestSize</stringValue>
<type>VARIABLE</type>
</item>
<item id="107" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="108">indexedParameters[1]</name>
<stringValue id="109">JobID</stringValue>
<type>VARIABLE</type>
</item>
<item id="110" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="111">querySQL</name>
<stringValue id="112">select nuveen_getreqXML_LevFin (?,?) from dual</stringValue>
<type>CONSTANT</type>
</item>
<item id="113" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="114">result[0]</name>
<stringValue id="115">vendorRequestXML</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
</parameters>
<sources id="116" type="java.util.HashSet">
<item id="117" type="com.j2fe.workflow.definition.Transition">
<name id="118">goto-next</name>
<source id="119">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="120">Create Job </name>
<nodeHandler>com.j2fe.streetlamp.activities.CreateJob</nodeHandler>
<nodeHandlerClass id="121">com.j2fe.streetlamp.activities.CreateJob</nodeHandlerClass>
<parameters id="122" type="java.util.HashSet">
<item id="123" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="124">configInfo</name>
<stringValue id="125">JobConfigText</stringValue>
<type>VARIABLE</type>
</item>
<item id="126" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="127">flushImmediate</name>
<objectValue id="128" type="java.lang.Boolean">true</objectValue>
<type>CONSTANT</type>
</item>
<item id="129" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="130">jobId</name>
<stringValue id="131">JobID</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<persistentVariables id="132" type="java.util.HashSet">
<item id="133" type="java.lang.String">JobID
1000</item>
</persistentVariables>
<sources id="134" type="java.util.HashSet">
<item id="135" type="com.j2fe.workflow.definition.Transition">
<name id="136">false</name>
<source id="137">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="138">Check For Running Workflows </name>
<nodeHandler>com.j2fe.general.activities.CheckForRunningWorkflow</nodeHandler>
<nodeHandlerClass id="139">com.j2fe.general.activities.CheckForRunningWorkflow</nodeHandlerClass>
<parameters id="140" type="java.util.HashSet">
<item id="141" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="142">considerHasErrorAsRunning</name>
<objectValue idref="128"/>
<type>CONSTANT</type>
</item>
</parameters>
<sources id="143" type="java.util.HashSet">
<item id="144" type="com.j2fe.workflow.definition.Transition">
<name id="145">goto-next</name>
<source id="146">
<activation>ASYNCHRONOUS</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="147">Start</name>
<nodeHandler>com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandler>
<nodeHandlerClass id="148">com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandlerClass>
<sources id="149" type="java.util.HashSet"/>
<targets id="150" type="java.util.HashSet">
<item idref="144" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>START</type>
</source>
<target idref="137"/>
</item>
</sources>
<targets id="151" type="java.util.HashSet">
<item idref="135" type="com.j2fe.workflow.definition.Transition"/>
<item id="152" type="com.j2fe.workflow.definition.Transition">
<name id="153">true</name>
<source idref="137"/>
<target idref="3"/>
</item>
</targets>
<type>XORSPLIT</type>
</source>
<target idref="119"/>
</item>
</sources>
<targets id="154" type="java.util.HashSet">
<item idref="117" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="97"/>
</item>
</sources>
<targets id="155" type="java.util.HashSet">
<item id="156" type="com.j2fe.workflow.definition.Transition">
<name id="157">nothing-found</name>
<source idref="97"/>
<target idref="9"/>
</item>
<item idref="95" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>XORSPLIT</type>
</source>
<target idref="19"/>
</item>
</sources>
<targets id="158" type="java.util.HashSet">
<item idref="17" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="9"/>
</item>
<item idref="156" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="159" type="java.util.HashSet">
<item idref="7" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="3"/>
</item>
<item idref="152" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="160" type="java.util.HashSet"/>
<type>END</type>
</endNode>
<forcePurgeAtEnd>false</forcePurgeAtEnd>
<group id="161">Custom/BBGPerSec</group>
<haltOnError>false</haltOnError>
<lastChangeUser id="162">user1</lastChangeUser>
<lastUpdate id="163">2023-12-12T11:41:00.000-0500</lastUpdate>
<name id="164">Nuveen_BBPerSec_LevFin_Wrapper</name>
<optimize>true</optimize>
<parameter id="165" type="java.util.HashMap">
<entry>
<key id="166" type="java.lang.String">BBDownloadDirectory</key>
<value id="167" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="168">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="169" type="java.lang.String">BBTimeout</key>
<value id="170" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="171">java.lang.Long</className>
<clazz>java.lang.Long</clazz>
<description idref="2"/>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="172" type="java.lang.String">BBUploadDirectory</key>
<value id="173" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="174">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="175" type="java.lang.String">ExcludeFields</key>
<value id="176" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="177">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="178" type="java.lang.String">JobConfigText</key>
<value id="179" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="180">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="181" type="java.lang.String">MaxRequestsPerFile</key>
<value id="182" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="183">java.lang.Long</className>
<clazz>java.lang.Long</clazz>
<description idref="2"/>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="184" type="java.lang.String">MaxRetryTime</key>
<value id="185" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="186">java.lang.Integer</className>
<clazz>java.lang.Integer</clazz>
<description idref="2"/>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="187" type="java.lang.String">MoveDirectory</key>
<value id="188" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="189">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="190" type="java.lang.String">NoOfFilesToRunInParallel</key>
<value id="191" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="192">java.lang.Integer</className>
<clazz>java.lang.Integer</clazz>
<description idref="2"/>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="193" type="java.lang.String">ParticipantPurposeType</key>
<value id="194" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="195">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="196" type="java.lang.String">PreserveSpacesInBBIdentifier</key>
<value id="197" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="198">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description idref="2"/>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="199" type="java.lang.String">ProcessResponseFileImmediately</key>
<value id="200" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="201">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description idref="2"/>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="202" type="java.lang.String">RemoveDuplicateFields</key>
<value id="203" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="204">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description idref="2"/>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="205" type="java.lang.String">RequestSize</key>
<value id="206" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="207">java.lang.Integer</className>
<clazz>java.lang.Integer</clazz>
<description id="208">Number of Instruments to be added to single request XML</description>
<input>true</input>
<output>false</output>
<required>true</required>
</value>
</entry>
<entry>
<key id="209" type="java.lang.String">StoreRequestFileLocalDirectory</key>
<value id="210" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="211">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="212" type="java.lang.String">StoreRequestFileonLocal</key>
<value id="213" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="214">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description idref="2"/>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="215" type="java.lang.String">isOpenFigiEnabled</key>
<value id="216" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="217">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description idref="2"/>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
</parameter>
<permissions id="218" type="java.util.HashSet"/>
<priority>50</priority>
<purgeAtEnd>false</purgeAtEnd>
<retries>0</retries>
<startNode idref="146"/>
<status>RELEASED</status>
<variables id="219" type="java.util.HashMap">
<entry>
<key id="220" type="java.lang.String">BBDownloadDirectory</key>
<value id="221" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="222">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<persistent>false</persistent>
<value id="223" type="java.lang.String">/</value>
</value>
</entry>
<entry>
<key id="224" type="java.lang.String">BBTimeout</key>
<value id="225" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="226">java.lang.Long</className>
<clazz>java.lang.Long</clazz>
<description idref="2"/>
<persistent>false</persistent>
<value id="227" type="java.lang.Long">3000</value>
</value>
</entry>
<entry>
<key id="228" type="java.lang.String">BBUploadDirectory</key>
<value id="229" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="230">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="231" type="java.lang.String">ExcludeFields</key>
<value id="232" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="233">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="234" type="java.lang.String">JobConfigText</key>
<value id="235" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="236">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="237" type="java.lang.String">MaxRequestsPerFile</key>
<value id="238" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="239">java.lang.Long</className>
<clazz>java.lang.Long</clazz>
<description idref="2"/>
<persistent>false</persistent>
<value id="240" type="java.lang.Long">500</value>
</value>
</entry>
<entry>
<key id="241" type="java.lang.String">MaxRetryTime</key>
<value id="242" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="243">java.lang.Integer</className>
<clazz>java.lang.Integer</clazz>
<description idref="2"/>
<persistent>false</persistent>
<value id="244" type="java.lang.Integer">900</value>
</value>
</entry>
<entry>
<key id="245" type="java.lang.String">MoveDirectory</key>
<value id="246" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="247">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="248" type="java.lang.String">NoOfFilesToRunInParallel</key>
<value id="249" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="250">java.lang.Integer</className>
<clazz>java.lang.Integer</clazz>
<description idref="2"/>
<persistent>false</persistent>
<value id="251" type="java.lang.Integer">2</value>
</value>
</entry>
<entry>
<key id="252" type="java.lang.String">ParticipantPurposeType</key>
<value id="253" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="254">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="255" type="java.lang.String">PreserveSpacesInBBIdentifier</key>
<value id="256" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="257">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description idref="2"/>
<persistent>false</persistent>
<value idref="128"/>
</value>
</entry>
<entry>
<key id="258" type="java.lang.String">ProcessResponseFileImmediately</key>
<value id="259" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="260">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description idref="2"/>
<persistent>false</persistent>
<value idref="128"/>
</value>
</entry>
<entry>
<key id="261" type="java.lang.String">RemoveDuplicateFields</key>
<value id="262" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="263">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description idref="2"/>
<persistent>false</persistent>
<value idref="128"/>
</value>
</entry>
<entry>
<key id="264" type="java.lang.String">RequestSize</key>
<value id="265" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="266">java.lang.Integer</className>
<clazz>java.lang.Integer</clazz>
<description id="267">Number of Instruments to be added to single request XML</description>
<persistent>false</persistent>
<value id="268" type="java.lang.Integer">100</value>
</value>
</entry>
<entry>
<key id="269" type="java.lang.String">StoreRequestFileLocalDirectory</key>
<value id="270" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="271">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="272" type="java.lang.String">StoreRequestFileonLocal</key>
<value id="273" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="274">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description idref="2"/>
<persistent>false</persistent>
<value idref="128"/>
</value>
</entry>
<entry>
<key id="275" type="java.lang.String">isOpenFigiEnabled</key>
<value id="276" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="277">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description idref="2"/>
<persistent>false</persistent>
<value id="278" type="java.lang.Boolean">false</value>
</value>
</entry>
<entry>
<key id="279" type="java.lang.String">loopCounter</key>
<value id="280" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="281">java.lang.Integer</className>
<clazz>java.lang.Integer</clazz>
<description idref="2"/>
<persistent>false</persistent>
<value id="282" type="java.lang.Integer">0</value>
</value>
</entry>
<entry>
<key id="283" type="java.lang.String">requestCount</key>
<value id="284" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="285">java.lang.Integer</className>
<clazz>java.lang.Integer</clazz>
<description idref="2"/>
<persistent>false</persistent>
</value>
</entry>
</variables>
<version>37</version>
</com.j2fe.workflow.definition.Workflow>
</businessobject>
</goldensource-package>
