<?xml version="1.0" encoding="UTF-8" standalone="no"?>
<goldensource-package version="8.8.1.64">
<package-comment/>
<businessobject displayString="5 - Initial Version" type="com.j2fe.workflow.definition.Workflow">
<com.j2fe.workflow.definition.Workflow id="0">
<alwaysPersist>false</alwaysPersist>
<clustered>true</clustered>
<comment id="1">Initial Version</comment>
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
<stringValue id="15">ParentJobID</stringValue>
<type>VARIABLE</type>
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
<name id="20">Call Subworkflow </name>
<nodeHandler>com.j2fe.workflow.handler.impl.CallSubWorkflow</nodeHandler>
<nodeHandlerClass id="21">com.j2fe.workflow.handler.impl.CallSubWorkflow</nodeHandlerClass>
<parameters id="22" type="java.util.HashSet">
<item id="23" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="24">["DateFormatReplaceFlag"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="25">input["DateFormatReplaceFlag"]</name>
<objectValue id="26" type="java.lang.Boolean">false</objectValue>
<type>CONSTANT</type>
</item>
<item id="27" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="28">["EmailFrom"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="29">input["EmailFrom"]</name>
<stringValue id="30">noreply@nuveen.com</stringValue>
<type>CONSTANT</type>
</item>
<item id="31" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="32">["EmailHost"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="33">input["EmailHost"]</name>
<stringValue id="34">localhost</stringValue>
<type>CONSTANT</type>
</item>
<item id="35" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="36">["EmailPort"]@java/lang/Integer@</UITypeHint>
<input>true</input>
<name id="37">input["EmailPort"]</name>
<objectValue id="38" type="java.lang.Integer">25</objectValue>
<type>CONSTANT</type>
</item>
<item id="39" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="40">["EmailSessionJNDI"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="41">input["EmailSessionJNDI"]</name>
<stringValue id="42">java:jboss/Mail</stringValue>
<type>CONSTANT</type>
</item>
<item id="43" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="44">["EmailType"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="45">input["EmailType"]</name>
<stringValue id="46">Both</stringValue>
<type>CONSTANT</type>
</item>
<item id="47" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="48">["EmptyMailFlag"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="49">input["EmptyMailFlag"]</name>
<objectValue id="50" type="java.lang.Boolean">true</objectValue>
<type>CONSTANT</type>
</item>
<item id="51" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="52">["ResultLimit"]@java/lang/Integer@</UITypeHint>
<input>true</input>
<name id="53">input["ResultLimit"]</name>
<objectValue id="54" type="java.lang.Integer">500</objectValue>
<type>CONSTANT</type>
</item>
<item id="55" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="56">["SeqNo"]@java/lang/Integer@</UITypeHint>
<input>true</input>
<name id="57">input["SeqNo"]</name>
<stringValue id="58">SeqNo</stringValue>
<type>VARIABLE</type>
</item>
<item id="59" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="60">["UseEmailSession"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="61">input["UseEmailSession"]</name>
<objectValue idref="50"/>
<type>CONSTANT</type>
</item>
<item id="62" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="63">["dbType"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="64">input["dbType"]</name>
<stringValue id="65">postgres</stringValue>
<type>CONSTANT</type>
</item>
<item id="66" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="67">name</name>
<stringValue id="68">GenerateReports</stringValue>
<type>CONSTANT</type>
</item>
</parameters>
<sources id="69" type="java.util.HashSet">
<item id="70" type="com.j2fe.workflow.definition.Transition">
<name id="71">goto-next</name>
<source id="72">
<activation>TRANSACTIONAL</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="73">Agency Moodys</name>
<nodeHandler>com.j2fe.general.activities.database.DBStatement</nodeHandler>
<nodeHandlerClass id="74">com.j2fe.general.activities.database.DBStatement</nodeHandlerClass>
<parameters id="75" type="java.util.HashSet">
<item id="76" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="77">database</name>
<stringValue id="78">jdbc/GSDM-1</stringValue>
<type>REFERENCE</type>
</item>
<item id="79" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="80">querySQL</name>
<stringValue id="81">update MET_Investment_Grade_report a set rating_agency_name='S&amp;P' where rating_agency_name='SNPXF_RT';</stringValue>
<type>CONSTANT</type>
</item>
</parameters>
<sources id="82" type="java.util.HashSet">
<item id="83" type="com.j2fe.workflow.definition.Transition">
<name id="84">goto-next</name>
<source id="85">
<activation>TRANSACTIONAL</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="86">Agency SNP</name>
<nodeHandler>com.j2fe.general.activities.database.DBStatement</nodeHandler>
<nodeHandlerClass id="87">com.j2fe.general.activities.database.DBStatement</nodeHandlerClass>
<parameters id="88" type="java.util.HashSet">
<item id="89" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="90">database</name>
<stringValue id="91">jdbc/GSDM-1</stringValue>
<type>REFERENCE</type>
</item>
<item id="92" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="93">querySQL</name>
<stringValue id="94">update MET_Investment_Grade_report a set rating_agency_name='MOODYS RDS' where rating_agency_name='MOODYS_RDS';</stringValue>
<type>CONSTANT</type>
</item>
</parameters>
<sources id="95" type="java.util.HashSet">
<item id="96" type="com.j2fe.workflow.definition.Transition">
<name id="97">goto-next</name>
<source id="98">
<activation>TRANSACTIONAL</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="99">Populate Report date</name>
<nodeHandler>com.j2fe.general.activities.database.DBStatement</nodeHandler>
<nodeHandlerClass id="100">com.j2fe.general.activities.database.DBStatement</nodeHandlerClass>
<parameters id="101" type="java.util.HashSet">
<item id="102" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="103">database</name>
<stringValue id="104">jdbc/GSDM-1</stringValue>
<type>REFERENCE</type>
</item>
<item id="105" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="106">querySQL</name>
<stringValue id="107">update MET_Investment_Grade_report set report_date=date_trunc('day',now());</stringValue>
<type>CONSTANT</type>
</item>
</parameters>
<sources id="108" type="java.util.HashSet">
<item id="109" type="com.j2fe.workflow.definition.Transition">
<name id="110">goto-next</name>
<source id="111">
<activation>TRANSACTIONAL</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="112">Populate Nuveen ID</name>
<nodeHandler>com.j2fe.general.activities.database.DBStatement</nodeHandler>
<nodeHandlerClass id="113">com.j2fe.general.activities.database.DBStatement</nodeHandlerClass>
<parameters id="114" type="java.util.HashSet">
<item id="115" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="116">database</name>
<stringValue id="117">jdbc/GSDM-1</stringValue>
<type>REFERENCE</type>
</item>
<item id="118" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="119">querySQL</name>
<stringValue id="120">update MET_Investment_Grade_report a set nuveen_global_sec_id=(select iss_id from ft_T_isid b where b.instr_id=a.instr_id and b.end_tms is null and b.id_ctxt_Typ='NUVGBLSECID' limit 1);</stringValue>
<type>CONSTANT</type>
</item>
</parameters>
<sources id="121" type="java.util.HashSet">
<item id="122" type="com.j2fe.workflow.definition.Transition">
<name id="123">goto-next</name>
<source id="124">
<activation>TRANSACTIONAL</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="125">Calculate Report</name>
<nodeHandler>com.j2fe.general.activities.database.DBStatement</nodeHandler>
<nodeHandlerClass id="126">com.j2fe.general.activities.database.DBStatement</nodeHandlerClass>
<parameters id="127" type="java.util.HashSet">
<item id="128" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="129">database</name>
<stringValue id="130">jdbc/GSDM-1</stringValue>
<type>REFERENCE</type>
</item>
<item id="131" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="132">querySQL</name>
<objectValue id="133" type="java.lang.String">insert into MET_Investment_Grade_report&#13;
select distinct *, CASE&#13;
  WHEN (current_rank IS NULL) THEN 'NO_CURRENT_RATING_RANK'&#13;
  WHEN (previous_rank IS NULL) THEN 'NO_PREVIOUS_RATING_RANK'&#13;
  WHEN (current_rank &lt; previous_rank) THEN 'UPGRADED'&#13;
  WHEN (current_rank &gt; previous_rank) THEN 'DOWNGRADED'&#13;
  WHEN (current_rank = previous_rank) THEN 'NO_CHANGE'&#13;
  ELSE 'CHECK_MANUALLY'&#13;
  end AS RatingStatus&#13;
 from (&#13;
 select * from (&#13;
 (with LatestRating as&#13;
(select * --iss_id,rtng_cde,rank_num,instr_id &#13;
from (&#13;
select iss_id,b.rtng_set_oid,b.rtng_cde,c.rank_num,b.start_tms,rtng_eff_tms,sys_eff_end_tms,b.instr_id,RTNG_INV_GRADE_TYP,RTNG_RSK_ASMT_TYP,&#13;
RANK () OVER ( partition by b.instr_id,b.rtng_set_oid,c.data_src_id&#13;
		ORDER BY b.rtng_eff_tms DESC&#13;
	) as rating_rank&#13;
from ft_T_isid a, ft_T_isrt b,ft_T_rtvl c where &#13;
a.instr_id=b.instr_id and b.rtng_value_oid =c.rtng_value_oid and a.id_ctxt_Typ='CUSIP' and b.rtng_set_oid in ('?Otcm&lt;@XG1','~O7.15@XG2','&amp;O7R23@XG2','~O7?E6@XG2','NSRTNG0002','~O7IF5@XG2','NSRTNG0003','&amp;O7813@XG2','&amp;O7-03@XG2','@Y6931lke1') and b.end_tms is null and a.end_tms is null and c.end_tms is null&#13;
and b.instr_id in (select distinct instr_id from ft_T_isrt where end_tms is null and rtng_set_oid in ('?Otcm&lt;@XG1','~O7.15@XG2','&amp;O7R23@XG2','~O7?E6@XG2','NSRTNG0002','~O7IF5@XG2','NSRTNG0003','&amp;O7813@XG2','&amp;O7-03@XG2','@Y6931lke1') and date_trunc('day',last_chg_tms)&gt;date_trunc('day',current_date-1))) as ratingsortcurrent &#13;
where rating_rank=1) ,&#13;
PreviousRating as ( &#13;
select * --iss_id,rtng_cde,rank_num,instr_id &#13;
from (&#13;
select iss_id,b.rtng_set_oid,b.rtng_cde,c.rank_num,b.start_tms,rtng_eff_tms,sys_eff_end_tms,b.instr_id,RTNG_INV_GRADE_TYP,RTNG_RSK_ASMT_TYP,&#13;
RANK () OVER ( partition by b.instr_id,b.rtng_set_oid,c.data_src_id&#13;
		ORDER BY b.rtng_eff_tms DESC&#13;
	) as rating_rank&#13;
from ft_T_isid a, ft_T_isrt b,ft_T_rtvl c where &#13;
a.instr_id=b.instr_id and b.rtng_value_oid =c.rtng_value_oid and a.id_ctxt_Typ='CUSIP' and b.rtng_set_oid in ('?Otcm&lt;@XG1','~O7.15@XG2','&amp;O7R23@XG2','~O7?E6@XG2','NSRTNG0002','~O7IF5@XG2','NSRTNG0003','&amp;O7813@XG2','&amp;O7-03@XG2','@Y6931lke1') and b.end_tms is null and a.end_tms is null and c.end_tms is null&#13;
and b.instr_id in (select distinct instr_id from ft_T_isrt where end_tms is null and rtng_set_oid in ('?Otcm&lt;@XG1','~O7.15@XG2','&amp;O7R23@XG2','~O7?E6@XG2','NSRTNG0002','~O7IF5@XG2','NSRTNG0003','&amp;O7813@XG2','&amp;O7-03@XG2','@Y6931lke1') and date_trunc('day',last_chg_tms)&gt;date_trunc('day',current_date-1))) as ratingsortprevious &#13;
where rating_rank=2 ) &#13;
select LatestRating.instr_id,LatestRating.iss_id as CUSIP,issu.iss_typ,rtng.rtng_set_oid,&#13;
issu.pref_iss_nme as Issue_name, issu.mat_exp_tms as Maturity_Date,&#13;
rtng.data_src_id as Rating_Agency_name, rtng.rtng_set_nme as Rating_type,rtng.rtng_set_mnem as Rating_mnemonic,&#13;
PreviousRating.rtng_cde as Previous_RATING_Code,PreviousRating.rtng_eff_tms as Previous_rtng_effective_date,PreviousRating.rank_num as previous_rank,PreviousRating.RTNG_INV_GRADE_TYP as previous_investment_grade,PreviousRating.RTNG_RSK_ASMT_TYP as previous_risk_assesment_type,&#13;
LatestRating.rtng_cde as Current_RATING_Code,LatestRating.rtng_eff_tms as Current_rtng_effective_date,LatestRating.rank_num as current_rank,LatestRating.RTNG_INV_GRADE_TYP as current_investment_grade,LatestRating.RTNG_RSK_ASMT_TYP as current_risk_assesment_type&#13;
from &#13;
LatestRating,PreviousRating,ft_T_issu issu,ft_T_isrt isrt,ft_T_rtvl rtvl,ft_T_rtng rtng where&#13;
LatestRating.instr_id=PreviousRating.instr_id and&#13;
LatestRating.rtng_set_oid=PreviousRating.rtng_set_oid and&#13;
LatestRating.instr_id=issu.instr_id and&#13;
LatestRating.instr_id=isrt.instr_id and &#13;
LatestRating.rtng_set_oid=isrt.rtng_set_oid and &#13;
isrt.rtng_value_oid=rtvl.rtng_value_oid and &#13;
isrt.rtng_set_oid=rtng.rtng_set_oid and &#13;
rtvl.rtng_set_oid=rtng.rtng_set_oid and &#13;
isrt.end_tms is null and rtng.end_tms is null and rtvl.end_tms is null&#13;
and isrt.rtng_set_oid in ('?Otcm&lt;@XG1','~O7.15@XG2','&amp;O7R23@XG2','~O7?E6@XG2','NSRTNG0002','~O7IF5@XG2','NSRTNG0003','&amp;O7813@XG2','&amp;O7-03@XG2','@Y6931lke1')&#13;
and date_trunc('day',isrt.last_chg_tms)&gt;date_trunc('day',current_date-1)&#13;
)) as RatingTable) as RatingDecisionTable;</objectValue>
<type>CONSTANT</type>
</item>
</parameters>
<sources id="134" type="java.util.HashSet">
<item id="135" type="com.j2fe.workflow.definition.Transition">
<name id="136">goto-next</name>
<source id="137">
<activation>TRANSACTIONAL</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="138">Clear Previous Data</name>
<nodeHandler>com.j2fe.general.activities.database.DBStatement</nodeHandler>
<nodeHandlerClass id="139">com.j2fe.general.activities.database.DBStatement</nodeHandlerClass>
<parameters id="140" type="java.util.HashSet">
<item id="141" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="142">database</name>
<stringValue id="143">jdbc/GSDM-1</stringValue>
<type>REFERENCE</type>
</item>
<item id="144" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="145">querySQL</name>
<stringValue id="146">delete from MET_Investment_Grade_report;</stringValue>
<type>CONSTANT</type>
</item>
</parameters>
<sources id="147" type="java.util.HashSet">
<item id="148" type="com.j2fe.workflow.definition.Transition">
<name id="149">goto-next</name>
<source id="150">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="151">Create Job </name>
<nodeHandler>com.j2fe.streetlamp.activities.CreateJob</nodeHandler>
<nodeHandlerClass id="152">com.j2fe.streetlamp.activities.CreateJob</nodeHandlerClass>
<parameters id="153" type="java.util.HashSet">
<item id="154" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="155">configInfo</name>
<stringValue id="156">MET Investment Grade Report</stringValue>
<type>CONSTANT</type>
</item>
<item id="157" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="158">jobId</name>
<stringValue id="159">ParentJobID</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="160" type="java.util.HashSet">
<item id="161" type="com.j2fe.workflow.definition.Transition">
<name id="162">goto-next</name>
<source id="163">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="164">Start</name>
<nodeHandler>com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandler>
<nodeHandlerClass id="165">com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandlerClass>
<sources id="166" type="java.util.HashSet"/>
<targets id="167" type="java.util.HashSet">
<item idref="161" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>START</type>
</source>
<target idref="150"/>
</item>
</sources>
<targets id="168" type="java.util.HashSet">
<item idref="148" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="137"/>
</item>
</sources>
<targets id="169" type="java.util.HashSet">
<item idref="135" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="124"/>
</item>
</sources>
<targets id="170" type="java.util.HashSet">
<item idref="122" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="111"/>
</item>
</sources>
<targets id="171" type="java.util.HashSet">
<item idref="109" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="98"/>
</item>
</sources>
<targets id="172" type="java.util.HashSet">
<item idref="96" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="85"/>
</item>
</sources>
<targets id="173" type="java.util.HashSet">
<item idref="83" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="72"/>
</item>
</sources>
<targets id="174" type="java.util.HashSet">
<item idref="70" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="19"/>
</item>
</sources>
<targets id="175" type="java.util.HashSet">
<item idref="17" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="9"/>
</item>
</sources>
<targets id="176" type="java.util.HashSet">
<item idref="7" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="3"/>
</item>
</sources>
<targets id="177" type="java.util.HashSet"/>
<type>END</type>
</endNode>
<forcePurgeAtEnd>false</forcePurgeAtEnd>
<group id="178">Custom/Monitoring</group>
<haltOnError>false</haltOnError>
<lastChangeUser id="179">user1</lastChangeUser>
<lastUpdate id="180">2024-11-13T15:49:17.000+0530</lastUpdate>
<name id="181">MET Investment Grade Report</name>
<optimize>true</optimize>
<parameter id="182" type="java.util.HashMap">
<entry>
<key id="183" type="java.lang.String">SeqNo</key>
<value id="184" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="185">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
</parameter>
<permissions id="186" type="java.util.HashSet"/>
<priority>50</priority>
<purgeAtEnd>true</purgeAtEnd>
<retries>0</retries>
<startNode idref="163"/>
<status>RELEASED</status>
<variables id="187" type="java.util.HashMap">
<entry>
<key id="188" type="java.lang.String">SeqNo</key>
<value id="189" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="190">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<persistent>false</persistent>
<value id="191" type="java.lang.String">12</value>
</value>
</entry>
</variables>
<version>5</version>
</com.j2fe.workflow.definition.Workflow>
</businessobject>
</goldensource-package>
