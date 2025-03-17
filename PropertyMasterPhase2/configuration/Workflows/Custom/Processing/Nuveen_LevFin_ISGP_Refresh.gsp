<?xml version="1.0" encoding="UTF-8" standalone="no"?>
<goldensource-package version="8.8.1.64">
<package-comment>Nuveen_LevFin_ISGP_Refresh workflow update</package-comment>
<businessobject displayString="29 - 20241019 - Levfin0003 check for UDF1" type="com.j2fe.workflow.definition.Workflow">
<com.j2fe.workflow.definition.Workflow id="0">
<alwaysPersist>false</alwaysPersist>
<clustered>true</clustered>
<comment id="1">20241019 - Levfin0003 check for UDF1</comment>
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
<name id="20">Purge LevFin Group Participants</name>
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
<stringValue id="28">delete from ft_t_isgp where prnt_iss_grp_oid in (select iss_grp_oid from ft_t_isgr where iss_grp_id like 'LEVFIN%' and iss_grp_oid != 'LEVFIN0003') and end_tms is null</stringValue>
<type>CONSTANT</type>
</item>
<item id="29" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="30">rowCount</name>
<stringValue id="31">ISGPDeleteCount</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
</parameters>
<persistentVariables id="32" type="java.util.HashSet">
<item id="33" type="java.lang.String">ISGPDeleteCount
1000</item>
</persistentVariables>
<sources id="34" type="java.util.HashSet">
<item id="35" type="com.j2fe.workflow.definition.Transition">
<name id="36">goto-next</name>
<source id="37">
<activation>TRANSACTIONAL</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="38">Reset LRD SubscriptionFlag</name>
<nodeHandler>com.j2fe.general.activities.database.DBStatement</nodeHandler>
<nodeHandlerClass id="39">com.j2fe.general.activities.database.DBStatement</nodeHandlerClass>
<parameters id="40" type="java.util.HashSet">
<item id="41" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="42">database</name>
<stringValue id="43">jdbc/GSDM-1</stringValue>
<type>REFERENCE</type>
</item>
<item id="44" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="45">querySQL</name>
<stringValue id="46">update ft_e_udf1 udf1 &#13;
set lrd_subscrption_flag  = null , last_chg_usr_id ='LRDFLG_RESET'&#13;
where lrd_subscrption_flag = 'Y'&#13;
and not exists (select 'x' from ft_t_ovrc where tbl_id ='UDF1' and col_nme ='LRD_SUBSCRPTION_FLAG' and ovr_ref_typ ='ISSU'&#13;
and udf1.instr_id = ovr_ref_oid)&#13;
and not exists (select 'x' from FT_T_ISST ISST where ISST.stat_def_id = 'NVLRDIND' and ISST.stat_char_val_txt = 'Y' and udf1.instr_id = ISST.instr_id)&#13;
and not exists (select 'x' from ft_T_isgp ISGP where ISGP.prnt_iss_grp_oid = 'LEVFIN0003' and udf1.instr_id=ISGP.instr_id)</stringValue>
<type>CONSTANT</type>
</item>
<item id="47" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="48">rowCount</name>
<stringValue id="49">LRDResetCount</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<persistentVariables id="50" type="java.util.HashSet">
<item id="51" type="java.lang.String">LRDResetCount
1000</item>
</persistentVariables>
<sources id="52" type="java.util.HashSet">
<item id="53" type="com.j2fe.workflow.definition.Transition">
<name id="54">goto-next</name>
<source id="55">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="56">Create Job </name>
<nodeHandler>com.j2fe.streetlamp.activities.CreateJob</nodeHandler>
<nodeHandlerClass id="57">com.j2fe.streetlamp.activities.CreateJob</nodeHandlerClass>
<parameters id="58" type="java.util.HashSet">
<item id="59" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="60">configInfo</name>
<stringValue id="61">JobConfigText</stringValue>
<type>VARIABLE</type>
</item>
<item id="62" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="63">jobId</name>
<stringValue id="64">JobID</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<persistentVariables id="65" type="java.util.HashSet">
<item id="66" type="java.lang.String">JobID
1000</item>
</persistentVariables>
<sources id="67" type="java.util.HashSet">
<item id="68" type="com.j2fe.workflow.definition.Transition">
<name id="69">goto-next</name>
<source id="70">
<activation>ASYNCHRONOUS</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="71">Start</name>
<nodeHandler>com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandler>
<nodeHandlerClass id="72">com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandlerClass>
<sources id="73" type="java.util.HashSet"/>
<targets id="74" type="java.util.HashSet">
<item idref="68" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>START</type>
</source>
<target idref="55"/>
</item>
</sources>
<targets id="75" type="java.util.HashSet">
<item idref="53" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="37"/>
</item>
</sources>
<targets id="76" type="java.util.HashSet">
<item idref="35" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="19"/>
</item>
</sources>
<targets id="77" type="java.util.HashSet">
<item idref="17" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="9"/>
</item>
</sources>
<targets id="78" type="java.util.HashSet">
<item idref="7" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="3"/>
</item>
</sources>
<targets id="79" type="java.util.HashSet"/>
<type>END</type>
</endNode>
<forcePurgeAtEnd>false</forcePurgeAtEnd>
<group id="80">Custom/Processing</group>
<haltOnError>true</haltOnError>
<lastChangeUser id="81">user1</lastChangeUser>
<lastUpdate id="82">2024-10-22T23:47:03.000+0530</lastUpdate>
<name id="83">Nuveen_LevFin_ISGP_Refresh</name>
<optimize>true</optimize>
<parameter id="84" type="java.util.HashMap">
<entry>
<key id="85" type="java.lang.String">JobConfigText</key>
<value id="86" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="87">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
</parameter>
<permissions id="88" type="java.util.HashSet"/>
<priority>50</priority>
<purgeAtEnd>true</purgeAtEnd>
<retries>0</retries>
<startNode idref="70"/>
<status>RELEASED</status>
<variables id="89" type="java.util.HashMap">
<entry>
<key id="90" type="java.lang.String">JobConfigText</key>
<value id="91" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="92">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<persistent>false</persistent>
</value>
</entry>
</variables>
<version>29</version>
</com.j2fe.workflow.definition.Workflow>
</businessobject>
</goldensource-package>
