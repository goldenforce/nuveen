<?xml version="1.0" encoding="UTF-8" standalone="no"?>
<goldensource-package version="8.8.1.66">
<package-comment/>
<businessobject displayString="3 - 20240731-8.8.1.28-Muni" type="com.j2fe.workflow.definition.Workflow">
<com.j2fe.workflow.definition.Workflow id="0">
<alwaysPersist>false</alwaysPersist>
<clustered>true</clustered>
<comment id="1">20240731-8.8.1.28-Muni</comment>
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
<name id="10">NOP</name>
<nodeHandler>com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandler>
<nodeHandlerClass id="11">com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandlerClass>
<sources id="12" type="java.util.HashSet">
<item id="13" type="com.j2fe.workflow.definition.Transition">
<name id="14">false</name>
<source id="15">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="3"/>
<directJoin>false</directJoin>
<name id="16">ResetFailedParticipants</name>
<nodeHandler>com.j2fe.general.activities.BeanShellScript</nodeHandler>
<nodeHandlerClass id="17">com.j2fe.general.activities.BeanShellScript</nodeHandlerClass>
<parameters id="18" type="java.util.HashSet">
<item id="19" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="20">statements</name>
<stringValue id="21">import com.j2fe.feeds.stp.STPFeedParameters;&#13;
&#13;
String ISSUERGroupPurposeType = metadata.get(STPFeedParameters.ISSUER_GROUP_PURPOSE_TYPE);&#13;
String ISSUGroupPurposeType = metadata.get(STPFeedParameters.ISSU_GROUP_PURPOSE_TYPE); 	&#13;
&#13;
if(resetFailedParticipantsInSoi){&#13;
return true;&#13;
}&#13;
else&#13;
{&#13;
return false;&#13;
}</stringValue>
<type>CONSTANT</type>
</item>
<item id="22" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="23">variables["ISSUERGroupPurposeType"]</name>
<stringValue id="24">ISSUERGroupPurposeType</stringValue>
<type>VARIABLE</type>
</item>
<item id="25" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="26">variables["ISSUGroupPurposeType"]</name>
<stringValue id="27">ISSUGroupPurposeType</stringValue>
<type>VARIABLE</type>
</item>
<item id="28" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="29">variables["metadata"]</name>
<stringValue id="30">Metadata</stringValue>
<type>VARIABLE</type>
</item>
<item id="31" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="32">variables["resetFailedParticipantsInSoi"]</name>
<stringValue id="33">resetFailedParticipantsInSoi</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="34" type="java.util.HashSet">
<item id="35" type="com.j2fe.workflow.definition.Transition">
<name id="36">goto-next</name>
<source id="37">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="3"/>
<directJoin>false</directJoin>
<name id="38">Load Bulk Files</name>
<nodeHandler>com.j2fe.workflow.handler.impl.CallSubWorkflow</nodeHandler>
<nodeHandlerClass id="39">com.j2fe.workflow.handler.impl.CallSubWorkflow</nodeHandlerClass>
<parameters id="40" type="java.util.HashSet">
<item id="41" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="42">["BulkSize"]@java/lang/Integer@</UITypeHint>
<input>true</input>
<name id="43">input["BulkSize"]</name>
<stringValue id="44">MessageBulkSize</stringValue>
<type>VARIABLE</type>
</item>
<item id="45" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="46">["EntityBusinessFeed"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="47">input["EntityBusinessFeed"]</name>
<stringValue id="48">EntityBusinessFeed</stringValue>
<type>VARIABLE</type>
</item>
<item id="49" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="50">["FileLoadEvent"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="51">input["FileLoadEvent"]</name>
<stringValue id="52">FileLoadEvent</stringValue>
<type>VARIABLE</type>
</item>
<item id="53" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="54">["FilesInParallel"]@java/lang/Integer@</UITypeHint>
<input>true</input>
<name id="55">input["FilesInParallel"]</name>
<stringValue id="56">FilesInParallel</stringValue>
<type>VARIABLE</type>
</item>
<item id="57" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="58">["InputDirectory"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="59">input["InputDirectory"]</name>
<stringValue id="60">BulkOutDirectory</stringValue>
<type>VARIABLE</type>
</item>
<item id="61" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="62">["MuniFilePatterns"]@[Ljava/lang/String;@</UITypeHint>
<input>true</input>
<name id="63">input["MuniFilePatterns"]</name>
<stringValue id="64">MuniFilePatterns</stringValue>
<type>VARIABLE</type>
</item>
<item id="65" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="66">["MuniMessageType"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="67">input["MuniMessageType"]</name>
<stringValue id="68">MuniMessageType</stringValue>
<type>VARIABLE</type>
</item>
<item id="69" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="70">["OutputDirectory"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="71">input["OutputDirectory"]</name>
<stringValue id="72">OutputMoveDirectory</stringValue>
<type>VARIABLE</type>
</item>
<item id="73" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="74">["ParallelBranches"]@java/lang/Integer@</UITypeHint>
<input>true</input>
<name id="75">input["ParallelBranches"]</name>
<stringValue id="76">ParallelBranches</stringValue>
<type>VARIABLE</type>
</item>
<item id="77" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="78">["ParentJobId"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="79">input["ParentJobId"]</name>
<stringValue id="80">ParentJobID</stringValue>
<type>VARIABLE</type>
</item>
<item id="81" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="82">["RatingsType"]@com/j2fe/connector/RatingsType@</UITypeHint>
<input>true</input>
<name id="83">input["RatingsType"]</name>
<stringValue id="84">RatingType</stringValue>
<type>VARIABLE</type>
</item>
<item id="85" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="86">["Reprocessprocessedfiles"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="87">input["Reprocessprocessedfiles"]</name>
<stringValue id="88">reprocess</stringValue>
<type>VARIABLE</type>
</item>
<item id="89" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="90">["SecurityBusinessFeed"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="91">input["SecurityBusinessFeed"]</name>
<stringValue id="92">SecurityBusinessFeed</stringValue>
<type>VARIABLE</type>
</item>
<item id="93" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="94">["SortOrder"]@com/j2fe/feeds/activities/ListFiles$Sort@</UITypeHint>
<input>true</input>
<name id="95">input["SortOrder"]</name>
<stringValue id="96">SortOrder</stringValue>
<type>VARIABLE</type>
</item>
<item id="97" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="98">["SuccessAction"]@com/j2fe/feeds/SuccessAction@</UITypeHint>
<input>true</input>
<name id="99">input["SuccessAction"]</name>
<stringValue id="100">SuccessAction</stringValue>
<type>VARIABLE</type>
</item>
<item id="101" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="102">name</name>
<stringValue id="103">SnPRatingsLoad_NuveenMuni</stringValue>
<type>CONSTANT</type>
</item>
</parameters>
<sources id="104" type="java.util.HashSet">
<item id="105" type="com.j2fe.workflow.definition.Transition">
<name id="106">goto-next</name>
<source id="107">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="3"/>
<directJoin>false</directJoin>
<name id="108">NOP</name>
<nodeHandler>com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandler>
<nodeHandlerClass id="109">com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandlerClass>
<sources id="110" type="java.util.HashSet">
<item id="111" type="com.j2fe.workflow.definition.Transition">
<name id="112">error</name>
<source id="113">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="3"/>
<directJoin>false</directJoin>
<name id="114">Rating V4 Bulk File Split</name>
<nodeHandler>com.j2fe.feeds.activities.RatingV4BulkSplit</nodeHandler>
<nodeHandlerClass id="115">com.j2fe.feeds.activities.RatingV4BulkSplit</nodeHandlerClass>
<parameters id="116" type="java.util.HashSet">
<item id="117" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="118">inputDirectory</name>
<stringValue id="119">BulkOutDirectory</stringValue>
<type>VARIABLE</type>
</item>
<item id="120" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="121">metaData</name>
<stringValue id="122">Metadata</stringValue>
<type>VARIABLE</type>
</item>
<item id="123" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="124">outputDirectory</name>
<stringValue id="125">BulkOutDirectory</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="126" type="java.util.HashSet">
<item id="127" type="com.j2fe.workflow.definition.Transition">
<name id="128">ToSplit</name>
<source id="129">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description id="130">Automatically generated</description>
<directJoin>false</directJoin>
<name id="131">Merge</name>
<nodeHandler>com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandler>
<nodeHandlerClass id="132">com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandlerClass>
<sources id="133" type="java.util.HashSet">
<item id="134" type="com.j2fe.workflow.definition.Transition">
<name id="135">goto-next</name>
<source id="136">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="3"/>
<directJoin>false</directJoin>
<name id="137">NOP</name>
<nodeHandler>com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandler>
<nodeHandlerClass id="138">com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandlerClass>
<sources id="139" type="java.util.HashSet">
<item id="140" type="com.j2fe.workflow.definition.Transition">
<name id="141">error</name>
<source id="142">
<activation>ASYNCHRONOUS</activation>
<clusteredCall>false</clusteredCall>
<description idref="3"/>
<directJoin>false</directJoin>
<name id="143">Rating V4 Deduplicator</name>
<nodeHandler>com.j2fe.feeds.activities.RatingV4Deduplicator</nodeHandler>
<nodeHandlerClass id="144">com.j2fe.feeds.activities.RatingV4Deduplicator</nodeHandlerClass>
<parameters id="145" type="java.util.HashSet">
<item id="146" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="147">exception</name>
<stringValue id="148">Exception</stringValue>
<type>VARIABLE</type>
</item>
<item id="149" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="150">inputDirectory</name>
<stringValue id="151">BulkOutDirectory</stringValue>
<type>VARIABLE</type>
</item>
<item id="152" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="153">metaData</name>
<stringValue id="154">Metadata</stringValue>
<type>VARIABLE</type>
</item>
<item id="155" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="156">outputDirectory</name>
<stringValue id="157">BulkOutDirectory</stringValue>
<type>VARIABLE</type>
</item>
<item id="158" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="159">outputDirectory</name>
<stringValue id="160">OutputDirectory</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="161" type="java.util.HashSet">
<item id="162" type="com.j2fe.workflow.definition.Transition">
<name id="163">goto-next</name>
<source id="164">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="3"/>
<directJoin>false</directJoin>
<name id="165">Delete Text Files</name>
<nodeHandler>com.j2fe.workflow.handler.impl.CallSubWorkflow</nodeHandler>
<nodeHandlerClass id="166">com.j2fe.workflow.handler.impl.CallSubWorkflow</nodeHandlerClass>
<parameters id="167" type="java.util.HashSet">
<item id="168" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="169">["FilePatterns"]@[Ljava/lang/String;@[0]</UITypeHint>
<input>true</input>
<name id="170">input["FilePatterns"][0]</name>
<stringValue id="171">*.txt</stringValue>
<type>CONSTANT</type>
</item>
<item id="172" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="173">["SourceDirectories"]@[Ljava/lang/String;@[0]</UITypeHint>
<input>true</input>
<name id="174">input["SourceDirectories"][0]</name>
<stringValue id="175">stageDir</stringValue>
<type>VARIABLE</type>
</item>
<item id="176" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="177">["SuccessAction"]@com/j2fe/feeds/SuccessAction@</UITypeHint>
<input>true</input>
<name id="178">input["SuccessAction"]</name>
<stringValue id="179">DELETE</stringValue>
<type>CONSTANT</type>
</item>
<item id="180" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="181">name</name>
<stringValue id="182">SNPRatingsMoveFiles</stringValue>
<type>CONSTANT</type>
</item>
</parameters>
<sources id="183" type="java.util.HashSet">
<item id="184" type="com.j2fe.workflow.definition.Transition">
<name id="185">goto-next</name>
<source id="186">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="3"/>
<directJoin>false</directJoin>
<name id="187">Bean Shell Script (Standard)</name>
<nodeHandler>com.j2fe.general.activities.BeanShellScript</nodeHandler>
<nodeHandlerClass id="188">com.j2fe.general.activities.BeanShellScript</nodeHandlerClass>
<parameters id="189" type="java.util.HashSet">
<item id="190" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="191">statements</name>
<objectValue id="192" type="java.lang.String">import java.util.HashSet;&#13;
import org.apache.commons.io.FilenameUtils;&#13;
import com.j2fe.feeds.SuccessAction;&#13;
import com.j2fe.feeds.stp.STPFeedParameters;&#13;
&#13;
String ost=STPFeedParameters.OUTPUT_DIRECTORY;&#13;
&#13;
String bulkout=metadata.get(STPFeedParameters.OUTPUT_DIRECTORY);&#13;
String outmove=metadata.get(STPFeedParameters.OUT_MOVE_DIRECTORY);&#13;
boolean move=metadata.get(STPFeedParameters.MOVE_OUTPUT_FILES);&#13;
boolean reprocess=metadata.get(STPFeedParameters.REPROCESSPROCESSEDFILE);&#13;
String stageDir=metadata.get(STPFeedParameters.STAGE_DIRECTORY);&#13;
SuccessAction suc=metadata.get(STPFeedParameters.SUCCESS_ACTION);&#13;
if(move)&#13;
{&#13;
suc=SuccessAction.MOVE;&#13;
}&#13;
else if(suc==SuccessAction.DELETE) {&#13;
suc=SuccessAction.DELETE;&#13;
}&#13;
int branches=metadata.get(STPFeedParameters.PARALLEL_BRANCHES);&#13;
int parallel=metadata.get(STPFeedParameters .FILES_IN_PARALLEL);&#13;
int bs=metadata.get(STPFeedParameters.STAGING_BULK_SIZE);&#13;
&#13;
String ebf = (mebf==null||mebf.isEmpty())?"S&amp;P_XF_GR_Entity_Ratings":mebf;
&#13;
String sbf = (msbf==null||msbf.isEmpty())?"S&amp;P_XF_GR_Security_Ratings":msbf;</objectValue>
<type>CONSTANT</type>
</item>
<item id="193" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="194">["branches"]@java/lang/Integer@</UITypeHint>
<input>false</input>
<name id="195">variables["branches"]</name>
<stringValue id="196">ParallelBranches</stringValue>
<type>VARIABLE</type>
</item>
<item id="197" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="198">["bulkout"]@java/lang/String@</UITypeHint>
<input>false</input>
<name id="199">variables["bulkout"]</name>
<stringValue id="200">BulkOutDirectory</stringValue>
<type>VARIABLE</type>
</item>
<item id="201" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="202">["ebf"]@java/lang/String@</UITypeHint>
<input>false</input>
<name id="203">variables["ebf"]</name>
<stringValue id="204">EntityBusinessFeed</stringValue>
<type>VARIABLE</type>
</item>
<item id="205" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="206">["mebf"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="207">variables["mebf"]</name>
<stringValue id="208">MuniEntityBusinessFeed</stringValue>
<type>VARIABLE</type>
</item>
<item id="209" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="210">["metadata"]@java/lang/Object@</UITypeHint>
<input>true</input>
<name id="211">variables["metadata"]</name>
<stringValue id="212">Metadata</stringValue>
<type>VARIABLE</type>
</item>
<item id="213" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="214">["msbf"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="215">variables["msbf"]</name>
<stringValue id="216">MuniSecurityBusinessFeed</stringValue>
<type>VARIABLE</type>
</item>
<item id="217" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="218">["outmove"]@java/lang/String@</UITypeHint>
<input>false</input>
<name id="219">variables["outmove"]</name>
<stringValue id="220">OutputMoveDirectory</stringValue>
<type>VARIABLE</type>
</item>
<item id="221" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="222">["parallel"]@java/lang/Integer@</UITypeHint>
<input>false</input>
<name id="223">variables["parallel"]</name>
<stringValue id="224">FilesInParallel</stringValue>
<type>VARIABLE</type>
</item>
<item id="225" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="226">variables["reprocess"]</name>
<stringValue id="227">reprocess</stringValue>
<type>VARIABLE</type>
</item>
<item id="228" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="229">["sbf"]@java/lang/String@</UITypeHint>
<input>false</input>
<name id="230">variables["sbf"]</name>
<stringValue id="231">SecurityBusinessFeed</stringValue>
<type>VARIABLE</type>
</item>
<item id="232" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="233">variables["stageDir"]</name>
<stringValue id="234">stageDir</stringValue>
<type>VARIABLE</type>
</item>
<item id="235" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="236">["suc"]@com/j2fe/feeds/SuccessAction@</UITypeHint>
<input>false</input>
<name id="237">variables["suc"]</name>
<stringValue id="238">SuccessAction</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="239" type="java.util.HashSet">
<item id="240" type="com.j2fe.workflow.definition.Transition">
<name id="241">goto-next</name>
<source id="242">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="3"/>
<directJoin>false</directJoin>
<name id="243">NOP</name>
<nodeHandler>com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandler>
<nodeHandlerClass id="244">com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandlerClass>
<sources id="245" type="java.util.HashSet">
<item id="246" type="com.j2fe.workflow.definition.Transition">
<name id="247">goto-next</name>
<source id="248">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="3"/>
<directJoin>false</directJoin>
<name id="249">Call Entity Bulk</name>
<nodeHandler>com.j2fe.workflow.handler.impl.CallSubWorkflow</nodeHandler>
<nodeHandlerClass id="250">com.j2fe.workflow.handler.impl.CallSubWorkflow</nodeHandlerClass>
<parameters id="251" type="java.util.HashSet">
<item id="252" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="253">["ParentJobId"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="254">input["ParentJobId"]</name>
<stringValue id="255">ParentJobID</stringValue>
<type>VARIABLE</type>
</item>
<item id="256" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="257">["RatingType"]@com/j2fe/connector/RatingsType@</UITypeHint>
<input>true</input>
<name id="258">input["RatingType"]</name>
<stringValue id="259">ENTITIES</stringValue>
<type>CONSTANT</type>
</item>
<item id="260" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="261">["considerOnlyDateNewInstr"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="262">input["considerOnlyDateNewInstr"]</name>
<stringValue id="263">considerOnlyDateNewInstr</stringValue>
<type>VARIABLE</type>
</item>
<item id="264" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="265">["metadata"]@java/lang/Object@</UITypeHint>
<input>true</input>
<name id="266">input["metadata"]</name>
<stringValue id="267">Metadata</stringValue>
<type>VARIABLE</type>
</item>
<item id="268" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="269">name</name>
<stringValue id="270">SnPRatingsBulk</stringValue>
<type>CONSTANT</type>
</item>
<item id="271" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="272">output["keys"]</name>
<stringValue id="273">EntityKeys</stringValue>
<type>VARIABLE</type>
</item>
<item id="274" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="275">output["metadata"]</name>
<stringValue id="276">Metadata</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="277" type="java.util.HashSet">
<item id="278" type="com.j2fe.workflow.definition.Transition">
<name id="279">ENTITIES</name>
<source id="280">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="3"/>
<directJoin>false</directJoin>
<name id="281">Switch Case</name>
<nodeHandler>com.j2fe.workflow.handler.impl.SwitchCaseSplit</nodeHandler>
<nodeHandlerClass id="282">com.j2fe.workflow.handler.impl.SwitchCaseSplit</nodeHandlerClass>
<parameters id="283" type="java.util.HashSet">
<item id="284" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="285">caseItem</name>
<stringValue id="286">RatingType</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="287" type="java.util.HashSet">
<item id="288" type="com.j2fe.workflow.definition.Transition">
<name id="289">goto-next</name>
<source id="290">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="3"/>
<directJoin>false</directJoin>
<name id="291">Bean Shell Script (Standard) #2</name>
<nodeHandler>com.j2fe.general.activities.BeanShellScript</nodeHandler>
<nodeHandlerClass id="292">com.j2fe.general.activities.BeanShellScript</nodeHandlerClass>
<parameters id="293" type="java.util.HashSet">
<item id="294" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="295">statements</name>
<stringValue id="296">map.toString();</stringValue>
<type>CONSTANT</type>
</item>
<item id="297" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="298">variables["map"]</name>
<stringValue id="299">Metadata</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="300" type="java.util.HashSet">
<item id="301" type="com.j2fe.workflow.definition.Transition">
<name id="302">goto-next</name>
<source id="303">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="3"/>
<directJoin>false</directJoin>
<name id="304">Start</name>
<nodeHandler>com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandler>
<nodeHandlerClass id="305">com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandlerClass>
<sources id="306" type="java.util.HashSet"/>
<targets id="307" type="java.util.HashSet">
<item idref="301" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>START</type>
</source>
<target idref="290"/>
</item>
</sources>
<targets id="308" type="java.util.HashSet">
<item idref="288" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="280"/>
</item>
</sources>
<targets id="309" type="java.util.HashSet">
<item id="310" type="com.j2fe.workflow.definition.Transition">
<name id="311">ALL</name>
<source idref="280"/>
<target id="312">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="3"/>
<directJoin>false</directJoin>
<name id="313">Bean Shell Script (Standard) #3</name>
<nodeHandler>com.j2fe.general.activities.BeanShellScript</nodeHandler>
<nodeHandlerClass id="314">com.j2fe.general.activities.BeanShellScript</nodeHandlerClass>
<parameters id="315" type="java.util.HashSet">
<item id="316" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="317">statements</name>
<stringValue id="318">import com.j2fe.feeds.stp.STPFeedParameters;&#13;
import com.j2fe.connector.RatingsType;&#13;
&#13;
meta.put(STPFeedParameters.RATING_TYPE, RatingsType.valueOf("ENTITIES"));</stringValue>
<type>CONSTANT</type>
</item>
<item id="319" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="320">variables["meta"]</name>
<stringValue id="321">Metadata</stringValue>
<type>VARIABLE</type>
</item>
<item id="322" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="323">variables["meta"]</name>
<stringValue id="324">Metadata</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="325" type="java.util.HashSet">
<item idref="310" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="326" type="java.util.HashSet">
<item id="327" type="com.j2fe.workflow.definition.Transition">
<name id="328">goto-next</name>
<source idref="312"/>
<target id="329">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="3"/>
<directJoin>false</directJoin>
<name id="330">Call Entity Bulk</name>
<nodeHandler>com.j2fe.workflow.handler.impl.CallSubWorkflow</nodeHandler>
<nodeHandlerClass id="331">com.j2fe.workflow.handler.impl.CallSubWorkflow</nodeHandlerClass>
<parameters id="332" type="java.util.HashSet">
<item id="333" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="334">["ParentJobId"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="335">input["ParentJobId"]</name>
<stringValue id="336">ParentJobID</stringValue>
<type>VARIABLE</type>
</item>
<item id="337" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="338">["RatingType"]@com/j2fe/connector/RatingsType@</UITypeHint>
<input>true</input>
<name id="339">input["RatingType"]</name>
<objectValue id="340" type="com.j2fe.connector.RatingsType">ENTITIES</objectValue>
<type>CONSTANT</type>
</item>
<item id="341" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="342">["considerOnlyDateNewInstr"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="343">input["considerOnlyDateNewInstr"]</name>
<stringValue id="344">considerOnlyDateNewInstr</stringValue>
<type>VARIABLE</type>
</item>
<item id="345" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="346">["metadata"]@java/lang/Object@</UITypeHint>
<input>true</input>
<name id="347">input["metadata"]</name>
<stringValue id="348">Metadata</stringValue>
<type>VARIABLE</type>
</item>
<item id="349" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="350">name</name>
<stringValue id="351">SnPRatingsBulk</stringValue>
<type>CONSTANT</type>
</item>
<item id="352" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="353">output["keys"]</name>
<stringValue id="354">EntityKeys</stringValue>
<type>VARIABLE</type>
</item>
<item id="355" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="356">output["metadata"]</name>
<stringValue id="357">Metadata</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="358" type="java.util.HashSet">
<item idref="327" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="359" type="java.util.HashSet">
<item id="360" type="com.j2fe.workflow.definition.Transition">
<name id="361">goto-next</name>
<source idref="329"/>
<target id="362">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="3"/>
<directJoin>false</directJoin>
<name id="363">Bean Shell Script (Standard) #3</name>
<nodeHandler>com.j2fe.general.activities.BeanShellScript</nodeHandler>
<nodeHandlerClass id="364">com.j2fe.general.activities.BeanShellScript</nodeHandlerClass>
<parameters id="365" type="java.util.HashSet">
<item id="366" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="367">statements</name>
<stringValue id="368">import com.j2fe.feeds.stp.STPFeedParameters;&#13;
import com.j2fe.connector.RatingsType;&#13;
&#13;
meta.put(STPFeedParameters.RATING_TYPE, RatingsType.valueOf("SECURITIES"));&#13;
&#13;
meta.put(STPFeedParameters.SPLIT_URI_MAP, null);&#13;
meta.put(STPFeedParameters.BULK_MAP, null);&#13;
meta.put(STPFeedParameters.BULK_KEYS, null);&#13;
meta.put(STPFeedParameters.MAPPED_KEYS, null);&#13;
&#13;
</stringValue>
<type>CONSTANT</type>
</item>
<item id="369" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="370">variables["meta"]</name>
<stringValue id="371">Metadata</stringValue>
<type>VARIABLE</type>
</item>
<item id="372" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="373">variables["meta"]</name>
<stringValue id="374">Metadata</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="375" type="java.util.HashSet">
<item idref="360" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="376" type="java.util.HashSet">
<item id="377" type="com.j2fe.workflow.definition.Transition">
<name id="378">goto-next</name>
<source idref="362"/>
<target id="379">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="3"/>
<directJoin>false</directJoin>
<name id="380">Call Security Bulk</name>
<nodeHandler>com.j2fe.workflow.handler.impl.CallSubWorkflow</nodeHandler>
<nodeHandlerClass id="381">com.j2fe.workflow.handler.impl.CallSubWorkflow</nodeHandlerClass>
<parameters id="382" type="java.util.HashSet">
<item id="383" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="384">["ParentJobId"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="385">input["ParentJobId"]</name>
<stringValue id="386">ParentJobID</stringValue>
<type>VARIABLE</type>
</item>
<item id="387" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="388">["RatingType"]@com/j2fe/connector/RatingsType@</UITypeHint>
<input>true</input>
<name id="389">input["RatingType"]</name>
<objectValue id="390" type="com.j2fe.connector.RatingsType">SECURITIES</objectValue>
<type>CONSTANT</type>
</item>
<item id="391" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="392">["considerOnlyDateNewInstr"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="393">input["considerOnlyDateNewInstr"]</name>
<stringValue id="394">considerOnlyDateNewInstr</stringValue>
<type>VARIABLE</type>
</item>
<item id="395" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="396">["metadata"]@java/lang/Object@</UITypeHint>
<input>true</input>
<name id="397">input["metadata"]</name>
<stringValue id="398">Metadata</stringValue>
<type>VARIABLE</type>
</item>
<item id="399" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="400">name</name>
<stringValue id="401">SnPRatingsBulk</stringValue>
<type>CONSTANT</type>
</item>
<item id="402" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="403">output["keys"]</name>
<stringValue id="404">SecurityKeys</stringValue>
<type>VARIABLE</type>
</item>
<item id="405" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="406">output["metadata"]</name>
<stringValue id="407">Metadata</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="408" type="java.util.HashSet">
<item idref="377" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="409" type="java.util.HashSet">
<item id="410" type="com.j2fe.workflow.definition.Transition">
<name id="411">goto-next</name>
<source idref="379"/>
<target idref="242"/>
</item>
</targets>
<type>ACTIVITY</type>
</target>
</item>
</targets>
<type>ACTIVITY</type>
</target>
</item>
</targets>
<type>ACTIVITY</type>
</target>
</item>
</targets>
<type>ACTIVITY</type>
</target>
</item>
<item idref="278" type="com.j2fe.workflow.definition.Transition"/>
<item id="412" type="com.j2fe.workflow.definition.Transition">
<name id="413">SECURITIES</name>
<source idref="280"/>
<target id="414">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="3"/>
<directJoin>false</directJoin>
<name id="415">Call Security Bulk</name>
<nodeHandler>com.j2fe.workflow.handler.impl.CallSubWorkflow</nodeHandler>
<nodeHandlerClass id="416">com.j2fe.workflow.handler.impl.CallSubWorkflow</nodeHandlerClass>
<parameters id="417" type="java.util.HashSet">
<item id="418" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="419">["ParentJobId"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="420">input["ParentJobId"]</name>
<stringValue id="421">ParentJobID</stringValue>
<type>VARIABLE</type>
</item>
<item id="422" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="423">["RatingType"]@com/j2fe/connector/RatingsType@</UITypeHint>
<input>true</input>
<name id="424">input["RatingType"]</name>
<stringValue id="425">SECURITIES</stringValue>
<type>CONSTANT</type>
</item>
<item id="426" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="427">["considerOnlyDateNewInstr"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="428">input["considerOnlyDateNewInstr"]</name>
<stringValue id="429">considerOnlyDateNewInstr</stringValue>
<type>VARIABLE</type>
</item>
<item id="430" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="431">["metadata"]@java/lang/Object@</UITypeHint>
<input>true</input>
<name id="432">input["metadata"]</name>
<stringValue id="433">Metadata</stringValue>
<type>VARIABLE</type>
</item>
<item id="434" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="435">name</name>
<stringValue id="436">SnPRatingsBulk</stringValue>
<type>CONSTANT</type>
</item>
<item id="437" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="438">output["keys"]</name>
<stringValue id="439">SecurityKeys</stringValue>
<type>VARIABLE</type>
</item>
<item id="440" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="441">output["metadata"]</name>
<stringValue id="442">Metadata</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="443" type="java.util.HashSet">
<item idref="412" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="444" type="java.util.HashSet">
<item id="445" type="com.j2fe.workflow.definition.Transition">
<name id="446">goto-next</name>
<source idref="414"/>
<target idref="242"/>
</item>
</targets>
<type>ACTIVITY</type>
</target>
</item>
</targets>
<type>XORSPLIT</type>
</source>
<target idref="248"/>
</item>
</sources>
<targets id="447" type="java.util.HashSet">
<item idref="246" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="242"/>
</item>
<item idref="410" type="com.j2fe.workflow.definition.Transition"/>
<item idref="445" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="448" type="java.util.HashSet">
<item idref="240" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="186"/>
</item>
</sources>
<targets id="449" type="java.util.HashSet">
<item idref="184" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="164"/>
</item>
</sources>
<targets id="450" type="java.util.HashSet">
<item idref="162" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="142"/>
</item>
</sources>
<targets id="451" type="java.util.HashSet">
<item idref="140" type="com.j2fe.workflow.definition.Transition"/>
<item id="452" type="com.j2fe.workflow.definition.Transition">
<name id="453">success</name>
<source idref="142"/>
<target idref="129"/>
</item>
</targets>
<type>XORSPLIT</type>
</source>
<target idref="136"/>
</item>
</sources>
<targets id="454" type="java.util.HashSet">
<item idref="134" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="129"/>
</item>
<item idref="452" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="455" type="java.util.HashSet">
<item idref="127" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="113"/>
</item>
</sources>
<targets id="456" type="java.util.HashSet">
<item idref="111" type="com.j2fe.workflow.definition.Transition"/>
<item id="457" type="com.j2fe.workflow.definition.Transition">
<name id="458">success</name>
<source idref="113"/>
<target idref="37"/>
</item>
</targets>
<type>XORSPLIT</type>
</source>
<target idref="107"/>
</item>
</sources>
<targets id="459" type="java.util.HashSet">
<item idref="105" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="37"/>
</item>
<item idref="457" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="460" type="java.util.HashSet">
<item idref="35" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="15"/>
</item>
</sources>
<targets id="461" type="java.util.HashSet">
<item idref="13" type="com.j2fe.workflow.definition.Transition"/>
<item id="462" type="com.j2fe.workflow.definition.Transition">
<name id="463">true</name>
<source idref="15"/>
<target id="464">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="3"/>
<directJoin>false</directJoin>
<name id="465">Reset Participants in ISGP</name>
<nodeHandler>com.j2fe.general.activities.database.DBStatement</nodeHandler>
<nodeHandlerClass id="466">com.j2fe.general.activities.database.DBStatement</nodeHandlerClass>
<parameters id="467" type="java.util.HashSet">
<item id="468" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="469">database</name>
<stringValue id="470">jdbc/GSDM-1</stringValue>
<type>REFERENCE</type>
</item>
<item id="471" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="472">indexedParameters[0]</name>
<stringValue id="473">ParentJobID</stringValue>
<type>VARIABLE</type>
</item>
<item id="474" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="475">indexedParameters[1]</name>
<stringValue id="476">ISSUGroupPurposeType</stringValue>
<type>VARIABLE</type>
</item>
<item id="477" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="478">querySQL</name>
<stringValue id="479">UPDATE FT_T_ISGP isgp&#13;
   SET isgp.START_TMS = SYSDATE&#13;
 WHERE     EXISTS&#13;
              (SELECT 'X'&#13;
                 FROM ft_t_isid isid, ft_t_trid trid, ft_t_jblg jblg&#13;
                WHERE     trid.CRRNT_SEVERITY_CDE &gt; 30&#13;
                      AND ISGP.INSTR_ID = ISID.INSTR_ID&#13;
                      AND TRID.MAIN_ENTITY_ID = isid.iss_id &#13;
                      AND trid.job_id = jblg.job_id&#13;
                      AND prnt_job_id = ?)&#13;
       AND isgp.PRNT_ISS_GRP_OID IN&#13;
              (    SELECT DISTINCT PRNT_ISS_GRP_OID&#13;
                     FROM ft_t_isgp&#13;
               CONNECT BY PRIOR ISS_GRP_OID = PRNT_ISS_GRP_OID&#13;
               START WITH PRNT_ISS_GRP_OID IN (SELECT ISS_GRP_OID&#13;
                                                 FROM FT_T_ISGR&#13;
                                                WHERE GRP_PURP_TYP = ?))</stringValue>
<type>CONSTANT</type>
</item>
</parameters>
<sources id="480" type="java.util.HashSet">
<item idref="462" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="481" type="java.util.HashSet">
<item id="482" type="com.j2fe.workflow.definition.Transition">
<name id="483">goto-next</name>
<source idref="464"/>
<target id="484">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="3"/>
<directJoin>false</directJoin>
<name id="485">Reset Participants in FIGP</name>
<nodeHandler>com.j2fe.general.activities.database.DBStatement</nodeHandler>
<nodeHandlerClass id="486">com.j2fe.general.activities.database.DBStatement</nodeHandlerClass>
<parameters id="487" type="java.util.HashSet">
<item id="488" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="489">database</name>
<stringValue id="490">jdbc/GSDM-1</stringValue>
<type>REFERENCE</type>
</item>
<item id="491" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="492">indexedParameters[0]</name>
<stringValue id="493">ParentJobID</stringValue>
<type>VARIABLE</type>
</item>
<item id="494" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="495">indexedParameters[1]</name>
<stringValue id="496">ISSUERGroupPurposeType</stringValue>
<type>VARIABLE</type>
</item>
<item id="497" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="498">querySQL</name>
<stringValue id="499">UPDATE FT_T_FIGP figp&#13;
   SET figp.START_TMS = SYSDATE&#13;
 WHERE EXISTS&#13;
          (SELECT 'X'&#13;
             FROM ft_t_fiid fiid, ft_t_trid trid, ft_t_jblg jblg&#13;
            WHERE     trid.CRRNT_SEVERITY_CDE &gt; 30&#13;
                  AND figp.INST_MNEM = fiid.INST_MNEM&#13;
                  AND trid.job_id = jblg.job_id&#13;
                  AND TRID.MAIN_ENTITY_ID_CTXT_TYP = fiid.FINS_ID_CTXT_TYP&#13;
                  AND TRID.MAIN_ENTITY_ID = fiid.fins_id &#13;
                  AND prnt_job_id = ?&#13;
                  AND PRNT_FINS_GRP_OID IN&#13;
                         (    SELECT DISTINCT PRNT_FINS_GRP_OID&#13;
                                FROM FT_T_FIGP&#13;
                          CONNECT BY PRIOR FINS_GRP_OID = PRNT_FINS_GRP_OID&#13;
                          START WITH PRNT_FINS_GRP_OID IN&#13;
                                        (SELECT FINS_GRP_OID&#13;
                                           FROM FT_T_FIGR&#13;
                                          WHERE GRP_PURP_TYP = ? )))</stringValue>
<type>CONSTANT</type>
</item>
</parameters>
<sources id="500" type="java.util.HashSet">
<item idref="482" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="501" type="java.util.HashSet">
<item id="502" type="com.j2fe.workflow.definition.Transition">
<name id="503">goto-next</name>
<source idref="484"/>
<target idref="9"/>
</item>
</targets>
<type>ACTIVITY</type>
</target>
</item>
</targets>
<type>ACTIVITY</type>
</target>
</item>
</targets>
<type>XORSPLIT</type>
</source>
<target idref="9"/>
</item>
<item idref="502" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="504" type="java.util.HashSet">
<item idref="7" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="2"/>
</item>
</sources>
<targets id="505" type="java.util.HashSet"/>
<type>END</type>
</endNode>
<forcePurgeAtEnd>false</forcePurgeAtEnd>
<group id="506">Custom/Processing</group>
<haltOnError>false</haltOnError>
<lastChangeUser id="507">user1</lastChangeUser>
<lastUpdate id="508">2024-09-16T10:03:54.000-0400</lastUpdate>
<name id="509">SnPRatingsBulkParent_NuveenMuni</name>
<optimize>true</optimize>
<parameter id="510" type="java.util.HashMap">
<entry>
<key id="511" type="java.lang.String">FileLoadEvent</key>
<value id="512" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="513">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="514">FileLoadEvent for loading of bulk files</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="515" type="java.lang.String">MessageBulkSize</key>
<value id="516" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="517">java.lang.Integer</className>
<clazz>java.lang.Integer</clazz>
<description id="518">Bulk Size will be used to load bulk files in PFD</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="519" type="java.lang.String">Metadata</key>
<value id="520" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="521">java.lang.Object</className>
<clazz>java.lang.Object</clazz>
<input>true</input>
<output>false</output>
<required>true</required>
</value>
</entry>
<entry>
<key id="522" type="java.lang.String">MuniEntityBusinessFeed</key>
<value id="523" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="524">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="3"/>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="525" type="java.lang.String">MuniFilePatterns</key>
<value id="526" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="527">[Ljava.lang.String;</className>
<clazz>[Ljava.lang.String;</clazz>
<description idref="3"/>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="528" type="java.lang.String">MuniMessageType</key>
<value id="529" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="530">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="3"/>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="531" type="java.lang.String">MuniSecurityBusinessFeed</key>
<value id="532" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="533">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="3"/>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="534" type="java.lang.String">ParentJobID</key>
<value id="535" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="536">java.lang.String</className>
<clazz>java.lang.String</clazz>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="537" type="java.lang.String">RatingType</key>
<value id="538" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="539">com.j2fe.connector.RatingsType</className>
<clazz>com.j2fe.connector.RatingsType</clazz>
<input>true</input>
<output>false</output>
<required>true</required>
</value>
</entry>
<entry>
<key id="540" type="java.lang.String">SortOrder</key>
<value id="541" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="542">com.j2fe.feeds.activities.ListFiles$Sort</className>
<clazz>com.j2fe.feeds.activities.ListFiles$Sort</clazz>
<description id="543">The parameter denotes order in which files need to be sorted .&#13;
Default value is set to FILESIZE where bigger file would be picked up first for loading .&#13;
Note : If Client downloads multiple dated Changes file together for processing than the parameter value  needs to be changed to TIME.</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="544" type="java.lang.String">considerOnlyDateNewInstr</key>
<value id="545" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="546">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description id="547">This parameter is set true when only  date needs to be considered while quering the LAS_PROC_TMS column of EOIP table  .</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="548" type="java.lang.String">resetFailedParticipantsInSoi</key>
<value id="549" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="550">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description id="551">These flag indicates whether the user wants to reset the System Date of the particular Instrument in the SOI Group whose records have failed with severity 40/50 , so that they are picked up in next processing.</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
</parameter>
<permissions id="552" type="java.util.HashSet"/>
<priority>50</priority>
<purgeAtEnd>false</purgeAtEnd>
<retries>0</retries>
<startNode idref="303"/>
<status>RELEASED</status>
<variables id="553" type="java.util.HashMap">
<entry>
<key id="554" type="java.lang.String">BulkOutDirectory</key>
<value id="555" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="556">java.lang.String</className>
<clazz>java.lang.String</clazz>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="557" type="java.lang.String">EntityBusinessFeed</key>
<value id="558" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="559">java.lang.String</className>
<clazz>java.lang.String</clazz>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="560" type="java.lang.String">EntityKeys</key>
<value id="561" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="562">java.lang.Object</className>
<clazz>java.lang.Object</clazz>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="563" type="java.lang.String">Exception</key>
<value id="564" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="565">java.lang.String</className>
<clazz>java.lang.String</clazz>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="566" type="java.lang.String">FileLoadEvent</key>
<value id="567" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="568">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="569">FileLoadEvent for loading of bulk files</description>
<persistent>false</persistent>
<value id="570" type="java.lang.String">StandardFileLoad</value>
</value>
</entry>
<entry>
<key id="571" type="java.lang.String">FilesInParallel</key>
<value id="572" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="573">java.lang.Integer</className>
<clazz>java.lang.Integer</clazz>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="574" type="java.lang.String">LoadBulkSize</key>
<value id="575" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="576">java.lang.Integer</className>
<clazz>java.lang.Integer</clazz>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="577" type="java.lang.String">MessageBulkSize</key>
<value id="578" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="579">java.lang.Integer</className>
<clazz>java.lang.Integer</clazz>
<description id="580">Bulk Size will be used to load bulk files in PFD</description>
<persistent>false</persistent>
<value id="581" type="java.lang.Integer">500</value>
</value>
</entry>
<entry>
<key id="582" type="java.lang.String">Metadata</key>
<value id="583" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="584">java.lang.Object</className>
<clazz>java.lang.Object</clazz>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="585" type="java.lang.String">MuniEntityBusinessFeed</key>
<value id="586" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="587">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="3"/>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="588" type="java.lang.String">MuniFilePatterns</key>
<value id="589" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="590">[Ljava.lang.String;</className>
<clazz>[Ljava.lang.String;</clazz>
<description idref="3"/>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="591" type="java.lang.String">MuniMessageType</key>
<value id="592" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="593">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="3"/>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="594" type="java.lang.String">MuniSecurityBusinessFeed</key>
<value id="595" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="596">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="3"/>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="597" type="java.lang.String">OutputMoveDirectory</key>
<value id="598" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="599">java.lang.String</className>
<clazz>java.lang.String</clazz>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="600" type="java.lang.String">ParallelBranches</key>
<value id="601" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="602">java.lang.Integer</className>
<clazz>java.lang.Integer</clazz>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="603" type="java.lang.String">ParentJobID</key>
<value id="604" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="605">java.lang.String</className>
<clazz>java.lang.String</clazz>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="606" type="java.lang.String">PrepareException</key>
<value id="607" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="608">java.lang.String</className>
<clazz>java.lang.String</clazz>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="609" type="java.lang.String">RatingType</key>
<value id="610" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="611">com.j2fe.connector.RatingsType</className>
<clazz>com.j2fe.connector.RatingsType</clazz>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="612" type="java.lang.String">SecurityBusinessFeed</key>
<value id="613" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="614">java.lang.String</className>
<clazz>java.lang.String</clazz>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="615" type="java.lang.String">SecurityKeys</key>
<value id="616" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="617">java.lang.Object</className>
<clazz>java.lang.Object</clazz>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="618" type="java.lang.String">SortOrder</key>
<value id="619" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="620">com.j2fe.feeds.activities.ListFiles$Sort</className>
<clazz>com.j2fe.feeds.activities.ListFiles$Sort</clazz>
<description id="621">The parameter denotes order in which files need to be sorted .&#13;
Default value is set to FILESIZE where bigger file would be picked up first for loading .&#13;
Note : If Client downloads multiple dated Changes file together for processing than the parameter value  needs to be changed to TIME.</description>
<persistent>false</persistent>
<value id="622" type="com.j2fe.feeds.activities.ListFiles$Sort">FILESIZE</value>
</value>
</entry>
<entry>
<key id="623" type="java.lang.String">SuccessAction</key>
<value id="624" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="625">com.j2fe.feeds.SuccessAction</className>
<clazz>com.j2fe.feeds.SuccessAction</clazz>
<persistent>false</persistent>
<value id="626" type="com.j2fe.feeds.SuccessAction">LEAVE</value>
</value>
</entry>
<entry>
<key id="627" type="java.lang.String">considerOnlyDateNewInstr</key>
<value id="628" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="629">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description id="630">This parameter is set true when only  date needs to be considered while quering the LAS_PROC_TMS column of EOIP table  .</description>
<persistent>false</persistent>
<value id="631" type="java.lang.Boolean">false</value>
</value>
</entry>
<entry>
<key id="632" type="java.lang.String">resetFailedParticipantsInSoi</key>
<value id="633" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="634">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description id="635">These flag indicates whether the user wants to reset the System Date of the particular Instrument in the SOI Group whose records have failed with severity 40/50 , so that they are picked up in next processing.</description>
<persistent>false</persistent>
<value idref="631"/>
</value>
</entry>
</variables>
<version>3</version>
</com.j2fe.workflow.definition.Workflow>
</businessobject>
</goldensource-package>
