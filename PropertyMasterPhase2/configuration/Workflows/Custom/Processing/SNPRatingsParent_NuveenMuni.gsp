<?xml version="1.0" encoding="UTF-8" standalone="no"?>
<goldensource-package version="8.8.1.66">
<package-comment/>
<businessobject displayString="5 - 20240812-8.8.1.67-Muni" type="com.j2fe.workflow.definition.Workflow">
<com.j2fe.workflow.definition.Workflow id="0">
<alwaysPersist>false</alwaysPersist>
<clustered>true</clustered>
<comment id="1">20240812-8.8.1.67-Muni</comment>
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
<name id="8">goto-next</name>
<source id="9">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="3"/>
<directJoin>false</directJoin>
<name id="10">Close Job</name>
<nodeHandler>com.j2fe.streetlamp.activities.CloseJob</nodeHandler>
<nodeHandlerClass id="11">com.j2fe.streetlamp.activities.CloseJob</nodeHandlerClass>
<parameters id="12" type="java.util.HashSet">
<item id="13" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="14">jobId</name>
<stringValue id="15">RatingsJob</stringValue>
<type>VARIABLE</type>
</item>
<item id="16" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="17">skipConsolidateJob</name>
<objectValue id="18" type="java.lang.Boolean">true</objectValue>
<type>CONSTANT</type>
</item>
</parameters>
<sources id="19" type="java.util.HashSet">
<item id="20" type="com.j2fe.workflow.definition.Transition">
<name id="21">goto-next</name>
<source id="22">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="3"/>
<directJoin>false</directJoin>
<name id="23">Call Ratings Bulk</name>
<nodeHandler>com.j2fe.workflow.handler.impl.CallSubWorkflow</nodeHandler>
<nodeHandlerClass id="24">com.j2fe.workflow.handler.impl.CallSubWorkflow</nodeHandlerClass>
<parameters id="25" type="java.util.HashSet">
<item id="26" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="27">["FileLoadEvent"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="28">input["FileLoadEvent"]</name>
<stringValue id="29">FileLoadEvent</stringValue>
<type>VARIABLE</type>
</item>
<item id="30" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="31">["MessageBulkSize"]@java/lang/Integer@</UITypeHint>
<input>true</input>
<name id="32">input["MessageBulkSize"]</name>
<stringValue id="33">MessageBulkSize</stringValue>
<type>VARIABLE</type>
</item>
<item id="34" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="35">["Metadata"]@java/lang/Object@</UITypeHint>
<input>true</input>
<name id="36">input["Metadata"]</name>
<stringValue id="37">Metadata</stringValue>
<type>VARIABLE</type>
</item>
<item id="38" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="39">["MuniEntityBusinessFeed"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="40">input["MuniEntityBusinessFeed"]</name>
<stringValue id="41">MuniEntityBusinessFeed</stringValue>
<type>VARIABLE</type>
</item>
<item id="42" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="43">["MuniFilePatterns"]@[Ljava/lang/String;@</UITypeHint>
<input>true</input>
<name id="44">input["MuniFilePatterns"]</name>
<stringValue id="45">MuniFilePatterns</stringValue>
<type>VARIABLE</type>
</item>
<item id="46" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="47">["MuniMessageType"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="48">input["MuniMessageType"]</name>
<stringValue id="49">MuniMessageType</stringValue>
<type>VARIABLE</type>
</item>
<item id="50" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="51">["MuniSecurityBusinessFeed"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="52">input["MuniSecurityBusinessFeed"]</name>
<stringValue id="53">MuniSecurityBusinessFeed</stringValue>
<type>VARIABLE</type>
</item>
<item id="54" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="55">["ParentJobID"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="56">input["ParentJobID"]</name>
<stringValue id="57">RatingsJob</stringValue>
<type>VARIABLE</type>
</item>
<item id="58" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="59">["RatingType"]@com/j2fe/connector/RatingsType@</UITypeHint>
<input>true</input>
<name id="60">input["RatingType"]</name>
<stringValue id="61">RatingsType</stringValue>
<type>VARIABLE</type>
</item>
<item id="62" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="63">["SortOrder"]@com/j2fe/feeds/activities/ListFiles$Sort@</UITypeHint>
<input>true</input>
<name id="64">input["SortOrder"]</name>
<stringValue id="65">SortOrder</stringValue>
<type>VARIABLE</type>
</item>
<item id="66" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="67">["considerOnlyDateNewInstr"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="68">input["considerOnlyDateNewInstr"]</name>
<stringValue id="69">considerOnlyDateNewInstr</stringValue>
<type>VARIABLE</type>
</item>
<item id="70" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="71">["resetFailedParticipantsInSoi"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="72">input["resetFailedParticipantsInSoi"]</name>
<stringValue id="73">resetFailedParticipantsInSoi</stringValue>
<type>VARIABLE</type>
</item>
<item id="74" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="75">name</name>
<stringValue id="76">SnPRatingsBulkParent_NuveenMuni</stringValue>
<type>CONSTANT</type>
</item>
</parameters>
<sources id="77" type="java.util.HashSet">
<item id="78" type="com.j2fe.workflow.definition.Transition">
<name id="79">goto-next</name>
<source id="80">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="3"/>
<directJoin>false</directJoin>
<name id="81">Bean Shell Script (Standard) #3</name>
<nodeHandler>com.j2fe.general.activities.BeanShellScript</nodeHandler>
<nodeHandlerClass id="82">com.j2fe.general.activities.BeanShellScript</nodeHandlerClass>
<parameters id="83" type="java.util.HashSet">
<item id="84" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="85">statements</name>
<stringValue id="86">import com.j2fe.feeds.stp.STPFeedParameters;

meta.put(STPFeedParameters.CONFIGURATION_BUSINESS_FEED,"RatingsBulkConfiguration");
String job=meta.get(STPFeedParameters.PARENT_JOB_ID);</stringValue>
<type>CONSTANT</type>
</item>
<item id="87" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="88">["job"]@java/lang/String@</UITypeHint>
<input>false</input>
<name id="89">variables["job"]</name>
<stringValue id="90">RatingsJob</stringValue>
<type>VARIABLE</type>
</item>
<item id="91" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="92">["meta"]@java/lang/Object@</UITypeHint>
<input>true</input>
<name id="93">variables["meta"]</name>
<stringValue id="94">Metadata</stringValue>
<type>VARIABLE</type>
</item>
<item id="95" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="96">variables["meta"]</name>
<stringValue id="97">Metadata</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="98" type="java.util.HashSet">
<item id="99" type="com.j2fe.workflow.definition.Transition">
<name id="100">goto-next</name>
<source id="101">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="3"/>
<directJoin>false</directJoin>
<name id="102">Call Ratings Staging</name>
<nodeHandler>com.j2fe.workflow.handler.impl.CallSubWorkflow</nodeHandler>
<nodeHandlerClass id="103">com.j2fe.workflow.handler.impl.CallSubWorkflow</nodeHandlerClass>
<parameters id="104" type="java.util.HashSet">
<item id="105" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="106">["Metadata"]@java/lang/Object@</UITypeHint>
<input>true</input>
<name id="107">input["Metadata"]</name>
<stringValue id="108">Metadata</stringValue>
<type>VARIABLE</type>
</item>
<item id="109" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="110">["MoveStagingFiles"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="111">input["MoveStagingFiles"]</name>
<stringValue id="112">MoveFiles</stringValue>
<type>VARIABLE</type>
</item>
<item id="113" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="114">["ParentJobId"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="115">input["ParentJobId"]</name>
<stringValue id="116">StagingParentJobID</stringValue>
<type>VARIABLE</type>
</item>
<item id="117" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="118">["RatingsType"]@com/j2fe/connector/RatingsType@</UITypeHint>
<input>true</input>
<name id="119">input["RatingsType"]</name>
<stringValue id="120">RatingsType</stringValue>
<type>VARIABLE</type>
</item>
<item id="121" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="122">["SortOrder"]@com/j2fe/feeds/activities/ListFiles$Sort@</UITypeHint>
<input>true</input>
<name id="123">input["SortOrder"]</name>
<stringValue id="124">SortOrder</stringValue>
<type>VARIABLE</type>
</item>
<item id="125" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="126">["StagingBulkSize"]@java/lang/Integer@</UITypeHint>
<input>true</input>
<name id="127">input["StagingBulkSize"]</name>
<stringValue id="128">StagingBulkSize</stringValue>
<type>VARIABLE</type>
</item>
<item id="129" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="130">name</name>
<stringValue id="131">SNPRatingsStaging</stringValue>
<type>CONSTANT</type>
</item>
<item id="132" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="133">output["Exception"]</name>
<stringValue id="134">StagingException</stringValue>
<type>VARIABLE</type>
</item>
<item id="135" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="136">output["Metadata"]</name>
<stringValue id="137">Metadata</stringValue>
<type>VARIABLE</type>
</item>
<item id="138" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="139">output["StagingParentJobID"]</name>
<stringValue id="140">StagingParentJobID</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="141" type="java.util.HashSet">
<item id="142" type="com.j2fe.workflow.definition.Transition">
<name id="143">goto-next</name>
<source id="144">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="3"/>
<directJoin>false</directJoin>
<name id="145">Ratings Download</name>
<nodeHandler>com.j2fe.workflow.handler.impl.CallSubWorkflow</nodeHandler>
<nodeHandlerClass id="146">com.j2fe.workflow.handler.impl.CallSubWorkflow</nodeHandlerClass>
<parameters id="147" type="java.util.HashSet">
<item id="148" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="149">["Metadata"]@java/lang/Object@</UITypeHint>
<input>true</input>
<name id="150">input["Metadata"]</name>
<stringValue id="151">Metadata</stringValue>
<type>VARIABLE</type>
</item>
<item id="152" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="153">name</name>
<stringValue id="154">SNPRatingsDownload</stringValue>
<type>CONSTANT</type>
</item>
<item id="155" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="156">["Exception"]@java/lang/String@</UITypeHint>
<input>false</input>
<name id="157">output["Exception"]</name>
<stringValue id="158">DownloadException</stringValue>
<type>VARIABLE</type>
</item>
<item id="159" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="160">output["JobId"]</name>
<stringValue id="161">StagingParentJobID</stringValue>
<type>VARIABLE</type>
</item>
<item id="162" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="163">output["Metadata"]</name>
<stringValue id="164">Metadata</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="165" type="java.util.HashSet">
<item id="166" type="com.j2fe.workflow.definition.Transition">
<name id="167">goto-next</name>
<source id="168">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="3"/>
<directJoin>false</directJoin>
<name id="169">Bean Shell Script (Standard)</name>
<nodeHandler>com.j2fe.general.activities.BeanShellScript</nodeHandler>
<nodeHandlerClass id="170">com.j2fe.general.activities.BeanShellScript</nodeHandlerClass>
<parameters id="171" type="java.util.HashSet">
<item id="172" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="173">statements</name>
<objectValue id="174" type="java.lang.String">import java.util.HashMap;
import com.j2fe.feeds.stp.STPFeedParameters;

HashMap meta=new HashMap();
if(input!=null)
{
meta.put(STPFeedParameters.ZIP_INPUT_DIRECTORY, input);
meta.put(STPFeedParameters.INPUT_DIRECTORY, input);
}
if(range!=null)
meta.put(STPFeedParameters.BULK_RANGE, range);
if(out!=null)
meta.put(STPFeedParameters.OUTPUT_DIRECTORY, out);
if(move!=null)
meta.put(STPFeedParameters.MOVE_DIRECTORY, move);
if(vnd!=null)
meta.put(STPFeedParameters.VENDOR_DIRECTORIES, vnd);
if(patterns!=null &amp;&amp; patterns.length&gt;0)
meta.put(STPFeedParameters.VENDOR_FILE_PATTERNS,patterns);
if(parallel!=null)
meta.put(STPFeedParameters.PARALLEL_BRANCHES,parallel);
if(stjob!=null)
meta.put(STPFeedParameters.PARENT_JOB_ID,stjob);
if(sbulk!=null)
meta.put(STPFeedParameters .STAGING_BULK_SIZE, sbulk);
if(sparallel!=null)
meta.put(STPFeedParameters .STAGING_FILES_IN_PARALLEL, sparallel);
if(fparallel!=null)
meta.put(STPFeedParameters .FILES_IN_PARALLEL, fparallel);
if(movefiles!=null)
{
meta.put(STPFeedParameters.MOVE_INPUT_FILES,movefiles);
meta.put(STPFeedParameters.MOVE_STAGING_FILES,movefiles);
meta.put(STPFeedParameters.MOVE_OUTPUT_FILES,movefiles);
}
meta.put(STPFeedParameters.LOAD_SNP_LOAN_SOI_DATA,LoadSNPLoanSOIData);
if(type!=null)
meta.put(STPFeedParameters.RATING_TYPE,type);
meta.put(STPFeedParameters.FULL_FILE,isfull);

if(bwidth!=null)
meta.put(STPFeedParameters.BULK_SIZE,bwidth);

if(reprocess!=null)
meta.put(STPFeedParameters.REPROCESSPROCESSEDFILE,reprocess);

if(considerNewInstrAddedToSOIEOI!=null)
meta.put(STPFeedParameters.CONSIDER_NEW_INSTR_ADDED_TO_SOIEOI,considerNewInstrAddedToSOIEOI);

if(considerSOIEOIonly!=null)
meta.put(STPFeedParameters.CONSIDER_SOIEOI_ONLY,considerSOIEOIonly);

if(ISSUERGroupPurposeType!=null)
meta.put(STPFeedParameters.ISSUER_GROUP_PURPOSE_TYPE,ISSUERGroupPurposeType);

if(ISSUGroupPurposeType!=null)
meta.put(STPFeedParameters.ISSU_GROUP_PURPOSE_TYPE,ISSUGroupPurposeType);

if(successAction!=null)
meta.put(STPFeedParameters.SUCCESS_ACTION,successAction);
meta.put(STPFeedParameters.CONFIGURATION_BUSINESS_FEED,"RatingsStagingConfiguration");</objectValue>
<type>CONSTANT</type>
</item>
<item id="175" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="176">variables["ISSUERGroupPurposeType"]</name>
<stringValue id="177">ISSUERGroupPurposeType</stringValue>
<type>VARIABLE</type>
</item>
<item id="178" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="179">variables["ISSUGroupPurposeType"]</name>
<stringValue id="180">ISSUGroupPurposeType</stringValue>
<type>VARIABLE</type>
</item>
<item id="181" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="182">["LoadSNPLoanSOIData"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="183">variables["LoadSNPLoanSOIData"]</name>
<stringValue id="184">LoadSNPLoanSOIData</stringValue>
<type>VARIABLE</type>
</item>
<item id="185" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="186">["bwidth"]@java/lang/Integer@</UITypeHint>
<input>true</input>
<name id="187">variables["bwidth"]</name>
<stringValue id="188">BulkSize</stringValue>
<type>VARIABLE</type>
</item>
<item id="189" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="190">variables["considerNewInstrAddedToSOIEOI"]</name>
<stringValue id="191">considerNewInstrAddedToSOIEOI</stringValue>
<type>VARIABLE</type>
</item>
<item id="192" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="193">variables["considerSOIEOIonly"]</name>
<stringValue id="194">considerSOIEOIonly</stringValue>
<type>VARIABLE</type>
</item>
<item id="195" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="196">["fparallel"]@java/lang/Integer@</UITypeHint>
<input>true</input>
<name id="197">variables["fparallel"]</name>
<stringValue id="198">NrOfFilesParallel</stringValue>
<type>VARIABLE</type>
</item>
<item id="199" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="200">["input"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="201">variables["input"]</name>
<stringValue id="202">InputDirectory</stringValue>
<type>VARIABLE</type>
</item>
<item id="203" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="204">["isfull"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="205">variables["isfull"]</name>
<stringValue id="206">IsFullFile</stringValue>
<type>VARIABLE</type>
</item>
<item id="207" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="208">["meta"]@java/lang/Object@</UITypeHint>
<input>false</input>
<name id="209">variables["meta"]</name>
<stringValue id="210">Metadata</stringValue>
<type>VARIABLE</type>
</item>
<item id="211" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="212">["move"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="213">variables["move"]</name>
<stringValue id="214">MoveDirectory</stringValue>
<type>VARIABLE</type>
</item>
<item id="215" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="216">["movefiles"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="217">variables["movefiles"]</name>
<stringValue id="218">MoveFiles</stringValue>
<type>VARIABLE</type>
</item>
<item id="219" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="220">["out"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="221">variables["out"]</name>
<stringValue id="222">OutputDirectory</stringValue>
<type>VARIABLE</type>
</item>
<item id="223" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="224">["parallel"]@java/lang/Integer@</UITypeHint>
<input>true</input>
<name id="225">variables["parallel"]</name>
<stringValue id="226">ParallelBranches</stringValue>
<type>VARIABLE</type>
</item>
<item id="227" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="228">variables["patterns"]</name>
<stringValue id="229">FilePatterns</stringValue>
<type>VARIABLE</type>
</item>
<item id="230" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="231">["range"]@java/lang/Integer@</UITypeHint>
<input>true</input>
<name id="232">variables["range"]</name>
<stringValue id="233">BulkRange</stringValue>
<type>VARIABLE</type>
</item>
<item id="234" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="235">variables["reprocess"]</name>
<stringValue id="236">ReProcessProcessedFiles</stringValue>
<type>VARIABLE</type>
</item>
<item id="237" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="238">["sbulk"]@java/lang/Integer@</UITypeHint>
<input>true</input>
<name id="239">variables["sbulk"]</name>
<stringValue id="240">StagingBulkSize</stringValue>
<type>VARIABLE</type>
</item>
<item id="241" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="242">["sparallel"]@java/lang/Integer@</UITypeHint>
<input>true</input>
<name id="243">variables["sparallel"]</name>
<stringValue id="244">NrOfStagingFilesParallel</stringValue>
<type>VARIABLE</type>
</item>
<item id="245" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="246">["stjob"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="247">variables["stjob"]</name>
<stringValue id="248">StagingParentJobID</stringValue>
<type>VARIABLE</type>
</item>
<item id="249" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="250">variables["successAction"]</name>
<stringValue id="251">SuccessAction</stringValue>
<type>VARIABLE</type>
</item>
<item id="252" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="253">["type"]@com/j2fe/connector/RatingsType@</UITypeHint>
<input>true</input>
<name id="254">variables["type"]</name>
<stringValue id="255">RatingsType</stringValue>
<type>VARIABLE</type>
</item>
<item id="256" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="257">variables["vnd"]</name>
<stringValue id="258">VendorDirectories</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="259" type="java.util.HashSet">
<item id="260" type="com.j2fe.workflow.definition.Transition">
<name id="261">goto-next</name>
<source id="262">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="3"/>
<directJoin>false</directJoin>
<name id="263">Start</name>
<nodeHandler>com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandler>
<nodeHandlerClass id="264">com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandlerClass>
<sources id="265" type="java.util.HashSet"/>
<targets id="266" type="java.util.HashSet">
<item idref="260" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>START</type>
</source>
<target idref="168"/>
</item>
</sources>
<targets id="267" type="java.util.HashSet">
<item idref="166" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="144"/>
</item>
</sources>
<targets id="268" type="java.util.HashSet">
<item idref="142" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="101"/>
</item>
</sources>
<targets id="269" type="java.util.HashSet">
<item idref="99" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="80"/>
</item>
</sources>
<targets id="270" type="java.util.HashSet">
<item idref="78" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="22"/>
</item>
</sources>
<targets id="271" type="java.util.HashSet">
<item idref="20" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="9"/>
</item>
</sources>
<targets id="272" type="java.util.HashSet">
<item idref="7" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="2"/>
</item>
</sources>
<targets id="273" type="java.util.HashSet"/>
<type>END</type>
</endNode>
<forcePurgeAtEnd>false</forcePurgeAtEnd>
<group id="274">Custom/Processing</group>
<haltOnError>false</haltOnError>
<lastChangeUser id="275">user1</lastChangeUser>
<lastUpdate id="276">2024-09-16T10:23:46.000-0400</lastUpdate>
<name id="277">SNPRatingsParent_NuveenMuni</name>
<optimize>true</optimize>
<parameter id="278" type="java.util.HashMap">
<entry>
<key id="279" type="java.lang.String">BulkFilePatterns</key>
<value id="280" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="281">[Ljava.lang.String;</className>
<clazz>[Ljava.lang.String;</clazz>
<description id="282">File patterns to be considered in preparation of files in BulkOutputDirectory.</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="283" type="java.lang.String">BulkRange</key>
<value id="284" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="285">java.lang.Integer</className>
<clazz>java.lang.Integer</clazz>
<description id="286">Number of bulks need to be processed in parallel during bulking phase.</description>
<input>true</input>
<output>false</output>
<required>true</required>
</value>
</entry>
<entry>
<key id="287" type="java.lang.String">BulkSize</key>
<value id="288" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="289">java.lang.Integer</className>
<clazz>java.lang.Integer</clazz>
<description id="290">BulkSize to determine size of bulk during bulking phase.</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="291" type="java.lang.String">DownloadException</key>
<value id="292" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="293">java.lang.String</className>
<clazz>java.lang.String</clazz>
<input>false</input>
<output>true</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="294" type="java.lang.String">FileLoadEvent</key>
<value id="295" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="296">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="297">FileLoadEvent for loading of bulk files</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="298" type="java.lang.String">FilePatterns</key>
<value id="299" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="300">[Ljava.lang.String;</className>
<clazz>[Ljava.lang.String;</clazz>
<description id="301">FilePatterns to be downloaded from remote SNP directories</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="302" type="java.lang.String">ISSUERGroupPurposeType</key>
<value id="303" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="304">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="305">This parameter  specifies Group Purpose type of ISSUER.</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="306" type="java.lang.String">ISSUGroupPurposeType</key>
<value id="307" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="308">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="309">This parameter  specifies Group Purpose type of ISSU.</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="310" type="java.lang.String">InputDirectory</key>
<value id="311" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="312">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="313">The directory it uses to store unzipped files.</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="314" type="java.lang.String">IsFullFile</key>
<value id="315" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="316">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<input>true</input>
<output>false</output>
<required>true</required>
</value>
</entry>
<entry>
<key id="317" type="java.lang.String">LoadSNPLoanSOIData</key>
<value id="318" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="319">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description id="320">This flag considers SNP Security Symbol Value as well while filtering SOI data.</description>
<input>true</input>
<output>false</output>
<required>true</required>
</value>
</entry>
<entry>
<key id="321" type="java.lang.String">MessageBulkSize</key>
<value id="322" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="323">java.lang.Integer</className>
<clazz>java.lang.Integer</clazz>
<description id="324">The number of messages which sould be processed in parallel.</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="325" type="java.lang.String">MoveDirectory</key>
<value id="326" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="327">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="328">Directory where zip, staging and bulk output files will be 
will be moved.</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="329" type="java.lang.String">MoveFiles</key>
<value id="330" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="331">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<input>true</input>
<output>false</output>
<required>true</required>
</value>
</entry>
<entry>
<key id="332" type="java.lang.String">MuniEntityBusinessFeed</key>
<value id="333" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="334">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="3"/>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="335" type="java.lang.String">MuniFilePatterns</key>
<value id="336" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="337">[Ljava.lang.String;</className>
<clazz>[Ljava.lang.String;</clazz>
<description idref="3"/>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="338" type="java.lang.String">MuniMessageType</key>
<value id="339" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="340">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="3"/>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="341" type="java.lang.String">MuniSecurityBusinessFeed</key>
<value id="342" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="343">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="3"/>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="344" type="java.lang.String">NrOfFilesParallel</key>
<value id="345" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="346">java.lang.Integer</className>
<clazz>java.lang.Integer</clazz>
<description id="347">Number of files to be loaded in parallel.</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="348" type="java.lang.String">NrOfStagingFilesParallel</key>
<value id="349" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="350">java.lang.Integer</className>
<clazz>java.lang.Integer</clazz>
<description id="351">Number of Staging Files in Parallel</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="352" type="java.lang.String">OutputDirectory</key>
<value id="353" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="354">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="355">The output directory for generated bulk files.</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="356" type="java.lang.String">ParallelBranches</key>
<value id="357" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="358">java.lang.Integer</className>
<clazz>java.lang.Integer</clazz>
<description id="359">The number of files that are processed in parallel, as long as they belong to the same group (see File Definitions at Business Feed).</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="360" type="java.lang.String">RatingsType</key>
<value id="361" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="362">com.j2fe.connector.RatingsType</className>
<clazz>com.j2fe.connector.RatingsType</clazz>
<input>true</input>
<output>false</output>
<required>true</required>
</value>
</entry>
<entry>
<key id="363" type="java.lang.String">ReProcessProcessedFiles</key>
<value id="364" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="365">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<input>true</input>
<output>false</output>
<required>true</required>
</value>
</entry>
<entry>
<key id="366" type="java.lang.String">SortOrder</key>
<value id="367" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="368">com.j2fe.feeds.activities.ListFiles$Sort</className>
<clazz>com.j2fe.feeds.activities.ListFiles$Sort</clazz>
<description id="369">The parameter denotes order in which files need to be sorted .
Default value is set to FILESIZE where bigger file would be picked up first for loading .
Note : If Client downloads multiple dated Changes file together for processing than the parameter value  needs to be changed to TIME.</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="370" type="java.lang.String">StagingBulkSize</key>
<value id="371" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="372">java.lang.Integer</className>
<clazz>java.lang.Integer</clazz>
<description id="373">The number of messages from a file which are processed in parallel.</description>
<input>true</input>
<output>false</output>
<required>true</required>
</value>
</entry>
<entry>
<key id="374" type="java.lang.String">StagingException</key>
<value id="375" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="376">java.lang.String</className>
<clazz>java.lang.String</clazz>
<input>false</input>
<output>true</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="377" type="java.lang.String">StagingParentJobID</key>
<value id="378" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="379">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="380">StagingParentJobID</description>
<input>true</input>
<output>true</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="381" type="java.lang.String">SuccessAction</key>
<value id="382" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="383">com.j2fe.feeds.SuccessAction</className>
<clazz>com.j2fe.feeds.SuccessAction</clazz>
<description id="384">What should be done with the file after processing. MOVE or LEAVE (no action) or DELETE.</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="385" type="java.lang.String">VendorDefinition</key>
<value id="386" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="387">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="388">The vendor definition is used to find the message types and business feeds of the files in the directory. Only files which belong to the different Business Feeds will be processed.
Either the vendor or the business feed has to be provided to the WF.</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="389" type="java.lang.String">VendorDirectories</key>
<value id="390" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="391">[Ljava.lang.String;</className>
<clazz>[Ljava.lang.String;</clazz>
<description id="392">Remote SNP Directories</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="393" type="java.lang.String">considerNewInstrAddedToSOIEOI</key>
<value id="394" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="395">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description id="396">To Consider those instruments which are newly added to SOI/EOI</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="397" type="java.lang.String">considerOnlyDateNewInstr</key>
<value id="398" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="399">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description id="400">This parameter is set true when only  date needs to be considered while quering the LAS_PROC_TMS column of EOIP table  .</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="401" type="java.lang.String">considerSOIEOIonly</key>
<value id="402" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="403">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description id="404">To Condider instruments which are only a part of SOI/EOI</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="405" type="java.lang.String">resetFailedParticipantsInSoi</key>
<value id="406" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="407">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description id="408">These flag indicates whether the user wants to reset the System Date of the particular Instrument in the SOI Group whose records have failed with severity 40/50 , so that they are picked up in next processing.</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
</parameter>
<permissions id="409" type="java.util.HashSet"/>
<priority>50</priority>
<purgeAtEnd>false</purgeAtEnd>
<retries>0</retries>
<startNode idref="262"/>
<status>RELEASED</status>
<variables id="410" type="java.util.HashMap">
<entry>
<key id="411" type="java.lang.String">BulkFilePatterns</key>
<value id="412" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="413">[Ljava.lang.String;</className>
<clazz>[Ljava.lang.String;</clazz>
<description id="414">File patterns to be considered in preparation of files in BulkOutputDirectory.</description>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="415" type="java.lang.String">BulkRange</key>
<value id="416" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="417">java.lang.Integer</className>
<clazz>java.lang.Integer</clazz>
<description id="418">Number of bulks need to be processed in parallel during bulking phase.</description>
<persistent>false</persistent>
<value id="419" type="java.lang.Integer">10</value>
</value>
</entry>
<entry>
<key id="420" type="java.lang.String">BulkSize</key>
<value id="421" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="422">java.lang.Integer</className>
<clazz>java.lang.Integer</clazz>
<description id="423">BulkSize to determine size of bulk during bulking phase.</description>
<persistent>false</persistent>
<value id="424" type="java.lang.Integer">20000</value>
</value>
</entry>
<entry>
<key id="425" type="java.lang.String">DownloadException</key>
<value id="426" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="427">java.lang.String</className>
<clazz>java.lang.String</clazz>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="428" type="java.lang.String">FileLoadEvent</key>
<value id="429" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="430">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="431">FileLoadEvent for loading of bulk files</description>
<persistent>false</persistent>
<value id="432" type="java.lang.String">StandardFileLoad</value>
</value>
</entry>
<entry>
<key id="433" type="java.lang.String">FilePatterns</key>
<value id="434" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="435">[Ljava.lang.String;</className>
<clazz>[Ljava.lang.String;</clazz>
<description id="436">FilePatterns to be downloaded from remote SNP directories</description>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="437" type="java.lang.String">ISSUERGroupPurposeType</key>
<value id="438" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="439">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="440">This parameter  specifies Group Purpose type of ISSUER.</description>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="441" type="java.lang.String">ISSUGroupPurposeType</key>
<value id="442" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="443">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="444">This parameter  specifies Group Purpose type of ISSU.</description>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="445" type="java.lang.String">InputDirectory</key>
<value id="446" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="447">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="448">The directory it uses to store unzipped files.</description>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="449" type="java.lang.String">IsFullFile</key>
<value id="450" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="451">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<persistent>false</persistent>
<value id="452" type="java.lang.Boolean">false</value>
</value>
</entry>
<entry>
<key id="453" type="java.lang.String">LoadSNPLoanSOIData</key>
<value id="454" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="455">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description id="456">This flag considers SNP Security Symbol Value as well while filtering SOI data.</description>
<persistent>false</persistent>
<value idref="452"/>
</value>
</entry>
<entry>
<key id="457" type="java.lang.String">MessageBulkSize</key>
<value id="458" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="459">java.lang.Integer</className>
<clazz>java.lang.Integer</clazz>
<description id="460">The number of messages which sould be processed in parallel.</description>
<persistent>false</persistent>
<value id="461" type="java.lang.Integer">500</value>
</value>
</entry>
<entry>
<key id="462" type="java.lang.String">Metadata</key>
<value id="463" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="464">java.lang.Object</className>
<clazz>java.lang.Object</clazz>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="465" type="java.lang.String">MoveDirectory</key>
<value id="466" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="467">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="468">Directory where zip, staging and bulk output files will be 
will be moved.</description>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="469" type="java.lang.String">MoveFiles</key>
<value id="470" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="471">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<persistent>false</persistent>
<value idref="452"/>
</value>
</entry>
<entry>
<key id="472" type="java.lang.String">MuniEntityBusinessFeed</key>
<value id="473" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="474">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="3"/>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="475" type="java.lang.String">MuniFilePatterns</key>
<value id="476" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="477">[Ljava.lang.String;</className>
<clazz>[Ljava.lang.String;</clazz>
<description idref="3"/>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="478" type="java.lang.String">MuniMessageType</key>
<value id="479" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="480">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="3"/>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="481" type="java.lang.String">MuniSecurityBusinessFeed</key>
<value id="482" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="483">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="3"/>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="484" type="java.lang.String">NrOfFilesParallel</key>
<value id="485" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="486">java.lang.Integer</className>
<clazz>java.lang.Integer</clazz>
<description id="487">Number of files to be loaded in parallel.</description>
<persistent>false</persistent>
<value id="488" type="java.lang.Integer">2</value>
</value>
</entry>
<entry>
<key id="489" type="java.lang.String">NrOfStagingFilesParallel</key>
<value id="490" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="491">java.lang.Integer</className>
<clazz>java.lang.Integer</clazz>
<description id="492">Number of Staging Files in Parallel</description>
<persistent>false</persistent>
<value id="493" type="java.lang.Integer">7</value>
</value>
</entry>
<entry>
<key id="494" type="java.lang.String">OutputDirectory</key>
<value id="495" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="496">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="497">The output directory for generated bulk files.</description>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="498" type="java.lang.String">ParallelBranches</key>
<value id="499" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="500">java.lang.Integer</className>
<clazz>java.lang.Integer</clazz>
<description id="501">The number of files that are processed in parallel, as long as they belong to the same group (see File Definitions at Business Feed).</description>
<persistent>false</persistent>
<value idref="488"/>
</value>
</entry>
<entry>
<key id="502" type="java.lang.String">RatingsJob</key>
<value id="503" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="504">java.lang.String</className>
<clazz>java.lang.String</clazz>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="505" type="java.lang.String">RatingsType</key>
<value id="506" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="507">com.j2fe.connector.RatingsType</className>
<clazz>com.j2fe.connector.RatingsType</clazz>
<persistent>false</persistent>
<value id="508" type="com.j2fe.connector.RatingsType">ALL</value>
</value>
</entry>
<entry>
<key id="509" type="java.lang.String">ReProcessProcessedFiles</key>
<value id="510" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="511">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<persistent>false</persistent>
<value idref="452"/>
</value>
</entry>
<entry>
<key id="512" type="java.lang.String">SortOrder</key>
<value id="513" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="514">com.j2fe.feeds.activities.ListFiles$Sort</className>
<clazz>com.j2fe.feeds.activities.ListFiles$Sort</clazz>
<description id="515">The parameter denotes order in which files need to be sorted .
Default value is set to FILESIZE where bigger file would be picked up first for loading .
Note : If Client downloads multiple dated Changes file together for processing than the parameter value  needs to be changed to TIME.</description>
<persistent>false</persistent>
<value id="516" type="com.j2fe.feeds.activities.ListFiles$Sort">FILESIZE</value>
</value>
</entry>
<entry>
<key id="517" type="java.lang.String">StagingBulkSize</key>
<value id="518" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="519">java.lang.Integer</className>
<clazz>java.lang.Integer</clazz>
<description id="520">The number of messages from a file which are processed in parallel.</description>
<persistent>false</persistent>
<value id="521" type="java.lang.Integer">500</value>
</value>
</entry>
<entry>
<key id="522" type="java.lang.String">StagingException</key>
<value id="523" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="524">java.lang.String</className>
<clazz>java.lang.String</clazz>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="525" type="java.lang.String">StagingParentJobID</key>
<value id="526" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="527">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="528">StagingParentJobID</description>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="529" type="java.lang.String">SuccessAction</key>
<value id="530" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="531">com.j2fe.feeds.SuccessAction</className>
<clazz>com.j2fe.feeds.SuccessAction</clazz>
<description id="532">What should be done with the file after processing. MOVE or LEAVE (no action) or DELETE.</description>
<persistent>false</persistent>
<value id="533" type="com.j2fe.feeds.SuccessAction">LEAVE</value>
</value>
</entry>
<entry>
<key id="534" type="java.lang.String">VendorDefinition</key>
<value id="535" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="536">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="537">The vendor definition is used to find the message types and business feeds of the files in the directory. Only files which belong to the different Business Feeds will be processed.
Either the vendor or the business feed has to be provided to the WF.</description>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="538" type="java.lang.String">VendorDirectories</key>
<value id="539" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="540">[Ljava.lang.String;</className>
<clazz>[Ljava.lang.String;</clazz>
<description id="541">Remote SNP Directories</description>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="542" type="java.lang.String">considerNewInstrAddedToSOIEOI</key>
<value id="543" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="544">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description id="545">To Consider those instruments which are newly added to SOI/EOI</description>
<persistent>false</persistent>
<value idref="452"/>
</value>
</entry>
<entry>
<key id="546" type="java.lang.String">considerOnlyDateNewInstr</key>
<value id="547" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="548">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description id="549">This parameter is set true when only  date needs to be considered while quering the LAS_PROC_TMS column of EOIP table  .</description>
<persistent>false</persistent>
<value idref="452"/>
</value>
</entry>
<entry>
<key id="550" type="java.lang.String">considerSOIEOIonly</key>
<value id="551" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="552">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description id="553">To Condider instruments which are only a part of SOI/EOI</description>
<persistent>false</persistent>
<value idref="452"/>
</value>
</entry>
<entry>
<key id="554" type="java.lang.String">resetFailedParticipantsInSoi</key>
<value id="555" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="556">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description id="557">These flag indicates whether the user wants to reset the System Date of the particular Instrument in the SOI Group whose records have failed with severity 40/50 , so that they are picked up in next processing.</description>
<persistent>false</persistent>
<value idref="452"/>
</value>
</entry>
</variables>
<version>5</version>
</com.j2fe.workflow.definition.Workflow>
</businessobject>
</goldensource-package>
