<?xml version="1.0" encoding="UTF-8" standalone="no"?>
<goldensource-package version="8.8.1.34">
<package-comment/>
<businessobject displayString="1 - 20241230-RatingReconToggle" type="com.j2fe.workflow.definition.Workflow">
<com.j2fe.workflow.definition.Workflow id="0">
<alwaysPersist>false</alwaysPersist>
<clustered>true</clustered>
<comment id="1">20241230-RatingReconToggle</comment>
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
<variablePart idref="2"/>
</item>
</parameters>
<sources id="16" type="java.util.HashSet">
<item id="17" type="com.j2fe.workflow.definition.Transition">
<name id="18">goto-next</name>
<source id="19">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="20">Rating_Recon_Toggle</name>
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
<name id="27">indexedParameters[0]</name>
<stringValue id="28">RatingRecon</stringValue>
<type>VARIABLE</type>
</item>
<item id="29" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="30">querySQL</name>
<stringValue id="31">insert into ft_t_rrr1 values (?)</stringValue>
<type>CONSTANT</type>
</item>
</parameters>
<sources id="32" type="java.util.HashSet">
<item id="33" type="com.j2fe.workflow.definition.Transition">
<name id="34">goto-next</name>
<source id="35">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="36">Create Job </name>
<nodeHandler>com.j2fe.streetlamp.activities.CreateJob</nodeHandler>
<nodeHandlerClass id="37">com.j2fe.streetlamp.activities.CreateJob</nodeHandlerClass>
<parameters id="38" type="java.util.HashSet">
<item id="39" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="40">configInfo</name>
<stringValue id="41">Rating Recon Toggle</stringValue>
<type>CONSTANT</type>
</item>
<item id="42" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="43">jobId</name>
<stringValue id="44">JobID</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="45" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="46">parentJobId</name>
<stringValue id="47">ParentJobID</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<persistentVariables id="48" type="java.util.HashSet">
<item id="49" type="java.lang.String">JobID
1000</item>
</persistentVariables>
<sources id="50" type="java.util.HashSet">
<item id="51" type="com.j2fe.workflow.definition.Transition">
<name id="52">goto-next</name>
<source id="53">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="54">Start</name>
<nodeHandler>com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandler>
<nodeHandlerClass id="55">com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandlerClass>
<sources id="56" type="java.util.HashSet"/>
<targets id="57" type="java.util.HashSet">
<item idref="51" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>START</type>
</source>
<target idref="35"/>
</item>
</sources>
<targets id="58" type="java.util.HashSet">
<item idref="33" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="19"/>
</item>
</sources>
<targets id="59" type="java.util.HashSet">
<item idref="17" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="9"/>
</item>
</sources>
<targets id="60" type="java.util.HashSet">
<item idref="7" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="3"/>
</item>
</sources>
<targets id="61" type="java.util.HashSet"/>
<type>END</type>
</endNode>
<forcePurgeAtEnd>false</forcePurgeAtEnd>
<group id="62">Custom/Nuveen_Rating_Recon</group>
<haltOnError>false</haltOnError>
<lastChangeUser id="63">user1</lastChangeUser>
<lastUpdate id="64">2025-01-01T01:40:49.000+0530</lastUpdate>
<name id="65">Rating_Recon_Toggle</name>
<optimize>true</optimize>
<parameter id="66" type="java.util.HashMap">
<entry>
<key id="67" type="java.lang.String">ParentJobID</key>
<value id="68" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="69">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="70" type="java.lang.String">RatingRecon</key>
<value id="71" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="72">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
</parameter>
<permissions id="73" type="java.util.HashSet"/>
<priority>50</priority>
<purgeAtEnd>false</purgeAtEnd>
<retries>0</retries>
<startNode idref="53"/>
<status>RELEASED</status>
<variables id="74" type="java.util.HashMap">
<entry>
<key id="75" type="java.lang.String">ParentJobID</key>
<value id="76" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="77">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="78" type="java.lang.String">RatingRecon</key>
<value id="79" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="80">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<persistent>false</persistent>
<value id="81" type="java.lang.String">N</value>
</value>
</entry>
</variables>
<version>1</version>
</com.j2fe.workflow.definition.Workflow>
</businessobject>
</goldensource-package>
