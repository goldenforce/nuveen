<?xml version="1.0" encoding="UTF-8" standalone="no"?>
<goldensource-package version="8.8.1.52">
<package-comment>Parallel_Files_Process_set_as_1_and_trigger_file_write_disabled</package-comment>
<businessobject displayString="35 - Parallel_Files_Process_set_as_1_and_trigger_file_write_disabled" type="com.j2fe.workflow.definition.Workflow">
<com.j2fe.workflow.definition.Workflow id="0">
<alwaysPersist>false</alwaysPersist>
<clustered>true</clustered>
<comment id="1">Parallel_Files_Process_set_as_1_and_trigger_file_write_disabled</comment>
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
<name id="10">Upload trigger.done file</name>
<nodeHandler>com.j2fe.general.activities.BeanShellScript</nodeHandler>
<nodeHandlerClass id="11">com.j2fe.general.activities.BeanShellScript</nodeHandlerClass>
<parameters id="12" type="java.util.HashSet">
<item id="13" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="14">statements</name>
<stringValue id="15">import java.io.File;&#13;
import com.amazonaws.services.s3.AmazonS3;&#13;
import com.amazonaws.services.s3.AmazonS3ClientBuilder;&#13;
import com.amazonaws.services.s3.model.ObjectMetadata;&#13;
import com.amazonaws.services.s3.model.PutObjectRequest;&#13;
&#13;
AmazonS3 s3Client = AmazonS3ClientBuilder.standard().withRegion(S3BucketOutboundRegion).build();&#13;
&#13;
if(RAPIDCount&gt;0)&#13;
{&#13;
	File f = new File("trigger.done");&#13;
	f.createNewFile();&#13;
	PutObjectRequest request = new PutObjectRequest(S3BucketOutboundName, S3BucketOutboundPrefix + "/" + f.getName(), f);&#13;
	ObjectMetadata metadata = new ObjectMetadata();&#13;
	metadata.setContentType("application/jsonl");&#13;
	metadata.addUserMetadata("title", "GoldenSource RAPID Processed Confirmation");				&#13;
	request.setMetadata(metadata);&#13;
	s3Client.putObject(request);&#13;
	f.delete();&#13;
}</stringValue>
<type>CONSTANT</type>
</item>
<item id="16" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="17">["RAPIDCount"]@java/lang/Integer@</UITypeHint>
<input>true</input>
<name id="18">variables["RAPIDCount"]</name>
<objectValue id="19" type="java.lang.Integer">0</objectValue>
<type>CONSTANT</type>
</item>
<item id="20" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="21">["S3BucketOutboundName"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="22">variables["S3BucketOutboundName"]</name>
<stringValue id="23">S3BucketOutboundName</stringValue>
<type>VARIABLE</type>
</item>
<item id="24" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="25">["S3BucketOutboundPrefix"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="26">variables["S3BucketOutboundPrefix"]</name>
<stringValue id="27">S3BucketOutboundPrefix</stringValue>
<type>VARIABLE</type>
</item>
<item id="28" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="29">["S3BucketOutboundRegion"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="30">variables["S3BucketOutboundRegion"]</name>
<stringValue id="31">S3BucketOutboundRegion</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="32" type="java.util.HashSet">
<item id="33" type="com.j2fe.workflow.definition.Transition">
<name id="34">rows-found</name>
<source id="35">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="36">Check RAPID Count</name>
<nodeHandler>com.j2fe.general.activities.database.DBQuery</nodeHandler>
<nodeHandlerClass id="37">com.j2fe.general.activities.database.DBQuery</nodeHandlerClass>
<parameters id="38" type="java.util.HashSet">
<item id="39" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="40">database</name>
<stringValue id="41">jdbc/GSDM-1</stringValue>
<type>REFERENCE</type>
</item>
<item id="42" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="43">[0]@java/lang/Integer@</UITypeHint>
<input>false</input>
<name id="44">firstColumnsResult[0]</name>
<stringValue id="45">RAPIDCount</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="46" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="47">["1"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="48">mappedParameters["1"]</name>
<stringValue id="49">FilePatterns</stringValue>
<type>VARIABLE</type>
<variablePart id="50">[0]</variablePart>
</item>
<item id="51" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="52">["2"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="53">mappedParameters["2"]</name>
<stringValue id="54">MessageType</stringValue>
<type>VARIABLE</type>
</item>
<item id="55" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="56">querySQL</name>
<stringValue id="57">select sum(task_tot_cnt) as count from ft_t_jblg where job_input_txt ~ ? and job_msg_typ = ? and date_trunc('day', sysdate()) = date_trunc('day', job_start_tms) and job_end_tms is not null and job_stat_typ = 'CLOSED'</stringValue>
<type>CONSTANT</type>
</item>
</parameters>
<sources id="58" type="java.util.HashSet">
<item id="59" type="com.j2fe.workflow.definition.Transition">
<name id="60">goto-next</name>
<source id="61">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="62">Process Files in Directory</name>
<nodeHandler>com.j2fe.workflow.handler.impl.CallSubWorkflow</nodeHandler>
<nodeHandlerClass id="63">com.j2fe.workflow.handler.impl.CallSubWorkflow</nodeHandlerClass>
<parameters id="64" type="java.util.HashSet">
<item id="65" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="66">["Directory"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="67">input["Directory"]</name>
<stringValue id="68">DownloadDirectory</stringValue>
<type>VARIABLE</type>
</item>
<item id="69" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="70">["MessageType"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="71">input["MessageType"]</name>
<stringValue id="72">MessageType</stringValue>
<type>VARIABLE</type>
</item>
<item id="73" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="74">["NrOfFilesParallel"]@java/lang/Integer@</UITypeHint>
<input>true</input>
<name id="75">input["NrOfFilesParallel"]</name>
<objectValue id="76" type="java.lang.Integer">1</objectValue>
<type>CONSTANT</type>
</item>
<item id="77" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="78">["OutputDirectory"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="79">input["OutputDirectory"]</name>
<stringValue id="80">OutputDirectory</stringValue>
<type>VARIABLE</type>
</item>
<item id="81" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="82">["SuccessAction"]@com/j2fe/feeds/SuccessAction@</UITypeHint>
<input>true</input>
<name id="83">input["SuccessAction"]</name>
<objectValue id="84" type="com.j2fe.feeds.SuccessAction">MOVE</objectValue>
<type>CONSTANT</type>
</item>
<item id="85" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="86">name</name>
<stringValue id="87">Process Files in Directory</stringValue>
<type>CONSTANT</type>
</item>
</parameters>
<sources id="88" type="java.util.HashSet">
<item id="89" type="com.j2fe.workflow.definition.Transition">
<name id="90">goto-next</name>
<source id="91">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="92">S3FileListAndDownload</name>
<nodeHandler>com.j2fe.workflow.handler.impl.CallSubWorkflow</nodeHandler>
<nodeHandlerClass id="93">com.j2fe.workflow.handler.impl.CallSubWorkflow</nodeHandlerClass>
<parameters id="94" type="java.util.HashSet">
<item id="95" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="96">["BucketRegion"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="97">input["BucketRegion"]</name>
<stringValue id="98">S3BucketInboundRegion</stringValue>
<type>VARIABLE</type>
</item>
<item id="99" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="100">["DownloadDirectory"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="101">input["DownloadDirectory"]</name>
<stringValue id="102">DownloadDirectory</stringValue>
<type>VARIABLE</type>
</item>
<item id="103" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="104">["FetchNewFilesOnly"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="105">input["FetchNewFilesOnly"]</name>
<stringValue id="106">FetchNewFilesOnly</stringValue>
<type>VARIABLE</type>
</item>
<item id="107" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="108">["FilePatterns"]@[Ljava/lang/String;@</UITypeHint>
<input>true</input>
<name id="109">input["FilePatterns"]</name>
<stringValue id="110">FilePatterns</stringValue>
<type>VARIABLE</type>
</item>
<item id="111" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="112">["KeyPrefix"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="113">input["KeyPrefix"]</name>
<stringValue id="114">S3BucketInboundPrefix</stringValue>
<type>VARIABLE</type>
</item>
<item id="115" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="116">["ListAfter"]@java/util/Date@</UITypeHint>
<input>true</input>
<name id="117">input["ListAfter"]</name>
<stringValue id="118">ListAfter</stringValue>
<type>VARIABLE</type>
</item>
<item id="119" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="120">["S3BucketName"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="121">input["S3BucketName"]</name>
<stringValue id="122">S3BucketInboundName</stringValue>
<type>VARIABLE</type>
</item>
<item id="123" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="124">name</name>
<stringValue id="125">S3FileListAndDownload</stringValue>
<type>CONSTANT</type>
</item>
</parameters>
<sources id="126" type="java.util.HashSet">
<item id="127" type="com.j2fe.workflow.definition.Transition">
<name id="128">goto-next</name>
<source id="129">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>true</directJoin>
<name id="130">Synchronize </name>
<nodeHandler>com.j2fe.workflow.handler.impl.StandardAndJoinHandler</nodeHandler>
<nodeHandlerClass id="131">com.j2fe.workflow.handler.impl.StandardAndJoinHandler</nodeHandlerClass>
<sources id="132" type="java.util.HashSet">
<item id="133" type="com.j2fe.workflow.definition.Transition">
<name id="134">goto-next</name>
<source id="135">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="136">Fetch S3 Configuration From System Properties</name>
<nodeHandler>com.j2fe.general.activities.BeanShellScript</nodeHandler>
<nodeHandlerClass id="137">com.j2fe.general.activities.BeanShellScript</nodeHandlerClass>
<parameters id="138" type="java.util.HashSet">
<item id="139" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="140">statements</name>
<stringValue id="141">import java.text.*;&#13;
&#13;
//get system properties for s3&#13;
String o_s3BucketInboundName = System.getProperty(i_s3BucketInboundName,i_s3BucketInboundName);&#13;
String o_s3BucketInboundPrefix = System.getProperty(i_s3BucketInboundPrefix,i_s3BucketInboundPrefix);&#13;
String o_s3BucketInboundRegion = System.getProperty(i_s3BucketInboundRegion,i_s3BucketInboundRegion);&#13;
String o_s3BucketOutboundName = System.getProperty(i_s3BucketOutboundName,i_s3BucketOutboundName);&#13;
String o_s3BucketOutboundPrefix = System.getProperty(i_s3BucketOutboundPrefix,i_s3BucketOutboundPrefix);&#13;
String o_s3BucketOutboundRegion = System.getProperty(i_s3BucketOutboundRegion,i_s3BucketOutboundRegion);</stringValue>
<type>CONSTANT</type>
</item>
<item id="142" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="143">["i_s3BucketInboundName"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="144">variables["i_s3BucketInboundName"]</name>
<stringValue id="145">S3BucketInboundName</stringValue>
<type>VARIABLE</type>
</item>
<item id="146" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="147">["i_s3BucketInboundPrefix"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="148">variables["i_s3BucketInboundPrefix"]</name>
<stringValue id="149">S3BucketInboundPrefix</stringValue>
<type>VARIABLE</type>
</item>
<item id="150" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="151">["i_s3BucketInboundRegion"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="152">variables["i_s3BucketInboundRegion"]</name>
<stringValue id="153">S3BucketInboundRegion</stringValue>
<type>VARIABLE</type>
</item>
<item id="154" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="155">["i_s3BucketOutboundName"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="156">variables["i_s3BucketOutboundName"]</name>
<stringValue id="157">S3BucketOutboundName</stringValue>
<type>VARIABLE</type>
</item>
<item id="158" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="159">["i_s3BucketOutboundPrefix"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="160">variables["i_s3BucketOutboundPrefix"]</name>
<stringValue id="161">S3BucketOutboundPrefix</stringValue>
<type>VARIABLE</type>
</item>
<item id="162" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="163">["i_s3BucketOutboundRegion"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="164">variables["i_s3BucketOutboundRegion"]</name>
<stringValue id="165">S3BucketOutboundRegion</stringValue>
<type>VARIABLE</type>
</item>
<item id="166" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="167">["o_s3BucketInboundName"]@java/lang/String@</UITypeHint>
<input>false</input>
<name id="168">variables["o_s3BucketInboundName"]</name>
<stringValue id="169">S3BucketInboundName</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="170" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="171">["o_s3BucketInboundPrefix"]@java/lang/String@</UITypeHint>
<input>false</input>
<name id="172">variables["o_s3BucketInboundPrefix"]</name>
<stringValue id="173">S3BucketInboundPrefix</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="174" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="175">["o_s3BucketInboundRegion"]@java/lang/String@</UITypeHint>
<input>false</input>
<name id="176">variables["o_s3BucketInboundRegion"]</name>
<stringValue id="177">S3BucketInboundRegion</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="178" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="179">["o_s3BucketOutboundName"]@java/lang/String@</UITypeHint>
<input>false</input>
<name id="180">variables["o_s3BucketOutboundName"]</name>
<stringValue id="181">S3BucketOutboundName</stringValue>
<type>VARIABLE</type>
</item>
<item id="182" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="183">["o_s3BucketOutboundPrefix"]@java/lang/String@</UITypeHint>
<input>false</input>
<name id="184">variables["o_s3BucketOutboundPrefix"]</name>
<stringValue id="185">S3BucketOutboundPrefix</stringValue>
<type>VARIABLE</type>
</item>
<item id="186" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="187">["o_s3BucketOutboundRegion"]@java/lang/String@</UITypeHint>
<input>false</input>
<name id="188">variables["o_s3BucketOutboundRegion"]</name>
<stringValue id="189">S3BucketOutboundRegion</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="190" type="java.util.HashSet">
<item id="191" type="com.j2fe.workflow.definition.Transition">
<name id="192">Check S3 Configuration</name>
<source id="193">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>true</directJoin>
<name id="194">Simple Split </name>
<nodeHandler>com.j2fe.workflow.handler.impl.StandardAndSplitHandler</nodeHandler>
<nodeHandlerClass id="195">com.j2fe.workflow.handler.impl.StandardAndSplitHandler</nodeHandlerClass>
<sources id="196" type="java.util.HashSet">
<item id="197" type="com.j2fe.workflow.definition.Transition">
<name id="198">goto-next</name>
<source id="199">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="200">Start</name>
<nodeHandler>com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandler>
<nodeHandlerClass id="201">com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandlerClass>
<sources id="202" type="java.util.HashSet"/>
<targets id="203" type="java.util.HashSet">
<item idref="197" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>START</type>
</source>
<target idref="193"/>
</item>
</sources>
<targets id="204" type="java.util.HashSet">
<item id="205" type="com.j2fe.workflow.definition.Transition">
<name id="206">Check ListAfter</name>
<source idref="193"/>
<target id="207">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="208">Is ListAfter Null ?</name>
<nodeHandler>com.j2fe.general.activities.IsNull</nodeHandler>
<nodeHandlerClass id="209">com.j2fe.general.activities.IsNull</nodeHandlerClass>
<parameters id="210" type="java.util.HashSet">
<item id="211" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="212">input</name>
<stringValue id="213">ListAfter</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="214" type="java.util.HashSet">
<item idref="205" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="215" type="java.util.HashSet">
<item id="216" type="com.j2fe.workflow.definition.Transition">
<name id="217">false</name>
<source idref="207"/>
<target id="218">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="219">NOP </name>
<nodeHandler>com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandler>
<nodeHandlerClass id="220">com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandlerClass>
<sources id="221" type="java.util.HashSet">
<item idref="216" type="com.j2fe.workflow.definition.Transition"/>
<item id="222" type="com.j2fe.workflow.definition.Transition">
<name id="223">goto-next</name>
<source id="224">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="225">Initialize ListAfter Date</name>
<nodeHandler>com.j2fe.general.activities.BeanShellScript</nodeHandler>
<nodeHandlerClass id="226">com.j2fe.general.activities.BeanShellScript</nodeHandlerClass>
<parameters id="227" type="java.util.HashSet">
<item id="228" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="229">statements</name>
<stringValue id="230">import java.util.Date;&#13;
import java.time.LocalDate;&#13;
import java.time.format.DateTimeFormatter;&#13;
import java.text.ParseException;&#13;
import java.text.SimpleDateFormat;&#13;
&#13;
LocalDate ListAfterLocalDate = (DateString == null || DateString.isEmpty()) ? null : LocalDate.parse(DateString, DateTimeFormatter.BASIC_ISO_DATE);&#13;
Date ListAfterDate;&#13;
try {&#13;
	ListAfterDate = (ListAfterLocalDate == null) ? null : new SimpleDateFormat("yyyy-MM-dd").parse(ListAfterLocalDate.toString());&#13;
} catch (ParseException e) {&#13;
	e.printStackTrace();&#13;
}</stringValue>
<type>CONSTANT</type>
</item>
<item id="231" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="232">["DateString"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="233">variables["DateString"]</name>
<stringValue id="234">DateString</stringValue>
<type>VARIABLE</type>
</item>
<item id="235" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="236">["ListAfterDate"]@java/lang/Object@</UITypeHint>
<input>false</input>
<name id="237">variables["ListAfterDate"]</name>
<stringValue id="238">ListAfter</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
</parameters>
<sources id="239" type="java.util.HashSet">
<item id="240" type="com.j2fe.workflow.definition.Transition">
<name id="241">goto-next</name>
<source id="242">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="243">Fetch Date from JBLG</name>
<nodeHandler>com.j2fe.general.activities.database.DBQuery</nodeHandler>
<nodeHandlerClass id="244">com.j2fe.general.activities.database.DBQuery</nodeHandlerClass>
<parameters id="245" type="java.util.HashSet">
<item id="246" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="247">database</name>
<stringValue id="248">jdbc/GSDM-1</stringValue>
<type>REFERENCE</type>
</item>
<item id="249" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="250">firstColumnsResult[0]</name>
<stringValue id="251">DateString</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="252" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="253">["1,3"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="254">mappedParameters["1,3"]</name>
<stringValue id="255">FilePatterns</stringValue>
<type>VARIABLE</type>
<variablePart id="256">[0]</variablePart>
</item>
<item id="257" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="258">["2"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="259">mappedParameters["2"]</name>
<stringValue id="260">MessageType</stringValue>
<type>VARIABLE</type>
</item>
<item id="261" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="262">querySQL</name>
<stringValue id="263">select max(substring(substring(job_input_txt, ?), '\d{8}')) from ft_t_jblg where job_msg_typ = ? and job_stat_typ = 'CLOSED' and job_input_txt ~ ?</stringValue>
<type>CONSTANT</type>
</item>
</parameters>
<sources id="264" type="java.util.HashSet">
<item id="265" type="com.j2fe.workflow.definition.Transition">
<name id="266">true</name>
<source idref="207"/>
<target idref="242"/>
</item>
</sources>
<targets id="267" type="java.util.HashSet">
<item idref="240" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="224"/>
</item>
</sources>
<targets id="268" type="java.util.HashSet">
<item idref="222" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="218"/>
</item>
</sources>
<targets id="269" type="java.util.HashSet">
<item id="270" type="com.j2fe.workflow.definition.Transition">
<name id="271">goto-next</name>
<source idref="218"/>
<target idref="129"/>
</item>
</targets>
<type>ACTIVITY</type>
</target>
</item>
<item idref="265" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>XORSPLIT</type>
</target>
</item>
<item idref="191" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ANDSPLIT</type>
</source>
<target idref="135"/>
</item>
</sources>
<targets id="272" type="java.util.HashSet">
<item idref="133" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="129"/>
</item>
<item idref="270" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="273" type="java.util.HashSet">
<item idref="127" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ANDJOIN</type>
</source>
<target idref="91"/>
</item>
</sources>
<targets id="274" type="java.util.HashSet">
<item idref="89" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="61"/>
</item>
</sources>
<targets id="275" type="java.util.HashSet">
<item idref="59" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="35"/>
</item>
</sources>
<targets id="276" type="java.util.HashSet">
<item id="277" type="com.j2fe.workflow.definition.Transition">
<name id="278">nothing-found</name>
<source idref="35"/>
<target idref="3"/>
</item>
<item idref="33" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>XORSPLIT</type>
</source>
<target idref="9"/>
</item>
</sources>
<targets id="279" type="java.util.HashSet">
<item idref="7" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="3"/>
</item>
<item idref="277" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="280" type="java.util.HashSet"/>
<type>END</type>
</endNode>
<forcePurgeAtEnd>false</forcePurgeAtEnd>
<group id="281">Custom/S3</group>
<haltOnError>false</haltOnError>
<lastChangeUser id="282">user1</lastChangeUser>
<lastUpdate id="283">2023-12-14T21:08:07.000-0500</lastUpdate>
<name id="284">NRE_WF_S3BucketFilesProcess</name>
<optimize>true</optimize>
<parameter id="285" type="java.util.HashMap">
<entry>
<key id="286" type="java.lang.String">DownloadDirectory</key>
<value id="287" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="288">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="289" type="java.lang.String">FetchNewFilesOnly</key>
<value id="290" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="291">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description idref="2"/>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="292" type="java.lang.String">FilePatterns</key>
<value id="293" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="294">[Ljava.lang.String;</className>
<clazz>[Ljava.lang.String;</clazz>
<description idref="2"/>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="295" type="java.lang.String">ListAfter</key>
<value id="296" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="297">java.util.Date</className>
<clazz>java.util.Date</clazz>
<description idref="2"/>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="298" type="java.lang.String">MessageType</key>
<value id="299" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="300">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="301" type="java.lang.String">OutputDirectory</key>
<value id="302" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="303">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="304" type="java.lang.String">S3BucketInboundName</key>
<value id="305" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="306">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<input>true</input>
<output>false</output>
<required>true</required>
</value>
</entry>
<entry>
<key id="307" type="java.lang.String">S3BucketInboundPrefix</key>
<value id="308" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="309">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="310" type="java.lang.String">S3BucketInboundRegion</key>
<value id="311" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="312">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<input>true</input>
<output>false</output>
<required>true</required>
</value>
</entry>
<entry>
<key id="313" type="java.lang.String">S3BucketOutboundName</key>
<value id="314" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="315">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<input>true</input>
<output>false</output>
<required>true</required>
</value>
</entry>
<entry>
<key id="316" type="java.lang.String">S3BucketOutboundPrefix</key>
<value id="317" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="318">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="319" type="java.lang.String">S3BucketOutboundRegion</key>
<value id="320" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="321">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<input>true</input>
<output>false</output>
<required>true</required>
</value>
</entry>
</parameter>
<permissions id="322" type="java.util.HashSet"/>
<priority>50</priority>
<purgeAtEnd>false</purgeAtEnd>
<retries>0</retries>
<startNode idref="199"/>
<status>RELEASED</status>
<variables id="323" type="java.util.HashMap">
<entry>
<key id="324" type="java.lang.String">DownloadDirectory</key>
<value id="325" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="326">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="327" type="java.lang.String">FetchNewFilesOnly</key>
<value id="328" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="329">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description idref="2"/>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="330" type="java.lang.String">FilePatterns</key>
<value id="331" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="332">[Ljava.lang.String;</className>
<clazz>[Ljava.lang.String;</clazz>
<description idref="2"/>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="333" type="java.lang.String">ListAfter</key>
<value id="334" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="335">java.util.Date</className>
<clazz>java.util.Date</clazz>
<description idref="2"/>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="336" type="java.lang.String">MessageType</key>
<value id="337" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="338">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="339" type="java.lang.String">OutputDirectory</key>
<value id="340" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="341">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="342" type="java.lang.String">S3BucketInboundName</key>
<value id="343" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="344">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<persistent>false</persistent>
<value id="345" type="java.lang.String">s3bucketapprapidname</value>
</value>
</entry>
<entry>
<key id="346" type="java.lang.String">S3BucketInboundPrefix</key>
<value id="347" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="348">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<persistent>false</persistent>
<value id="349" type="java.lang.String">s3bucketapprapidprefix</value>
</value>
</entry>
<entry>
<key id="350" type="java.lang.String">S3BucketInboundRegion</key>
<value id="351" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="352">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<persistent>false</persistent>
<value id="353" type="java.lang.String">s3bucketapprapidregion</value>
</value>
</entry>
<entry>
<key id="354" type="java.lang.String">S3BucketOutboundName</key>
<value id="355" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="356">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<persistent>false</persistent>
<value id="357" type="java.lang.String">s3bucketapprapidoutboundname</value>
</value>
</entry>
<entry>
<key id="358" type="java.lang.String">S3BucketOutboundPrefix</key>
<value id="359" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="360">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<persistent>false</persistent>
<value id="361" type="java.lang.String">s3bucketapprapidoutboundprefix</value>
</value>
</entry>
<entry>
<key id="362" type="java.lang.String">S3BucketOutboundRegion</key>
<value id="363" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="364">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<persistent>false</persistent>
<value id="365" type="java.lang.String">s3bucketapprapidoutboundregion</value>
</value>
</entry>
</variables>
<version>35</version>
</com.j2fe.workflow.definition.Workflow>
</businessobject>
</goldensource-package>
