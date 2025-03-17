<?xml version="1.0" encoding="UTF-8" standalone="no"?>
<goldensource-package version="8.8.1.34">
<package-comment/>
<businessobject displayString="13 - NRE_WF_Cleanup" type="com.j2fe.workflow.definition.Workflow">
<com.j2fe.workflow.definition.Workflow id="0">
<alwaysPersist>false</alwaysPersist>
<clustered>true</clustered>
<comment id="1">NRE_WF_Cleanup</comment>
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
<name id="10">Update UIDS</name>
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
<stringValue id="18">update ft_T_uids set create_usr_id = 'userx' where dashboard_nme = 'Publishing Report';</stringValue>
<type>CONSTANT</type>
</item>
</parameters>
<sources id="19" type="java.util.HashSet">
<item id="20" type="com.j2fe.workflow.definition.Transition">
<name id="21">goto-next</name>
<source id="22">
<activation>TRANSACTIONAL</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="23">Delete NRE BECH</name>
<nodeHandler>com.j2fe.general.activities.database.DBStatement</nodeHandler>
<nodeHandlerClass id="24">com.j2fe.general.activities.database.DBStatement</nodeHandlerClass>
<parameters id="25" type="java.util.HashSet">
<item id="26" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="27">database</name>
<stringValue id="28">jdbc/GSDM-1</stringValue>
<type>REFERENCE</type>
</item>
<item id="29" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="30">querySQL</name>
<stringValue id="31">delete from ft_be_bech where bdef_oid in (select bdef_oid from ft_be_bdef where bus_entity_data_nme like 'Property%');</stringValue>
<type>CONSTANT</type>
</item>
</parameters>
<sources id="32" type="java.util.HashSet">
<item id="33" type="com.j2fe.workflow.definition.Transition">
<name id="34">goto-next</name>
<source id="35">
<activation>TRANSACTIONAL</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="36">Delete Mailing Address</name>
<nodeHandler>com.j2fe.general.activities.database.DBStatement</nodeHandler>
<nodeHandlerClass id="37">com.j2fe.general.activities.database.DBStatement</nodeHandlerClass>
<parameters id="38" type="java.util.HashSet">
<item id="39" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="40">database</name>
<stringValue id="41">jdbc/GSDM-1</stringValue>
<type>REFERENCE</type>
</item>
<item id="42" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="43">querySQL</name>
<stringValue id="44">delete from ft_t_madr ftm where last_chg_usr_id in ('NREHYDRA','NRE','YARDI','DEALPATH') or last_chg_usr_id like '%com%';</stringValue>
<type>CONSTANT</type>
</item>
</parameters>
<sources id="45" type="java.util.HashSet">
<item id="46" type="com.j2fe.workflow.definition.Transition">
<name id="47">goto-next</name>
<source id="48">
<activation>TRANSACTIONAL</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="49">Delete Property</name>
<nodeHandler>com.j2fe.general.activities.database.DBStatement</nodeHandler>
<nodeHandlerClass id="50">com.j2fe.general.activities.database.DBStatement</nodeHandlerClass>
<parameters id="51" type="java.util.HashSet">
<item id="52" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="53">database</name>
<stringValue id="54">jdbc/GSDM-1</stringValue>
<type>REFERENCE</type>
</item>
<item id="55" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="56">querySQL</name>
<stringValue id="57">delete from ft_t_ppry ftp where ppry_oid not in (select ppry_oid from ft_T_ppdc);</stringValue>
<type>CONSTANT</type>
</item>
</parameters>
<sources id="58" type="java.util.HashSet">
<item id="59" type="com.j2fe.workflow.definition.Transition">
<name id="60">goto-next</name>
<source id="61">
<activation>TRANSACTIONAL</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="62">Delete Property Relationship Type</name>
<nodeHandler>com.j2fe.general.activities.database.DBStatement</nodeHandler>
<nodeHandlerClass id="63">com.j2fe.general.activities.database.DBStatement</nodeHandlerClass>
<parameters id="64" type="java.util.HashSet">
<item id="65" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="66">database</name>
<stringValue id="67">jdbc/GSDM-1</stringValue>
<type>REFERENCE</type>
</item>
<item id="68" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="69">querySQL</name>
<stringValue id="70">delete from ft_t_pprl ftp where ppry_oid in (select ppry_oid from ft_t_ppry ftp);</stringValue>
<type>CONSTANT</type>
</item>
</parameters>
<sources id="71" type="java.util.HashSet">
<item id="72" type="com.j2fe.workflow.definition.Transition">
<name id="73">goto-next</name>
<source id="74">
<activation>TRANSACTIONAL</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="75">Delete Property Identifiers</name>
<nodeHandler>com.j2fe.general.activities.database.DBStatement</nodeHandler>
<nodeHandlerClass id="76">com.j2fe.general.activities.database.DBStatement</nodeHandlerClass>
<parameters id="77" type="java.util.HashSet">
<item id="78" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="79">database</name>
<stringValue id="80">jdbc/GSDM-1</stringValue>
<type>REFERENCE</type>
</item>
<item id="81" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="82">querySQL</name>
<stringValue id="83">delete from ft_t_ppid ftp where ppry_oid in (select ppry_oid from ft_t_ppry ftp);</stringValue>
<type>CONSTANT</type>
</item>
</parameters>
<sources id="84" type="java.util.HashSet">
<item id="85" type="com.j2fe.workflow.definition.Transition">
<name id="86">goto-next</name>
<source id="87">
<activation>TRANSACTIONAL</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="88">Delete Property Statistics</name>
<nodeHandler>com.j2fe.general.activities.database.DBStatement</nodeHandler>
<nodeHandlerClass id="89">com.j2fe.general.activities.database.DBStatement</nodeHandlerClass>
<parameters id="90" type="java.util.HashSet">
<item id="91" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="92">database</name>
<stringValue id="93">jdbc/GSDM-1</stringValue>
<type>REFERENCE</type>
</item>
<item id="94" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="95">querySQL</name>
<stringValue id="96">delete from ft_t_ppst ftp where ppry_oid in (select ppry_oid from ft_t_ppry ftp);</stringValue>
<type>CONSTANT</type>
</item>
</parameters>
<sources id="97" type="java.util.HashSet">
<item id="98" type="com.j2fe.workflow.definition.Transition">
<name id="99">goto-next</name>
<source id="100">
<activation>TRANSACTIONAL</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="101">Delete CCRF</name>
<nodeHandler>com.j2fe.general.activities.database.DBStatement</nodeHandler>
<nodeHandlerClass id="102">com.j2fe.general.activities.database.DBStatement</nodeHandlerClass>
<parameters id="103" type="java.util.HashSet">
<item id="104" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="105">database</name>
<stringValue id="106">jdbc/GSDM-1</stringValue>
<type>REFERENCE</type>
</item>
<item id="107" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="108">querySQL</name>
<stringValue id="109">delete from ft_t_ccrf ftc where ppry_oid is not null and ppry_oid in (select ppry_oid from ft_t_ppry ftp);</stringValue>
<type>CONSTANT</type>
</item>
</parameters>
<sources id="110" type="java.util.HashSet">
<item id="111" type="com.j2fe.workflow.definition.Transition">
<name id="112">goto-next</name>
<source id="113">
<activation>TRANSACTIONAL</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="114">Delete Address Type</name>
<nodeHandler>com.j2fe.general.activities.database.DBStatement</nodeHandler>
<nodeHandlerClass id="115">com.j2fe.general.activities.database.DBStatement</nodeHandlerClass>
<parameters id="116" type="java.util.HashSet">
<item id="117" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="118">database</name>
<stringValue id="119">jdbc/GSDM-1</stringValue>
<type>REFERENCE</type>
</item>
<item id="120" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="121">querySQL</name>
<stringValue id="122">delete from ft_t_adtp fta where cntl_cross_ref_oid in (select cntl_cross_ref_oid from ft_t_ccrf ftc where ppry_oid is not null and ppry_oid in (select ppry_oid from ft_t_ppry ftp));</stringValue>
<type>CONSTANT</type>
</item>
</parameters>
<sources id="123" type="java.util.HashSet">
<item id="124" type="com.j2fe.workflow.definition.Transition">
<name id="125">goto-next</name>
<source id="126">
<activation>TRANSACTIONAL</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="127">Delete Address Purpose</name>
<nodeHandler>com.j2fe.general.activities.database.DBStatement</nodeHandler>
<nodeHandlerClass id="128">com.j2fe.general.activities.database.DBStatement</nodeHandlerClass>
<parameters id="129" type="java.util.HashSet">
<item id="130" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="131">database</name>
<stringValue id="132">jdbc/GSDM-1</stringValue>
<type>REFERENCE</type>
</item>
<item id="133" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="134">querySQL</name>
<stringValue id="135">delete from ft_t_adpu fta where addr_typ_id in (select addr_typ_id from ft_t_adtp fta where cntl_cross_ref_oid in (select cntl_cross_ref_oid from ft_t_ccrf ftc where ppry_oid is not null and ppry_oid in (select ppry_oid from ft_t_ppry ftp)));</stringValue>
<type>CONSTANT</type>
</item>
</parameters>
<sources id="136" type="java.util.HashSet">
<item id="137" type="com.j2fe.workflow.definition.Transition">
<name id="138">goto-next</name>
<source id="139">
<activation>TRANSACTIONAL</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="140">Start</name>
<nodeHandler>com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandler>
<nodeHandlerClass id="141">com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandlerClass>
<sources id="142" type="java.util.HashSet"/>
<targets id="143" type="java.util.HashSet">
<item idref="137" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>START</type>
</source>
<target idref="126"/>
</item>
</sources>
<targets id="144" type="java.util.HashSet">
<item idref="124" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="113"/>
</item>
</sources>
<targets id="145" type="java.util.HashSet">
<item idref="111" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="100"/>
</item>
</sources>
<targets id="146" type="java.util.HashSet">
<item idref="98" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="87"/>
</item>
</sources>
<targets id="147" type="java.util.HashSet">
<item idref="85" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="74"/>
</item>
</sources>
<targets id="148" type="java.util.HashSet">
<item idref="72" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="61"/>
</item>
</sources>
<targets id="149" type="java.util.HashSet">
<item idref="59" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="48"/>
</item>
</sources>
<targets id="150" type="java.util.HashSet">
<item idref="46" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="35"/>
</item>
</sources>
<targets id="151" type="java.util.HashSet">
<item idref="33" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="22"/>
</item>
</sources>
<targets id="152" type="java.util.HashSet">
<item idref="20" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="9"/>
</item>
</sources>
<targets id="153" type="java.util.HashSet">
<item idref="7" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="3"/>
</item>
</sources>
<targets id="154" type="java.util.HashSet"/>
<type>END</type>
</endNode>
<forcePurgeAtEnd>false</forcePurgeAtEnd>
<group id="155">Custom/Cleanup</group>
<haltOnError>false</haltOnError>
<lastChangeUser id="156">user1</lastChangeUser>
<lastUpdate id="157">2024-03-26T19:41:23.000+0530</lastUpdate>
<name id="158">NRE_WF_Cleanup</name>
<optimize>true</optimize>
<parameter id="159" type="java.util.HashMap"/>
<permissions id="160" type="java.util.HashSet"/>
<priority>50</priority>
<purgeAtEnd>true</purgeAtEnd>
<retries>0</retries>
<startNode idref="139"/>
<status>RELEASED</status>
<variables id="161" type="java.util.HashMap"/>
<version>13</version>
</com.j2fe.workflow.definition.Workflow>
</businessobject>
</goldensource-package>
