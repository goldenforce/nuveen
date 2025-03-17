<?xml version="1.0" encoding="UTF-8" standalone="no"?>
<goldensource-package version="8.8.1.47">
<package-comment/>
<businessobject displayString="2 - 20231211 v1" type="com.j2fe.workflow.definition.Workflow">
<com.j2fe.workflow.definition.Workflow id="0">
<alwaysPersist>false</alwaysPersist>
<clustered>true</clustered>
<comment id="1">20231211 v1</comment>
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
<activation>TRANSACTIONAL</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="10">Update 588 NTEL</name>
<nodeHandler>com.j2fe.general.activities.database.DBStatement</nodeHandler>
<nodeHandlerClass id="11">com.j2fe.general.activities.database.DBStatement</nodeHandlerClass>
<parameters id="12" type="java.util.HashSet">
<item id="13" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="14">database</name>
<stringValue id="15">jdbc/GSDM-1</stringValue>
<type>REFERENCE</type>
</item>
<item id="16" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="17">querySQL</name>
<stringValue id="18">update ft_t_ntel set msg_severity_cde  = 30 where notfcn_stat_typ ='OPEN' and notfcn_id ='588' and appl_id  ='STRDATA' and part_id ='RULEPRC' and xref_tbl_typ ='ISSU' and msg_typ ='Eagle_GSInstrument' and msg_severity_cde &gt; 30 </stringValue>
<type>CONSTANT</type>
</item>
</parameters>
<sources id="19" type="java.util.HashSet">
<item id="20" type="com.j2fe.workflow.definition.Transition">
<name id="21">goto-next</name>
<source id="22">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="23">Start</name>
<nodeHandler>com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandler>
<nodeHandlerClass id="24">com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandlerClass>
<sources id="25" type="java.util.HashSet"/>
<targets id="26" type="java.util.HashSet">
<item idref="20" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>START</type>
</source>
<target idref="9"/>
</item>
</sources>
<targets id="27" type="java.util.HashSet">
<item idref="7" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="3"/>
</item>
</sources>
<targets id="28" type="java.util.HashSet"/>
<type>END</type>
</endNode>
<forcePurgeAtEnd>false</forcePurgeAtEnd>
<group id="29">Custom/Processing</group>
<haltOnError>false</haltOnError>
<lastChangeUser id="30">user1</lastChangeUser>
<lastUpdate id="31">2023-12-11T13:47:21.000+0530</lastUpdate>
<name id="32">Nuveen_LevFin_NTEL_Update</name>
<optimize>true</optimize>
<parameter id="33" type="java.util.HashMap"/>
<permissions id="34" type="java.util.HashSet"/>
<priority>50</priority>
<purgeAtEnd>true</purgeAtEnd>
<retries>0</retries>
<startNode idref="22"/>
<status>RELEASED</status>
<variables id="35" type="java.util.HashMap"/>
<version>2</version>
</com.j2fe.workflow.definition.Workflow>
</businessobject>
</goldensource-package>
