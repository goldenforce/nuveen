<?xml version="1.0" encoding="UTF-8" standalone="no"?>
<goldensource-package version="8.8.1.34">
<package-comment/>
<businessobject displayString="3 - 20241004_IMS-40519_confg_txt_add" type="com.j2fe.workflow.definition.Workflow">
<com.j2fe.workflow.definition.Workflow id="0">
<alwaysPersist>false</alwaysPersist>
<clustered>true</clustered>
<comment id="1">20241004_IMS-40519_confg_txt_add</comment>
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
<name id="10">Close Job</name>
<nodeHandler>com.j2fe.streetlamp.activities.CloseJob</nodeHandler>
<nodeHandlerClass id="11">com.j2fe.streetlamp.activities.CloseJob</nodeHandlerClass>
<parameters id="12" type="java.util.HashSet">
<item id="13" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="14">jobId</name>
<stringValue id="15">JobID</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
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
<name id="20">Exception Cleanup</name>
<nodeHandler>com.j2fe.general.activities.database.DBStatement</nodeHandler>
<nodeHandlerClass id="21">com.j2fe.general.activities.database.DBStatement</nodeHandlerClass>
<parameters id="22" type="java.util.HashSet">
<item id="23" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="24">database</name>
<stringValue id="25">jdbc/GSDM-1</stringValue>
<type>REFERENCE</type>
</item>
<item id="26" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="27">querySQL</name>
<stringValue id="28">SqlDynamic</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="29" type="java.util.HashSet">
<item id="30" type="com.j2fe.workflow.definition.Transition">
<name id="31">goto-next</name>
<source id="32">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="33">Create Job</name>
<nodeHandler>com.j2fe.streetlamp.activities.CreateJob</nodeHandler>
<nodeHandlerClass id="34">com.j2fe.streetlamp.activities.CreateJob</nodeHandlerClass>
<parameters id="35" type="java.util.HashSet">
<item id="36" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="37">configInfo</name>
<stringValue id="38">ExceptionCleanup</stringValue>
<type>CONSTANT</type>
</item>
<item id="39" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="40">flushImmediate</name>
<stringValue id="41">true</stringValue>
<type>CONSTANT</type>
</item>
<item id="42" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="43">jobId</name>
<stringValue id="44">JobID</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
</parameters>
<sources id="45" type="java.util.HashSet">
<item id="46" type="com.j2fe.workflow.definition.Transition">
<name id="47">goto-next</name>
<source id="48">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="49">Start</name>
<nodeHandler>com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandler>
<nodeHandlerClass id="50">com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandlerClass>
<sources id="51" type="java.util.HashSet"/>
<targets id="52" type="java.util.HashSet">
<item idref="46" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>START</type>
</source>
<target idref="32"/>
</item>
</sources>
<targets id="53" type="java.util.HashSet">
<item idref="30" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="19"/>
</item>
</sources>
<targets id="54" type="java.util.HashSet">
<item idref="17" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="9"/>
</item>
</sources>
<targets id="55" type="java.util.HashSet">
<item idref="7" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="3"/>
</item>
</sources>
<targets id="56" type="java.util.HashSet"/>
<type>END</type>
</endNode>
<forcePurgeAtEnd>false</forcePurgeAtEnd>
<group id="57">Custom/Cleanup</group>
<haltOnError>false</haltOnError>
<lastChangeUser id="58">user1</lastChangeUser>
<lastUpdate id="59">2024-10-30T14:06:16.000-0400</lastUpdate>
<name id="60">NV_Exeception_Cleanup</name>
<optimize>true</optimize>
<parameter id="61" type="java.util.HashMap">
<entry>
<key id="62" type="java.lang.String">SqlDynamic</key>
<value id="63" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="64">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
</parameter>
<permissions id="65" type="java.util.HashSet"/>
<priority>50</priority>
<purgeAtEnd>true</purgeAtEnd>
<retries>0</retries>
<startNode idref="48"/>
<status>RELEASED</status>
<variables id="66" type="java.util.HashMap">
<entry>
<key id="67" type="java.lang.String">SqlDynamic</key>
<value id="68" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="69">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<persistent>false</persistent>
</value>
</entry>
</variables>
<version>3</version>
</com.j2fe.workflow.definition.Workflow>
</businessobject>
</goldensource-package>
