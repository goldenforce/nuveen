<?xml version="1.0" encoding="UTF-8" standalone="no"?>
<goldensource-package version="8.8.1.34">
<package-comment/>
<businessobject displayString="48 - S3DestFolder_Parameter" type="com.j2fe.workflow.definition.Workflow">
<com.j2fe.workflow.definition.Workflow id="0">
<alwaysPersist>false</alwaysPersist>
<clustered>true</clustered>
<comment id="1">S3DestFolder_Parameter</comment>
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
<name id="20">upload to S3</name>
<nodeHandler>com.j2fe.general.activities.BeanShellScript</nodeHandler>
<nodeHandlerClass id="21">com.j2fe.general.activities.BeanShellScript</nodeHandlerClass>
<parameters id="22" type="java.util.HashSet">
<item id="23" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="24">statements</name>
<objectValue id="25" type="java.lang.String">import java.io.File;&#13;
&#13;
import java.io.File;&#13;
import java.io.FileWriter;&#13;
import java.io.IOException;&#13;
import java.text.SimpleDateFormat;&#13;
import java.util.Date;&#13;
&#13;
import com.amazonaws.services.s3.AmazonS3;&#13;
import com.amazonaws.services.s3.AmazonS3ClientBuilder;&#13;
import com.amazonaws.services.s3.model.ObjectMetadata;&#13;
import com.amazonaws.services.s3.model.PutObjectRequest;&#13;
&#13;
SimpleDateFormat format = new SimpleDateFormat("yyyyMMdd");&#13;
String sFormat = format.format(new Date());&#13;
String archiveDir = publishingDir.replace("done", "archive/");&#13;
&#13;
String bucketKey = prefix + "/" + entityName + "/" + (eod ? S3DestFolder  : "intraday/" + sFormat);  &#13;
AmazonS3 s3Client = AmazonS3ClientBuilder.standard()&#13;
		.withRegion(region)&#13;
		.build();&#13;
&#13;
File publishedDir = new File(publishingDir);&#13;
if(publishedDir.exists())&#13;
{&#13;
	File[] listOfFiles = publishedDir.listFiles();&#13;
	for(File file : listOfFiles)&#13;
	{&#13;
		if (file.length() &gt; 0)&#13;
		{&#13;
			PutObjectRequest request = new PutObjectRequest(bucketName, bucketKey + "/" + file.getName(), file);&#13;
			ObjectMetadata metadata = new ObjectMetadata();&#13;
			metadata.setContentType("application/jsonl");&#13;
			metadata.addUserMetadata("title", "GoldenSource Outbound Publishing Files");				&#13;
			request.setMetadata(metadata);&#13;
			s3Client.putObject(request);&#13;
		}&#13;
		if(deleteLocalCopy)&#13;
		{&#13;
			boolean success = file.renameTo(new File(archiveDir, file.getName()));&#13;
			//file.delete();&#13;
		}&#13;
	}&#13;
}&#13;
if(eod)&#13;
{&#13;
	File f = new File(publishedDir + File.separator + sFormat + ".done");&#13;
	FileWriter fw = new FileWriter(f);&#13;
	fw.write(sFormat);&#13;
	fw.flush();&#13;
	fw.close();&#13;
	PutObjectRequest request = new PutObjectRequest(bucketName, bucketKey + "/" + f.getName(), f);&#13;
	ObjectMetadata metadata = new ObjectMetadata();&#13;
	metadata.setContentType("application/jsonl");&#13;
	metadata.addUserMetadata("title", "GoldenSource Outbound Publishing Files");				&#13;
	request.setMetadata(metadata);&#13;
	s3Client.putObject(request);&#13;
	f.delete();&#13;
}</objectValue>
<type>CONSTANT</type>
</item>
<item id="26" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="27">["S3DestFolder"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="28">variables["S3DestFolder"]</name>
<stringValue id="29">S3DestFolder</stringValue>
<type>VARIABLE</type>
</item>
<item id="30" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="31">variables["archiveDir"]</name>
<stringValue id="32">ArchiveDirectory</stringValue>
<type>VARIABLE</type>
</item>
<item id="33" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="34">variables["bucketName"]</name>
<stringValue id="35">s3BucketName</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="36" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="37">variables["deleteLocalCopy"]</name>
<stringValue id="38">DeleteLocalCopy</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="39" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="40">variables["entityName"]</name>
<stringValue id="41">EntityName</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="42" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="43">variables["eod"]</name>
<stringValue id="44">IsEODPublishing</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="45" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="46">variables["prefix"]</name>
<stringValue id="47">s3Prefix</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="48" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="49">variables["publishingDir"]</name>
<stringValue id="50">PublishingDir</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="51" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="52">variables["region"]</name>
<stringValue id="53">s3Region</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
</parameters>
<sources id="54" type="java.util.HashSet">
<item id="55" type="com.j2fe.workflow.definition.Transition">
<name id="56">goto-next</name>
<source id="57">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="58">get System Properties</name>
<nodeHandler>com.j2fe.general.activities.BeanShellScript</nodeHandler>
<nodeHandlerClass id="59">com.j2fe.general.activities.BeanShellScript</nodeHandlerClass>
<parameters id="60" type="java.util.HashSet">
<item id="61" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="62">statements</name>
<stringValue id="63">import java.text.*;&#13;
&#13;
//get system properties for s3&#13;
String o_s3BucketName = System.getProperty(i_s3BucketName);&#13;
String o_s3Prefix = System.getProperty(i_s3Prefix);&#13;
String o_s3Region = System.getProperty(i_s3Region);&#13;
</stringValue>
<type>CONSTANT</type>
</item>
<item id="64" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="65">variables["i_s3BucketName"]</name>
<stringValue id="66">s3BucketName</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="67" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="68">variables["i_s3Prefix"]</name>
<stringValue id="69">s3Prefix</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="70" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="71">variables["i_s3Region"]</name>
<stringValue id="72">s3Region</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="73" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="74">variables["o_s3BucketName"]</name>
<stringValue id="75">s3BucketName</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="76" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="77">variables["o_s3Prefix"]</name>
<stringValue id="78">s3Prefix</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="79" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="80">variables["o_s3Region"]</name>
<stringValue id="81">s3Region</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
</parameters>
<sources id="82" type="java.util.HashSet">
<item id="83" type="com.j2fe.workflow.definition.Transition">
<name id="84">rows-found</name>
<source id="85">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="86">get Publishing Directory</name>
<nodeHandler>com.j2fe.general.activities.database.DBQuery</nodeHandler>
<nodeHandlerClass id="87">com.j2fe.general.activities.database.DBQuery</nodeHandlerClass>
<parameters id="88" type="java.util.HashSet">
<item id="89" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="90">database</name>
<stringValue id="91">jdbc/GSDM-1</stringValue>
<type>REFERENCE</type>
</item>
<item id="92" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="93">[0]@java/lang/Object@</UITypeHint>
<input>false</input>
<name id="94">firstColumnsResult[0]</name>
<stringValue id="95">PublishingDir</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="96" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="97">[0]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="98">indexedParameters[0]</name>
<stringValue id="99">SubscriptionName</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="100" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="101">querySQL</name>
<stringValue id="102">select dwds.downstream_dest_val_txt  from ft_cfg_sbdf sbdf , fT_cfg_sbdp sbdp , ft_t_dwds dwds&#13;
where  1=1&#13;
and sbdf.sbdf_oid = sbdp.sbdf_oid &#13;
and sbdp.dwds_oid  = dwds.dwds_oid &#13;
and sbdf.subscription_nme = ?</stringValue>
<type>CONSTANT</type>
</item>
</parameters>
<persistentVariables id="103" type="java.util.HashSet">
<item id="104" type="java.lang.String">PublishingDir
1000</item>
</persistentVariables>
<sources id="105" type="java.util.HashSet">
<item id="106" type="com.j2fe.workflow.definition.Transition">
<name id="107">goto-next</name>
<source id="108">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="109">Call Publishing</name>
<nodeHandler>com.j2fe.workflow.handler.impl.CallSubWorkflow</nodeHandler>
<nodeHandlerClass id="110">com.j2fe.workflow.handler.impl.CallSubWorkflow</nodeHandlerClass>
<parameters id="111" type="java.util.HashSet">
<item id="112" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="113">["AOIToleranceWindow"]@java/lang/Long@</UITypeHint>
<input>true</input>
<name id="114">input["AOIToleranceWindow"]</name>
<stringValue id="115">AOIToleranceWindow</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="116" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="117">["ColumnNameStoringPublishedFileName"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="118">input["ColumnNameStoringPublishedFileName"]</name>
<stringValue id="119">ColumnNameStoringPublishedFileName</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="120" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="121">["CreateSingleFile"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="122">input["CreateSingleFile"]</name>
<stringValue id="123">CreateSingleFile</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="124" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="125">["Database"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="126">input["Database"]</name>
<stringValue id="127">Database</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="128" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="129">["DateFormat"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="130">input["DateFormat"]</name>
<stringValue id="131">DateFormat</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="132" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="133">["DateFormatForPublishedData"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="134">input["DateFormatForPublishedData"]</name>
<stringValue id="135">DateFormatForPublishedData</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="136" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="137">["DateTimeFormatForPublishedData"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="138">input["DateTimeFormatForPublishedData"]</name>
<stringValue id="139">DateTimeFormatForPublishedData</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="140" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="141">["Delta with ADEL"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="142">input["Delta with ADEL"]</name>
<stringValue id="143">Delta with ADEL</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="144" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="145">["Email Session"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="146">input["Email Session"]</name>
<stringValue id="147">Email Session</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="148" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="149">["Email Subject"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="150">input["Email Subject"]</name>
<stringValue id="151">Email Subject</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="152" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="153">["Email Text"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="154">input["Email Text"]</name>
<stringValue id="155">Email Text</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="156" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="157">["FileNameToBeOverriden"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="158">input["FileNameToBeOverriden"]</name>
<stringValue id="159">FileNameToBeOverriden</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="160" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="161">["FilePerEntity"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="162">input["FilePerEntity"]</name>
<stringValue id="163">FilePerEntity</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="164" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="165">["FilterQueryMultiOccurringDataGroup"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="166">input["FilterQueryMultiOccurringDataGroup"]</name>
<stringValue id="167">FilterQueryMultiOccurringDataGroup</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="168" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="169">["GSOFieldToBeAppendedInFileName"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="170">input["GSOFieldToBeAppendedInFileName"]</name>
<stringValue id="171">GSOFieldToBeAppendedInFileName</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="172" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="173">["Group MultiOccurring Fields"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="174">input["Group MultiOccurring Fields"]</name>
<stringValue id="175">Group MultiOccurring Fields</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="176" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="177">["IsJMSConnectionXA"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="178">input["IsJMSConnectionXA"]</name>
<stringValue id="179">IsJMSConnectionXA</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="180" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="181">["JMSBulkSize"]@java/lang/Integer@</UITypeHint>
<input>true</input>
<name id="182">input["JMSBulkSize"]</name>
<stringValue id="183">JMSBulkSize</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="184" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="185">["MultiOccurringDataGroupQueryParameter"]@java/lang/Object@</UITypeHint>
<input>true</input>
<name id="186">input["MultiOccurringDataGroupQueryParameter"]</name>
<stringValue id="187">MultiOccurringDataGroupQueryParameter</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="188" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="189">["OID Generator Function"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="190">input["OID Generator Function"]</name>
<stringValue id="191">OID Generator Function</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="192" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="193">["On Demand VSH"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="194">input["On Demand VSH"]</name>
<stringValue id="195">On Demand VSH</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="196" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="197">["PublishDataOldCSVFormat"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="198">input["PublishDataOldCSVFormat"]</name>
<stringValue id="199">PublishDataOldCSVFormat</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="200" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="201">["PublishDataWithFailedRulesValidation"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="202">input["PublishDataWithFailedRulesValidation"]</name>
<stringValue id="203">PublishDataWithFailedRulesValidation</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="204" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="205">["PublishingBulkSize"]@java/lang/Integer@</UITypeHint>
<input>true</input>
<name id="206">input["PublishingBulkSize"]</name>
<stringValue id="207">PublishingBulkSize</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="208" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="209">["PublishingPriorityNumber"]@java/lang/Integer@</UITypeHint>
<input>true</input>
<name id="210">input["PublishingPriorityNumber"]</name>
<stringValue id="211">PublishingPriorityNumber</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="212" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="213">["QueryParameter"]@java/lang/Object@</UITypeHint>
<input>true</input>
<name id="214">input["QueryParameter"]</name>
<stringValue id="215">QueryParameter</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="216" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="217">["RestCall"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="218">input["RestCall"]</name>
<stringValue id="219">RestCall</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="220" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="221">["SQSMessageAttributes"]@java/lang/Object@</UITypeHint>
<input>true</input>
<name id="222">input["SQSMessageAttributes"]</name>
<stringValue id="223">SQSMessageAttributes</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="224" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="225">["SQSQueueType"]@com/j2fe/general/activities/QueueType@</UITypeHint>
<input>true</input>
<name id="226">input["SQSQueueType"]</name>
<stringValue id="227">SQSQueueType</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="228" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="229">["SearchKeyForElasticSearch"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="230">input["SearchKeyForElasticSearch"]</name>
<stringValue id="231">SearchKeyForElasticSearch</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="232" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="233">["Senders Email"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="234">input["Senders Email"]</name>
<stringValue id="235">Senders Email</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="236" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="237">["Separator"]@com/thegoldensource/publishing/activity/ConvertBusinessEntity$Separator@</UITypeHint>
<input>true</input>
<name id="238">input["Separator"]</name>
<stringValue id="239">Separator</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="240" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="241">["StorePublishedMessageToPBDP"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="242">input["StorePublishedMessageToPBDP"]</name>
<stringValue id="243">StorePublishedMessageToPBDP</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="244" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="245">["SubscriptionName"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="246">input["SubscriptionName"]</name>
<stringValue id="247">SubscriptionName</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="248" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="249">["TimeZoneForPublishing"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="250">input["TimeZoneForPublishing"]</name>
<stringValue id="251">TimeZoneForPublishing</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="252" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="253">["UICall"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="254">input["UICall"]</name>
<stringValue id="255">UICall</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="256" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="257">["WorkflowParameterPropertiesFile"]@java/net/URI@</UITypeHint>
<input>true</input>
<name id="258">input["WorkflowParameterPropertiesFile"]</name>
<stringValue id="259">WorkflowParameterPropertiesFile</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="260" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="261">["XMLCoveringHeaderTag"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="262">input["XMLCoveringHeaderTag"]</name>
<stringValue id="263">XMLCoveringHeaderTag</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="264" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="265">["addCorrelationHeader"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="266">input["addCorrelationHeader"]</name>
<stringValue id="267">addCorrelationHeader</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="268" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="269">["addCoveringXMLHeader"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="270">input["addCoveringXMLHeader"]</name>
<stringValue id="271">addCoveringXMLHeader</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="272" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="273">["addFirstDataGroupNameJSON"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="274">input["addFirstDataGroupNameJSON"]</name>
<stringValue id="275">addFirstDataGroupNameJSON</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="276" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="277">["addGSONameJSONRoot"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="278">input["addGSONameJSONRoot"]</name>
<stringValue id="279">addGSONameJSONRoot</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="280" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="281">["appendEOFLine"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="282">input["appendEOFLine"]</name>
<stringValue id="283">appendEOFLine</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="284" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="285">["bulkSize"]@java/lang/Integer@</UITypeHint>
<input>true</input>
<name id="286">input["bulkSize"]</name>
<stringValue id="287">bulkSize</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="288" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="289">["checkPublishingTimeAOIL"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="290">input["checkPublishingTimeAOIL"]</name>
<stringValue id="291">checkPublishingTimeAOIL</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="292" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="293">["dataPath"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="294">input["dataPath"]</name>
<stringValue id="295">dataPath</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="296" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="297">["enableValueTagJSON"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="298">input["enableValueTagJSON"]</name>
<stringValue id="299">enableValueTagJSON</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="300" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="301">["entityMode"]@com/thegoldensource/publishing/util/EntityMode@</UITypeHint>
<input>true</input>
<name id="302">input["entityMode"]</name>
<stringValue id="303">entityMode</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="304" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="305">["headerFieldProperty"]@com/thegoldensource/publishing/activity/ConvertBusinessEntity$HeaderFieldProperty@</UITypeHint>
<input>true</input>
<name id="306">input["headerFieldProperty"]</name>
<stringValue id="307">headerFieldProperty</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="308" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="309">["headerString"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="310">input["headerString"]</name>
<stringValue id="311">headerString</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="312" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="313">["inlineAOIProcessing"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="314">input["inlineAOIProcessing"]</name>
<stringValue id="315">inlineAOIProcessing</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="316" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="317">["jobId"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="318">input["jobId"]</name>
<stringValue id="319">jobId</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="320" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="321">["messageType"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="322">input["messageType"]</name>
<stringValue id="323">messageType</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="324" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="325">["modelName"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="326">input["modelName"]</name>
<stringValue id="327">modelName</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="328" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="329">["persistDQRulesExceptionsInTable"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="330">input["persistDQRulesExceptionsInTable"]</name>
<stringValue id="331">persistDQRulesExceptionsInTable</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="332" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="333">["processedEntityInfo"]@[Ljava/lang/String;@</UITypeHint>
<input>true</input>
<name id="334">input["processedEntityInfo"]</name>
<stringValue id="335">processedEntityInfo</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="336" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="337">["publishRelationName"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="338">input["publishRelationName"]</name>
<stringValue id="339">publishRelationName</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="340" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="341">["publishingMode"]@com/thegoldensource/subscription/PublishingMode@</UITypeHint>
<input>true</input>
<name id="342">input["publishingMode"]</name>
<stringValue id="343">publishingMode</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="344" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="345">["startRecordSequence"]@java/lang/Integer@</UITypeHint>
<input>true</input>
<name id="346">input["startRecordSequence"]</name>
<stringValue id="347">startRecordSequence</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="348" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="349">["subscriptionId"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="350">input["subscriptionId"]</name>
<stringValue id="351">subscriptionId</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="352" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="353">["transactionId"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="354">input["transactionId"]</name>
<stringValue id="355">transactionId</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="356" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="357">name</name>
<stringValue id="358">StandardSubscriptionPublishing</stringValue>
<type>CONSTANT</type>
</item>
<item id="359" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="360">output["Output"]</name>
<stringValue id="361">Output</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="362" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="363">output["PublishedFile"]</name>
<stringValue id="364">PublishedFile</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="365" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="366">output["PublishingQueryBindVariables"]</name>
<stringValue id="367">PublishingQueryBindVariables</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="368" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="369">output["Result"]</name>
<stringValue id="370">Result</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="371" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="372">output["SubscriptionInstanceID"]</name>
<stringValue id="373">SubscriptionInstanceID</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
</parameters>
<sources id="374" type="java.util.HashSet">
<item id="375" type="com.j2fe.workflow.definition.Transition">
<name id="376">goto-next</name>
<source id="377">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="378">Create Job </name>
<nodeHandler>com.j2fe.streetlamp.activities.CreateJob</nodeHandler>
<nodeHandlerClass id="379">com.j2fe.streetlamp.activities.CreateJob</nodeHandlerClass>
<parameters id="380" type="java.util.HashSet">
<item id="381" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="382">configInfo</name>
<stringValue id="383">JobConfigText</stringValue>
<type>VARIABLE</type>
</item>
<item id="384" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="385">jobId</name>
<stringValue id="386">ParentJobID</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
</parameters>
<persistentVariables id="387" type="java.util.HashSet">
<item id="388" type="java.lang.String">ParentJobID
1000</item>
</persistentVariables>
<sources id="389" type="java.util.HashSet">
<item id="390" type="com.j2fe.workflow.definition.Transition">
<name id="391">goto-next</name>
<source id="392">
<activation>ASYNCHRONOUS</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="393">Start</name>
<nodeHandler>com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandler>
<nodeHandlerClass id="394">com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandlerClass>
<sources id="395" type="java.util.HashSet"/>
<targets id="396" type="java.util.HashSet">
<item idref="390" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>START</type>
</source>
<target idref="377"/>
</item>
</sources>
<targets id="397" type="java.util.HashSet">
<item idref="375" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="108"/>
</item>
</sources>
<targets id="398" type="java.util.HashSet">
<item idref="106" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="85"/>
</item>
</sources>
<targets id="399" type="java.util.HashSet">
<item id="400" type="com.j2fe.workflow.definition.Transition">
<name id="401">nothing-found</name>
<source idref="85"/>
<target idref="9"/>
</item>
<item idref="83" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>XORSPLIT</type>
</source>
<target idref="57"/>
</item>
</sources>
<targets id="402" type="java.util.HashSet">
<item idref="55" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="19"/>
</item>
</sources>
<targets id="403" type="java.util.HashSet">
<item idref="17" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="9"/>
</item>
<item idref="400" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="404" type="java.util.HashSet">
<item idref="7" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="3"/>
</item>
</sources>
<targets id="405" type="java.util.HashSet"/>
<type>END</type>
</endNode>
<forcePurgeAtEnd>false</forcePurgeAtEnd>
<group id="406">Custom/Publishing</group>
<haltOnError>false</haltOnError>
<lastChangeUser id="407">user1</lastChangeUser>
<lastUpdate id="408">2024-08-19T13:28:13.000-0400</lastUpdate>
<name id="409">Nuveen_PublishingWrapper</name>
<optimize>true</optimize>
<parameter id="410" type="java.util.HashMap">
<entry>
<key id="411" type="java.lang.String">AOIToleranceWindow</key>
<value id="412" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="413">java.lang.Long</className>
<clazz>java.lang.Long</clazz>
<description id="414">Tolerance defined in milliseconds will be used in the query for identifying the universe. Entities that have been modified post the last successful run of this workflow are picked up for processing. This tolerance value will be subtracted from the last processing time in order to pick up even those entities that were modified before the last execution of the AOI Processing Workflow. Try to use a smaller tolerance window in order to avoid performance overhead.	</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="415" type="java.lang.String">ColumnNameStoringPublishedFileName</key>
<value id="416" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="417">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="418">This parameter is applicable only in case downstream is selected as a table.
This parameter provides name of the column which will store the published file name.</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="419" type="java.lang.String">CreateSingleFile</key>
<value id="420" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="421">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description id="422">When this parameter is set to true, only single file is created for publishing. 
If it is set to false, multiple files are created based on the bulk size and file per entity parameter settings.
The default value is set to false to avoid any impact on existing settings.</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="423" type="java.lang.String">Database</key>
<value id="424" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="425">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="426">Database</description>
<input>true</input>
<output>false</output>
<required>true</required>
</value>
</entry>
<entry>
<key id="427" type="java.lang.String">DateFormat</key>
<value id="428" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="429">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="430">DateFormat to be appended to the file name.</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="431" type="java.lang.String">DateFormatForPublishedData</key>
<value id="432" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="433">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="434">Date Format provided to Convert Busienss entity such as XML/CSV/JSON for publishing the dates in a specific format.
This format is applied to only those fields that are of type Date in schema.</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="435" type="java.lang.String">DateTimeFormatForPublishedData</key>
<value id="436" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="437">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="438">Date Time Format provided to Convert Busienss entity such as XML/CSV/JSON for publishing the dates in a specific format.
This format is applied to only those fields that are of type TimeStamp in the schema.</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="439" type="java.lang.String">DeleteLocalCopy</key>
<value id="440" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="441">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description idref="2"/>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="442" type="java.lang.String">Delta with ADEL</key>
<value id="443" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="444">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description id="445">In BATCH publishing, true will derive delta from ADEL-SBEX else from MSGP-SBEX.</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="446" type="java.lang.String">Email Session</key>
<value id="447" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="448">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="449">Email Session	</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="450" type="java.lang.String">Email Subject</key>
<value id="451" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="452">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="453">Email Subject to be provided</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="454" type="java.lang.String">Email Text</key>
<value id="455" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="456">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="457">Sample Email message to be sent.</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="458" type="java.lang.String">EntityName</key>
<value id="459" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="460">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<input>true</input>
<output>false</output>
<required>true</required>
</value>
</entry>
<entry>
<key id="461" type="java.lang.String">FileNameToBeOverriden</key>
<value id="462" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="463">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="464">Name of the published file to be overriden.
Suggestion is to specify the file name in publishing profile during creation since it provides an option to give the name of the file per downstream. 
If no file name is specified, file name is defaulted to PublishedFile.
If downstream level has file name defined, it is used for creating file name.
If this workflow level parameter is specified, it overrides above options and uses this parameter's value for creating file name.</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="465" type="java.lang.String">FilePerEntity</key>
<value id="466" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="467">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="468" type="java.lang.String">FilterQueryMultiOccurringDataGroup</key>
<value id="469" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="470">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="471">Query to filter multi occurring records based on an attributes from the DG.
Only EQL is supported. An example of a filter query on multi occurring data group as follows - Bonds.MarketListing(TradingCurrency='EUR')
The attributes used in this filter query are required to be part of the GSO/Template being used for Publishing.</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="472" type="java.lang.String">GSOFieldToBeAppendedInFileName</key>
<value id="473" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="474">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="475">Fully qualified path of the GSO field name from single occurring data group which will be looked up in the entity object and its value will be appended at the end of the file name. This property will work only in case of file per entity where file name needs to be prepared based on some unique identifier which can help in identifying the entity.
If this parameter is not provided, default behavior of file name + date + sequence number + theradId will be used for uniquely preparing every file.</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="476" type="java.lang.String">Group MultiOccurring Fields</key>
<value id="477" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="478">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description id="479">This flag if set to true will group multi-occurring fields under one tag</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="480" type="java.lang.String">IsEODPublishing</key>
<value id="481" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="482">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description idref="2"/>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="483" type="java.lang.String">IsJMSConnectionXA</key>
<value id="484" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="485">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description id="486">Default JMS connection is non XA. This parameter is provided for cases where clients configure JMS connections as XA.</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="487" type="java.lang.String">JMSBulkSize</key>
<value id="488" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="489">java.lang.Integer</className>
<clazz>java.lang.Integer</clazz>
<description id="490">JMSBulkSize</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="491" type="java.lang.String">JobConfigText</key>
<value id="492" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="493">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="494" type="java.lang.String">MultiOccurringDataGroupQueryParameter</key>
<value id="495" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="496">java.lang.Object</className>
<clazz>java.lang.Object</clazz>
<description id="497">It is a map of name-value pair which is used to replace the bind variables provided in the query defined in parameter 'Entity Conditions' of this activity. 
So for example, if Entity Conditions provided in the parameter is 'Bonds.MarketListing(TradingCurrency=:CURRENCY', then the Query Parameter map will hold one record with bind variable name as 'CURRENCY' and value as the value to be replaced for this bind variable(with its data type as Text).</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="498" type="java.lang.String">OID Generator Function</key>
<value id="499" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="500">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="501">This parameter is applicable when downstream is selected as a table.
This parameter provides the name of the function to be used for generating OID value.	</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="502" type="java.lang.String">On Demand VSH</key>
<value id="503" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="504">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description id="505">Flag to enable dynamic GC calculation. When set to true, golden copy entity will be derived dynamically based on VSH defined for a downstream.</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="506" type="java.lang.String">Output</key>
<value id="507" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="508">java.lang.String</className>
<clazz>java.lang.String</clazz>
<input>false</input>
<output>true</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="509" type="java.lang.String">PublishDataOldCSVFormat</key>
<value id="510" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="511">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description id="512">This flag is used to publish data in old csv format. The old CSV format repeated data for single occurring fields for every record of multi occurring data group.
By default, this flag is set to false to indicate that the published data will use new format unless specified.
The new format is designed based on the bulk format used by BB.</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="513" type="java.lang.String">PublishDataWithFailedRulesValidation</key>
<value id="514" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="515">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description id="516">This parameter decides whether to publish the data which failed drools rule validation. By default, it is set to false. If it is set to true, all the entities will be published irrespective of the status of the drools rules.</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="517" type="java.lang.String">PublishedFile</key>
<value id="518" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="519">java.lang.String</className>
<clazz>java.lang.String</clazz>
<input>false</input>
<output>true</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="520" type="java.lang.String">PublishingBulkSize</key>
<value id="521" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="522">java.lang.Integer</className>
<clazz>java.lang.Integer</clazz>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="523" type="java.lang.String">PublishingPriorityNumber</key>
<value id="524" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="525">java.lang.Integer</className>
<clazz>java.lang.Integer</clazz>
<description id="526">Publish only those records having the given priority number in AOIL. This parameter is introduced to handle SOI based publishing when using AOI</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="527" type="java.lang.String">PublishingQueryBindVariables</key>
<value id="528" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="529">java.lang.Object</className>
<clazz>java.lang.Object</clazz>
<description id="530">Start and Last record sequence numbers used in the Publishing Query when running NEAR REALTIME mode.</description>
<input>false</input>
<output>true</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="531" type="java.lang.String">QueryParameter</key>
<value id="532" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="533">java.lang.Object</className>
<clazz>java.lang.Object</clazz>
<description id="534">If EQL is used in the publishing profile, it can accept bind variables.
This map is a key-alue pair of bind variable name and its value to be replaced in the EQL</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="535" type="java.lang.String">RestCall</key>
<value id="536" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="537">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="538" type="java.lang.String">Result</key>
<value id="539" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="540">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="541">	</description>
<input>false</input>
<output>true</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="542" type="java.lang.String">S3DestFolder</key>
<value id="543" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="544">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="545">S3DestFolder</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="546" type="java.lang.String">SQSMessageAttributes</key>
<value id="547" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="548">java.lang.Object</className>
<clazz>java.lang.Object</clazz>
<description id="549">Map of message attributes when downstream is selected as SQS.
</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="550" type="java.lang.String">SQSQueueType</key>
<value id="551" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="552">com.j2fe.general.activities.QueueType</className>
<clazz>com.j2fe.general.activities.QueueType</clazz>
<description id="553">Type of queue defined when downstream is selected as SQS</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="554" type="java.lang.String">SearchKeyForElasticSearch</key>
<value id="555" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="556">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="557">Fully Qualified Name of the GSO Field. This field will be looked up in the entity object and the value of this field will be used as ID of the entity in Elastic Search.
e.g. Equity.InstrumentDetails.PreferredIdentifierValue - When entity is extracted from the database, value for this field will be used to check if the entity is already present in ES. If yes, update the snapshot for this entity else create a new entry in ES for this entity.</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="558" type="java.lang.String">Senders Email</key>
<value id="559" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="560">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="561">Sender's Email .This will be used only when PUBLISHING DESTINATION  is EMAIL.</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="562" type="java.lang.String">Separator</key>
<value id="563" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="564">com.thegoldensource.publishing.activity.ConvertBusinessEntity$Separator</className>
<clazz>com.thegoldensource.publishing.activity.ConvertBusinessEntity$Separator</clazz>
<description id="565">Separator to be used when reading the CSV file for populating table used as Downstream Destination.</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="566" type="java.lang.String">StorePublishedMessageToPBDP</key>
<value id="567" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="568">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description id="569">Boolean Parameter to store Published Message to PBDP</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="570" type="java.lang.String">SubscriptionInstanceID</key>
<value id="571" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="572">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="573">SubscriptionInstanceID</description>
<input>false</input>
<output>true</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="574" type="java.lang.String">SubscriptionName</key>
<value id="575" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="576">java.lang.String</className>
<clazz>java.lang.String</clazz>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="577" type="java.lang.String">TimeZoneForPublishing</key>
<value id="578" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="579">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="580">TimeZone provided to Convert Busienss entity such as XML/CSV/JSON for publishing the dates in a specific timezone.
This format is applied to only those fields that are of type TimeStamp in schema.</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="581" type="java.lang.String">UICall</key>
<value id="582" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="583">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="584" type="java.lang.String">WorkflowParameterPropertiesFile</key>
<value id="585" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="586">java.net.URI</className>
<clazz>java.net.URI</clazz>
<description id="587">Properties File specifying the workflow parameter values to be overriden.</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="588" type="java.lang.String">XMLCoveringHeaderTag</key>
<value id="589" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="590">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="591">XML header and Footer Tag to be added to the final published XML when CreateSingleFile parameter is set to true.</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="592" type="java.lang.String">addCorrelationHeader</key>
<value id="593" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="594">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description id="595">Add Correlation header to XML message. If this flag is true then correlation header will be added to XML message. Default value is false.</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="596" type="java.lang.String">addCoveringXMLHeader</key>
<value id="597" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="598">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description id="599">Add header at the start of the XML and footer at the end of the message.&#13;
This flag is set to false by default. When it is set to false, existing structure of the XML is preserved. When it is set to true, a header tag and a footer tag is added at the start and end of the XML message. In case of a CSV file, when this flag is set to true, only one header is added at the beginning of the file instead of adding the header for every record.</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="600" type="java.lang.String">addFirstDataGroupNameJSON</key>
<value id="601" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="602">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description id="603">This flag is set to true by default. When set to false, the first Data Group Name is not added to the JSON Output.</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="604" type="java.lang.String">addGSONameJSONRoot</key>
<value id="605" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="606">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description id="607">Add the name of the GSO or Entity at the beginning of the JSON string getting published. By default its value is true. If it is set to false, the GSO name is not added as root element.</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="608" type="java.lang.String">appendEOFLine</key>
<value id="609" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="610">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="611" type="java.lang.String">bulkSize</key>
<value id="612" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="613">java.lang.Integer</className>
<clazz>java.lang.Integer</clazz>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="614" type="java.lang.String">checkPublishingTimeAOIL</key>
<value id="615" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="616">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description id="617">Check Publishing TimeStamp of AOIL table when identifying the entities to be picked up for publishing</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="618" type="java.lang.String">dataPath</key>
<value id="619" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="620">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="621">Path of the node to be used for splitting published JSON.
An example of dataPath is - FULLINSTRUMENT/FullInstrument/ListingDetails</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="622" type="java.lang.String">enableValueTagJSON</key>
<value id="623" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="624">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description id="625">Add Value Tag in the JSON fields
This flag is set to true by default. When set to false, the value tag is not added to the JSON fields.</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="626" type="java.lang.String">entityMode</key>
<value id="627" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="628">com.thegoldensource.publishing.util.EntityMode</className>
<clazz>com.thegoldensource.publishing.util.EntityMode</clazz>
<description idref="2"/>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="629" type="java.lang.String">headerFieldProperty</key>
<value id="630" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="631">com.thegoldensource.publishing.activity.ConvertBusinessEntity$HeaderFieldProperty</className>
<clazz>com.thegoldensource.publishing.activity.ConvertBusinessEntity$HeaderFieldProperty</clazz>
<description id="632">In case of CSV type of publishing, the header of the CSV file can include the fully qualified name of the field, the label as displayed on the UI or the name of the field defined in the GSO.</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="633" type="java.lang.String">headerString</key>
<value id="634" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="635">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="636">This parameter will hold the comma separated header columns to be populated in the final file to be published.
This parameter is required since the transformation happens in multi threaded environment (in parallel).</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="637" type="java.lang.String">inlineAOIProcessing</key>
<value id="638" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="639">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description id="640">This flag indicates if AOI Processing is required to be run</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="641" type="java.lang.String">jobId</key>
<value id="642" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="643">java.lang.String</className>
<clazz>java.lang.String</clazz>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="644" type="java.lang.String">messageType</key>
<value id="645" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="646">java.lang.String</className>
<clazz>java.lang.String</clazz>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="647" type="java.lang.String">modelName</key>
<value id="648" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="649">java.lang.String</className>
<clazz>java.lang.String</clazz>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="650" type="java.lang.String">persistDQRulesExceptionsInTable</key>
<value id="651" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="652">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description id="653">If any DQ rules are attached to the publishing profile, exceptions raised by these rules are stored in NTEL table. User is provided with an option to avoid storing exceptions to reduce performance overhead. The default value of this flag is false to avoid storing exceptions.</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="654" type="java.lang.String">processedEntityInfo</key>
<value id="655" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="656">[Ljava.lang.String;</className>
<clazz>[Ljava.lang.String;</clazz>
<description id="657">Details of the entities processed by Standard File Load such as entity oid, entity type etc.</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="658" type="java.lang.String">publishRelationName</key>
<value id="659" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="660">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description id="661">Publish name of the relation as displayed in the GSO Designer or publish only name of the datagroup. 
When this flag is set to true, the published data will include the name of the relation as displayed in the GSO Designer along with data group name.
When this flag is set to false, only the data group name of the related entity will be published.
By default, this flag is set to false to avoid any impact on the existing implementtions.	</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="662" type="java.lang.String">publishingMode</key>
<value id="663" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="664">com.thegoldensource.subscription.PublishingMode</className>
<clazz>com.thegoldensource.subscription.PublishingMode</clazz>
<description idref="2"/>
<input>true</input>
<output>false</output>
<required>true</required>
</value>
</entry>
<entry>
<key id="665" type="java.lang.String">s3BucketName</key>
<value id="666" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="667">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="668" type="java.lang.String">s3Prefix</key>
<value id="669" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="670">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="671" type="java.lang.String">s3Region</key>
<value id="672" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="673">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="674" type="java.lang.String">startRecordSequence</key>
<value id="675" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="676">java.lang.Integer</className>
<clazz>java.lang.Integer</clazz>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="677" type="java.lang.String">subscriptionId</key>
<value id="678" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="679">java.lang.String</className>
<clazz>java.lang.String</clazz>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="680" type="java.lang.String">transactionId</key>
<value id="681" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="682">java.lang.String</className>
<clazz>java.lang.String</clazz>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
</parameter>
<permissions id="683" type="java.util.HashSet"/>
<priority>50</priority>
<purgeAtEnd>true</purgeAtEnd>
<retries>0</retries>
<startNode idref="392"/>
<status>RELEASED</status>
<variables id="684" type="java.util.HashMap">
<entry>
<key id="685" type="java.lang.String">AOIToleranceWindow</key>
<value id="686" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="687">java.lang.Long</className>
<clazz>java.lang.Long</clazz>
<description id="688">Tolerance defined in milliseconds will be used in the query for identifying the universe. Entities that have been modified post the last successful run of this workflow are picked up for processing. This tolerance value will be subtracted from the last processing time in order to pick up even those entities that were modified before the last execution of the AOI Processing Workflow. Try to use a smaller tolerance window in order to avoid performance overhead.	</description>
<persistent>false</persistent>
<value id="689" type="java.lang.Long">0</value>
</value>
</entry>
<entry>
<key id="690" type="java.lang.String">ColumnNameStoringPublishedFileName</key>
<value id="691" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="692">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="693">This parameter is applicable only in case downstream is selected as a table.
This parameter provides name of the column which will store the published file name.</description>
<persistent>false</persistent>
<value id="694" type="java.lang.String">PUBLISHED_FILE_NME</value>
</value>
</entry>
<entry>
<key id="695" type="java.lang.String">CreateSingleFile</key>
<value id="696" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="697">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description id="698">When this parameter is set to true, only single file is created for publishing. 
If it is set to false, multiple files are created based on the bulk size and file per entity parameter settings.
The default value is set to false to avoid any impact on existing settings.</description>
<persistent>false</persistent>
<value id="699" type="java.lang.Boolean">false</value>
</value>
</entry>
<entry>
<key id="700" type="java.lang.String">Database</key>
<value id="701" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="702">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="703">Database</description>
<persistent>false</persistent>
<value id="704" type="java.lang.String">jdbc/GSDM-1</value>
</value>
</entry>
<entry>
<key id="705" type="java.lang.String">DateFormat</key>
<value id="706" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="707">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="708">DateFormat to be appended to the file name.</description>
<persistent>false</persistent>
<value id="709" type="java.lang.String">yyyyMMddHHmmssSSSSSSS</value>
</value>
</entry>
<entry>
<key id="710" type="java.lang.String">DateFormatForPublishedData</key>
<value id="711" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="712">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="713">Date Format provided to Convert Busienss entity such as XML/CSV/JSON for publishing the dates in a specific format.
This format is applied to only those fields that are of type Date in schema.</description>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="714" type="java.lang.String">DateTimeFormatForPublishedData</key>
<value id="715" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="716">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="717">Date Time Format provided to Convert Busienss entity such as XML/CSV/JSON for publishing the dates in a specific format.
This format is applied to only those fields that are of type TimeStamp in the schema.</description>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="718" type="java.lang.String">DeleteLocalCopy</key>
<value id="719" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="720">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description idref="2"/>
<persistent>false</persistent>
<value id="721" type="java.lang.Boolean">true</value>
</value>
</entry>
<entry>
<key id="722" type="java.lang.String">Delta with ADEL</key>
<value id="723" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="724">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description id="725">In BATCH publishing, true will derive delta from ADEL-SBEX else from MSGP-SBEX.</description>
<persistent>false</persistent>
<value idref="699"/>
</value>
</entry>
<entry>
<key id="726" type="java.lang.String">Email Session</key>
<value id="727" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="728">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="729">Email Session	</description>
<persistent>false</persistent>
<value id="730" type="java.lang.String">java/Mail</value>
</value>
</entry>
<entry>
<key id="731" type="java.lang.String">Email Subject</key>
<value id="732" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="733">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="734">Email Subject to be provided</description>
<persistent>false</persistent>
<value id="735" type="java.lang.String">Sample Message</value>
</value>
</entry>
<entry>
<key id="736" type="java.lang.String">Email Text</key>
<value id="737" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="738">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="739">Sample Email message to be sent.</description>
<persistent>false</persistent>
<value id="740" type="java.lang.String">Sample Message</value>
</value>
</entry>
<entry>
<key id="741" type="java.lang.String">EntityName</key>
<value id="742" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="743">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="744" type="java.lang.String">FileNameToBeOverriden</key>
<value id="745" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="746">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="747">Name of the published file to be overriden.
Suggestion is to specify the file name in publishing profile during creation since it provides an option to give the name of the file per downstream. 
If no file name is specified, file name is defaulted to PublishedFile.
If downstream level has file name defined, it is used for creating file name.
If this workflow level parameter is specified, it overrides above options and uses this parameter's value for creating file name.</description>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="748" type="java.lang.String">FilePerEntity</key>
<value id="749" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="750">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<persistent>false</persistent>
<value idref="699"/>
</value>
</entry>
<entry>
<key id="751" type="java.lang.String">FilterQueryMultiOccurringDataGroup</key>
<value id="752" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="753">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="754">Query to filter multi occurring records based on an attributes from the DG.
Only EQL is supported. An example of a filter query on multi occurring data group as follows - Bonds.MarketListing(TradingCurrency='EUR')
The attributes used in this filter query are required to be part of the GSO/Template being used for Publishing.</description>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="755" type="java.lang.String">GSOFieldToBeAppendedInFileName</key>
<value id="756" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="757">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="758">Fully qualified path of the GSO field name from single occurring data group which will be looked up in the entity object and its value will be appended at the end of the file name. This property will work only in case of file per entity where file name needs to be prepared based on some unique identifier which can help in identifying the entity.
If this parameter is not provided, default behavior of file name + date + sequence number + theradId will be used for uniquely preparing every file.</description>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="759" type="java.lang.String">Group MultiOccurring Fields</key>
<value id="760" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="761">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description id="762">This flag if set to true will group multi-occurring fields under one tag</description>
<persistent>false</persistent>
<value idref="699"/>
</value>
</entry>
<entry>
<key id="763" type="java.lang.String">IsEODPublishing</key>
<value id="764" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="765">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description idref="2"/>
<persistent>false</persistent>
<value idref="699"/>
</value>
</entry>
<entry>
<key id="766" type="java.lang.String">IsJMSConnectionXA</key>
<value id="767" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="768">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description id="769">Default JMS connection is non XA. This parameter is provided for cases where clients configure JMS connections as XA.</description>
<persistent>false</persistent>
<value idref="699"/>
</value>
</entry>
<entry>
<key id="770" type="java.lang.String">JMSBulkSize</key>
<value id="771" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="772">java.lang.Integer</className>
<clazz>java.lang.Integer</clazz>
<description id="773">JMSBulkSize</description>
<persistent>false</persistent>
<value id="774" type="java.lang.Integer">500</value>
</value>
</entry>
<entry>
<key id="775" type="java.lang.String">JobConfigText</key>
<value id="776" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="777">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="778" type="java.lang.String">MultiOccurringDataGroupQueryParameter</key>
<value id="779" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="780">java.lang.Object</className>
<clazz>java.lang.Object</clazz>
<description id="781">It is a map of name-value pair which is used to replace the bind variables provided in the query defined in parameter 'Entity Conditions' of this activity. 
So for example, if Entity Conditions provided in the parameter is 'Bonds.MarketListing(TradingCurrency=:CURRENCY', then the Query Parameter map will hold one record with bind variable name as 'CURRENCY' and value as the value to be replaced for this bind variable(with its data type as Text).</description>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="782" type="java.lang.String">OID Generator Function</key>
<value id="783" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="784">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="785">This parameter is applicable when downstream is selected as a table.
This parameter provides the name of the function to be used for generating OID value.	</description>
<persistent>false</persistent>
<value id="786" type="java.lang.String">NEW_OID()</value>
</value>
</entry>
<entry>
<key id="787" type="java.lang.String">On Demand VSH</key>
<value id="788" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="789">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description id="790">Flag to enable dynamic GC calculation. When set to true, golden copy entity will be derived dynamically based on VSH defined for a downstream.</description>
<persistent>false</persistent>
<value idref="699"/>
</value>
</entry>
<entry>
<key id="791" type="java.lang.String">Output</key>
<value id="792" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="793">java.lang.String</className>
<clazz>java.lang.String</clazz>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="794" type="java.lang.String">PublishDataOldCSVFormat</key>
<value id="795" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="796">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description id="797">This flag is used to publish data in old csv format. The old CSV format repeated data for single occurring fields for every record of multi occurring data group.
By default, this flag is set to false to indicate that the published data will use new format unless specified.
The new format is designed based on the bulk format used by BB.</description>
<persistent>false</persistent>
<value idref="699"/>
</value>
</entry>
<entry>
<key id="798" type="java.lang.String">PublishDataWithFailedRulesValidation</key>
<value id="799" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="800">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description id="801">This parameter decides whether to publish the data which failed drools rule validation. By default, it is set to false. If it is set to true, all the entities will be published irrespective of the status of the drools rules.</description>
<persistent>false</persistent>
<value idref="699"/>
</value>
</entry>
<entry>
<key id="802" type="java.lang.String">PublishedFile</key>
<value id="803" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="804">java.lang.String</className>
<clazz>java.lang.String</clazz>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="805" type="java.lang.String">PublishingBulkSize</key>
<value id="806" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="807">java.lang.Integer</className>
<clazz>java.lang.Integer</clazz>
<persistent>false</persistent>
<value id="808" type="java.lang.Integer">500</value>
</value>
</entry>
<entry>
<key id="809" type="java.lang.String">PublishingPriorityNumber</key>
<value id="810" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="811">java.lang.Integer</className>
<clazz>java.lang.Integer</clazz>
<description id="812">Publish only those records having the given priority number in AOIL. This parameter is introduced to handle SOI based publishing when using AOI</description>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="813" type="java.lang.String">PublishingQueryBindVariables</key>
<value id="814" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="815">java.lang.Object</className>
<clazz>java.lang.Object</clazz>
<description id="816">Start and Last record sequence numbers used in the Publishing Query when running NEAR REALTIME mode.</description>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="817" type="java.lang.String">QueryParameter</key>
<value id="818" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="819">java.lang.Object</className>
<clazz>java.lang.Object</clazz>
<description id="820">If EQL is used in the publishing profile, it can accept bind variables.
This map is a key-alue pair of bind variable name and its value to be replaced in the EQL</description>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="821" type="java.lang.String">RestCall</key>
<value id="822" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="823">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<persistent>false</persistent>
<value idref="699"/>
</value>
</entry>
<entry>
<key id="824" type="java.lang.String">Result</key>
<value id="825" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="826">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="827">	</description>
<persistent>false</persistent>
<value id="828" type="java.lang.String">Message Published successfully.</value>
</value>
</entry>
<entry>
<key id="829" type="java.lang.String">S3DestFolder</key>
<value id="830" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="831">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="832">S3DestFolder</description>
<persistent>false</persistent>
<value id="833" type="java.lang.String">eod</value>
</value>
</entry>
<entry>
<key id="834" type="java.lang.String">SQSMessageAttributes</key>
<value id="835" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="836">java.lang.Object</className>
<clazz>java.lang.Object</clazz>
<description id="837">Map of message attributes when downstream is selected as SQS.
</description>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="838" type="java.lang.String">SQSQueueType</key>
<value id="839" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="840">com.j2fe.general.activities.QueueType</className>
<clazz>com.j2fe.general.activities.QueueType</clazz>
<description id="841">Type of queue defined when downstream is selected as SQS</description>
<persistent>false</persistent>
<value id="842" type="com.j2fe.general.activities.QueueType">STANDARD</value>
</value>
</entry>
<entry>
<key id="843" type="java.lang.String">SearchKeyForElasticSearch</key>
<value id="844" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="845">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="846">Fully Qualified Name of the GSO Field. This field will be looked up in the entity object and the value of this field will be used as ID of the entity in Elastic Search.
e.g. Equity.InstrumentDetails.PreferredIdentifierValue - When entity is extracted from the database, value for this field will be used to check if the entity is already present in ES. If yes, update the snapshot for this entity else create a new entry in ES for this entity.</description>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="847" type="java.lang.String">Senders Email</key>
<value id="848" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="849">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="850">Sender's Email .This will be used only when PUBLISHING DESTINATION  is EMAIL.</description>
<persistent>false</persistent>
<value id="851" type="java.lang.String">no-reply@thegoldensource.com</value>
</value>
</entry>
<entry>
<key id="852" type="java.lang.String">Separator</key>
<value id="853" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="854">com.thegoldensource.publishing.activity.ConvertBusinessEntity$Separator</className>
<clazz>com.thegoldensource.publishing.activity.ConvertBusinessEntity$Separator</clazz>
<description id="855">Separator to be used when reading the CSV file for populating table used as Downstream Destination.</description>
<persistent>false</persistent>
<value id="856" type="com.thegoldensource.publishing.activity.ConvertBusinessEntity$Separator">COMMA</value>
</value>
</entry>
<entry>
<key id="857" type="java.lang.String">StorePublishedMessageToPBDP</key>
<value id="858" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="859">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description id="860">Boolean Parameter to store Published Message to PBDP</description>
<persistent>false</persistent>
<value idref="699"/>
</value>
</entry>
<entry>
<key id="861" type="java.lang.String">SubscriptionInstanceID</key>
<value id="862" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="863">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="864">SubscriptionInstanceID</description>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="865" type="java.lang.String">SubscriptionName</key>
<value id="866" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="867">java.lang.String</className>
<clazz>java.lang.String</clazz>
<persistent>true</persistent>
</value>
</entry>
<entry>
<key id="868" type="java.lang.String">TimeZoneForPublishing</key>
<value id="869" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="870">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="871">TimeZone provided to Convert Busienss entity such as XML/CSV/JSON for publishing the dates in a specific timezone.
This format is applied to only those fields that are of type TimeStamp in schema.</description>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="872" type="java.lang.String">UICall</key>
<value id="873" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="874">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<persistent>false</persistent>
<value idref="699"/>
</value>
</entry>
<entry>
<key id="875" type="java.lang.String">WorkflowParameterPropertiesFile</key>
<value id="876" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="877">java.net.URI</className>
<clazz>java.net.URI</clazz>
<description id="878">Properties File specifying the workflow parameter values to be overriden.</description>
<persistent>false</persistent>
<value id="879" type="java.net.URI">db://resource/PublishingConfiguration/WorkflowProperties.properties</value>
</value>
</entry>
<entry>
<key id="880" type="java.lang.String">XMLCoveringHeaderTag</key>
<value id="881" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="882">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="883">XML header and Footer Tag to be added to the final published XML when CreateSingleFile parameter is set to true.</description>
<persistent>false</persistent>
<value id="884" type="java.lang.String">ROOT</value>
</value>
</entry>
<entry>
<key id="885" type="java.lang.String">addCorrelationHeader</key>
<value id="886" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="887">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description id="888">Add Correlation header to XML message. If this flag is true then correlation header will be added to XML message. Default value is false.</description>
<persistent>false</persistent>
<value idref="721"/>
</value>
</entry>
<entry>
<key id="889" type="java.lang.String">addCoveringXMLHeader</key>
<value id="890" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="891">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description id="892">Add header at the start of the XML and footer at the end of the message.&#13;
This flag is set to false by default. When it is set to false, existing structure of the XML is preserved. When it is set to true, a header tag and a footer tag is added at the start and end of the XML message. In case of a CSV file, when this flag is set to true, only one header is added at the beginning of the file instead of adding the header for every record.</description>
<persistent>false</persistent>
<value idref="721"/>
</value>
</entry>
<entry>
<key id="893" type="java.lang.String">addFirstDataGroupNameJSON</key>
<value id="894" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="895">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description id="896">This flag is set to true by default. When set to false, the first Data Group Name is not added to the JSON Output.</description>
<persistent>false</persistent>
<value idref="721"/>
</value>
</entry>
<entry>
<key id="897" type="java.lang.String">addGSONameJSONRoot</key>
<value id="898" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="899">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description id="900">Add the name of the GSO or Entity at the beginning of the JSON string getting published. By default its value is true. If it is set to false, the GSO name is not added as root element.</description>
<persistent>false</persistent>
<value idref="721"/>
</value>
</entry>
<entry>
<key id="901" type="java.lang.String">appendEOFLine</key>
<value id="902" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="903">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<persistent>false</persistent>
<value idref="721"/>
</value>
</entry>
<entry>
<key id="904" type="java.lang.String">auditIdentifier</key>
<value id="905" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="906">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="907">auditIdentifier</description>
<persistent>true</persistent>
</value>
</entry>
<entry>
<key id="908" type="java.lang.String">bulkSize</key>
<value id="909" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="910">java.lang.Integer</className>
<clazz>java.lang.Integer</clazz>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="911" type="java.lang.String">checkPublishingTimeAOIL</key>
<value id="912" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="913">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description id="914">Check Publishing TimeStamp of AOIL table when identifying the entities to be picked up for publishing</description>
<persistent>false</persistent>
<value idref="699"/>
</value>
</entry>
<entry>
<key id="915" type="java.lang.String">dataPath</key>
<value id="916" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="917">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="918">Path of the node to be used for splitting published JSON.
An example of dataPath is - FULLINSTRUMENT/FullInstrument/ListingDetails</description>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="919" type="java.lang.String">enableValueTagJSON</key>
<value id="920" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="921">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description id="922">Add Value Tag in the JSON fields
This flag is set to true by default. When set to false, the value tag is not added to the JSON fields.</description>
<persistent>false</persistent>
<value idref="699"/>
</value>
</entry>
<entry>
<key id="923" type="java.lang.String">entityMode</key>
<value id="924" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="925">com.thegoldensource.publishing.util.EntityMode</className>
<clazz>com.thegoldensource.publishing.util.EntityMode</clazz>
<description idref="2"/>
<persistent>false</persistent>
<value id="926" type="com.thegoldensource.publishing.util.EntityMode">BUSINESS_ENTITY</value>
</value>
</entry>
<entry>
<key id="927" type="java.lang.String">headerFieldProperty</key>
<value id="928" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="929">com.thegoldensource.publishing.activity.ConvertBusinessEntity$HeaderFieldProperty</className>
<clazz>com.thegoldensource.publishing.activity.ConvertBusinessEntity$HeaderFieldProperty</clazz>
<description id="930">In case of CSV type of publishing, the header of the CSV file can include the fully qualified name of the field, the label as displayed on the UI or the name of the field defined in the GSO.</description>
<persistent>false</persistent>
<value id="931" type="com.thegoldensource.publishing.activity.ConvertBusinessEntity$HeaderFieldProperty">LABEL</value>
</value>
</entry>
<entry>
<key id="932" type="java.lang.String">headerString</key>
<value id="933" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="934">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="935">This parameter will hold the comma separated header columns to be populated in the final file to be published.
This parameter is required since the transformation happens in multi threaded environment (in parallel).</description>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="936" type="java.lang.String">inlineAOIProcessing</key>
<value id="937" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="938">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description id="939">This flag indicates if AOI Processing is required to be run</description>
<persistent>false</persistent>
<value idref="699"/>
</value>
</entry>
<entry>
<key id="940" type="java.lang.String">jobId</key>
<value id="941" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="942">java.lang.String</className>
<clazz>java.lang.String</clazz>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="943" type="java.lang.String">messageType</key>
<value id="944" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="945">java.lang.String</className>
<clazz>java.lang.String</clazz>
<persistent>true</persistent>
</value>
</entry>
<entry>
<key id="946" type="java.lang.String">modelName</key>
<value id="947" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="948">java.lang.String</className>
<clazz>java.lang.String</clazz>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="949" type="java.lang.String">persistDQRulesExceptionsInTable</key>
<value id="950" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="951">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description id="952">If any DQ rules are attached to the publishing profile, exceptions raised by these rules are stored in NTEL table. User is provided with an option to avoid storing exceptions to reduce performance overhead. The default value of this flag is false to avoid storing exceptions.</description>
<persistent>false</persistent>
<value idref="699"/>
</value>
</entry>
<entry>
<key id="953" type="java.lang.String">processedEntityInfo</key>
<value id="954" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="955">[Ljava.lang.String;</className>
<clazz>[Ljava.lang.String;</clazz>
<description id="956">Details of the entities processed by Standard File Load such as entity oid, entity type etc.</description>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="957" type="java.lang.String">publishRelationName</key>
<value id="958" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="959">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description id="960">Publish name of the relation as displayed in the GSO Designer or publish only name of the datagroup. 
When this flag is set to true, the published data will include the name of the relation as displayed in the GSO Designer along with data group name.
When this flag is set to false, only the data group name of the related entity will be published.
By default, this flag is set to false to avoid any impact on the existing implementtions.	</description>
<persistent>false</persistent>
<value idref="699"/>
</value>
</entry>
<entry>
<key id="961" type="java.lang.String">publishingDefCounter</key>
<value id="962" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="963">java.lang.Integer</className>
<clazz>java.lang.Integer</clazz>
<description id="964">publishingDefCounter</description>
<persistent>false</persistent>
<value id="965" type="java.lang.Integer">0</value>
</value>
</entry>
<entry>
<key id="966" type="java.lang.String">publishingDefs</key>
<value id="967" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="968">[Lcom.thegoldensource.publishing.util.PublishingDefinition;</className>
<clazz>[Lcom.thegoldensource.publishing.util.PublishingDefinition;</clazz>
<description id="969">Publishing Definitions</description>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="970" type="java.lang.String">publishingMode</key>
<value id="971" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="972">com.thegoldensource.subscription.PublishingMode</className>
<clazz>com.thegoldensource.subscription.PublishingMode</clazz>
<description idref="2"/>
<persistent>false</persistent>
<value id="973" type="com.thegoldensource.subscription.PublishingMode">BATCH</value>
</value>
</entry>
<entry>
<key id="974" type="java.lang.String">s3BucketName</key>
<value id="975" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="976">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="977" type="java.lang.String">s3Prefix</key>
<value id="978" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="979">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="980" type="java.lang.String">s3Region</key>
<value id="981" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="982">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="983" type="java.lang.String">startRecordSequence</key>
<value id="984" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="985">java.lang.Integer</className>
<clazz>java.lang.Integer</clazz>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="986" type="java.lang.String">subscriptionId</key>
<value id="987" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="988">java.lang.String</className>
<clazz>java.lang.String</clazz>
<persistent>true</persistent>
</value>
</entry>
<entry>
<key id="989" type="java.lang.String">threadId</key>
<value id="990" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="991">java.lang.Long</className>
<clazz>java.lang.Long</clazz>
<description id="992">Thread Id to be used for creating temporary files when CreateSingleFile parameter is true. Thread is used to avoid same Temp file being overwritten by multiple publishing workflows running at the same time.</description>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="993" type="java.lang.String">transactionId</key>
<value id="994" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="995">java.lang.String</className>
<clazz>java.lang.String</clazz>
<persistent>false</persistent>
</value>
</entry>
</variables>
<version>48</version>
</com.j2fe.workflow.definition.Workflow>
</businessobject>
</goldensource-package>
