<?xml version="1.0" encoding="UTF-8" standalone="no"?>
<goldensource-package version="8.8.1.51">
<package-comment/>
<businessobject displayString="10 - 10302023 - get env variable for s3" type="com.j2fe.workflow.definition.Workflow">
<com.j2fe.workflow.definition.Workflow id="0">
<alwaysPersist>true</alwaysPersist>
<clustered>true</clustered>
<comment id="1">10302023 - get env variable for s3</comment>
<description id="2"/>
<endNode id="3">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="4">Stop</name>
<nodeHandler>com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandler>
<nodeHandlerClass id="5">com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandlerClass>
<persistentVariables id="6" type="java.util.HashSet">
<item id="7" type="java.lang.String">JobID
0100</item>
</persistentVariables>
<sources id="8" type="java.util.HashSet">
<item id="9" type="com.j2fe.workflow.definition.Transition">
<name id="10">goto-next</name>
<source id="11">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="12">Close Job</name>
<nodeHandler>com.j2fe.streetlamp.activities.CloseJob</nodeHandler>
<nodeHandlerClass id="13">com.j2fe.streetlamp.activities.CloseJob</nodeHandlerClass>
<parameters id="14" type="java.util.HashSet">
<item id="15" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="16">jobId</name>
<stringValue id="17">JobID</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="18" type="java.util.HashSet">
<item id="19" type="com.j2fe.workflow.definition.Transition">
<name id="20">goto-next</name>
<source id="21">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="22">upload to S3</name>
<nodeHandler>com.j2fe.general.activities.BeanShellScript</nodeHandler>
<nodeHandlerClass id="23">com.j2fe.general.activities.BeanShellScript</nodeHandlerClass>
<parameters id="24" type="java.util.HashSet">
<item id="25" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="26">statements</name>
<objectValue id="27" type="java.lang.String">import java.io.File;&#13;
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
&#13;
String bucketKey = prefix + "/" + entityName + "/" + (eod ? "eod" : "intraday/" + sFormat);  &#13;
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
		PutObjectRequest request = new PutObjectRequest(bucketName, bucketKey + "/" + file.getName(), file);&#13;
		ObjectMetadata metadata = new ObjectMetadata();&#13;
		metadata.setContentType("application/jsonl");&#13;
		metadata.addUserMetadata("title", "GoldenSource Outbound Publishing Files");				&#13;
		request.setMetadata(metadata);&#13;
		s3Client.putObject(request);&#13;
		if(deleteLocalCopy)&#13;
			file.delete();&#13;
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
<item id="28" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="29">variables["bucketName"]</name>
<stringValue id="30">s3BucketName</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="31" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="32">variables["deleteLocalCopy"]</name>
<stringValue id="33">DeleteLocalCopy</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="34" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="35">variables["entityName"]</name>
<stringValue id="36">EntityName</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="37" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="38">variables["eod"]</name>
<stringValue id="39">IsEODPublishing</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="40" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="41">variables["prefix"]</name>
<stringValue id="42">s3Prefix</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="43" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="44">variables["publishingDir"]</name>
<stringValue id="45">PublishingDir</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="46" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="47">variables["region"]</name>
<stringValue id="48">s3Region</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
</parameters>
<sources id="49" type="java.util.HashSet">
<item id="50" type="com.j2fe.workflow.definition.Transition">
<name id="51">rows-found</name>
<source id="52">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="53">get Publishing Directory</name>
<nodeHandler>com.j2fe.general.activities.database.DBQuery</nodeHandler>
<nodeHandlerClass id="54">com.j2fe.general.activities.database.DBQuery</nodeHandlerClass>
<parameters id="55" type="java.util.HashSet">
<item id="56" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="57">database</name>
<stringValue id="58">jdbc/GSDM-1</stringValue>
<type>REFERENCE</type>
</item>
<item id="59" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="60">[0]@java/lang/Object@</UITypeHint>
<input>false</input>
<name id="61">firstColumnsResult[0]</name>
<stringValue id="62">PublishingDir</stringValue>
<type>VARIABLE</type>
</item>
<item id="63" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="64">[0]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="65">indexedParameters[0]</name>
<stringValue id="66">SubscriptionName</stringValue>
<type>VARIABLE</type>
</item>
<item id="67" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="68">querySQL</name>
<stringValue id="69">select dwds.downstream_dest_val_txt  from ft_cfg_sbdf sbdf , fT_cfg_sbdp sbdp , ft_t_dwds dwds&#13;
where  1=1&#13;
and sbdf.sbdf_oid = sbdp.sbdf_oid &#13;
and sbdp.dwds_oid  = dwds.dwds_oid &#13;
and sbdf.subscription_nme = ?</stringValue>
<type>CONSTANT</type>
</item>
</parameters>
<sources id="70" type="java.util.HashSet">
<item id="71" type="com.j2fe.workflow.definition.Transition">
<name id="72">goto-next</name>
<source id="73">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="74">Standard Publishing WKF</name>
<nodeHandler>com.j2fe.workflow.handler.impl.CallSubWorkflow</nodeHandler>
<nodeHandlerClass id="75">com.j2fe.workflow.handler.impl.CallSubWorkflow</nodeHandlerClass>
<parameters id="76" type="java.util.HashSet">
<item id="77" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="78">["CSV Separator"]@com/thegoldensource/publishing/activity/ConvertBusinessEntity$Separator@</UITypeHint>
<input>true</input>
<name id="79">input["CSV Separator"]</name>
<stringValue id="80">CSV Separator</stringValue>
<type>VARIABLE</type>
</item>
<item id="81" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="82">["Configuration File"]@java/net/URI@</UITypeHint>
<input>true</input>
<name id="83">input["Configuration File"]</name>
<stringValue id="84">Configuration File</stringValue>
<type>VARIABLE</type>
</item>
<item id="85" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="86">["Database"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="87">input["Database"]</name>
<stringValue id="88">Database</stringValue>
<type>VARIABLE</type>
</item>
<item id="89" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="90">["DateFormat"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="91">input["DateFormat"]</name>
<stringValue id="92">DateFormat</stringValue>
<type>VARIABLE</type>
</item>
<item id="93" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="94">["DateFormatForPublishedData"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="95">input["DateFormatForPublishedData"]</name>
<stringValue id="96">DateFormatForPublishedData</stringValue>
<type>VARIABLE</type>
</item>
<item id="97" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="98">["DateTimeFormatForPublishedData"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="99">input["DateTimeFormatForPublishedData"]</name>
<stringValue id="100">DateTimeFormatForPublishedData</stringValue>
<type>VARIABLE</type>
</item>
<item id="101" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="102">["Email Session"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="103">input["Email Session"]</name>
<stringValue id="104">Email Session</stringValue>
<type>VARIABLE</type>
</item>
<item id="105" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="106">["Email Subject"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="107">input["Email Subject"]</name>
<stringValue id="108">Email Subject</stringValue>
<type>VARIABLE</type>
</item>
<item id="109" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="110">["Email Text"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="111">input["Email Text"]</name>
<stringValue id="112">Email Text</stringValue>
<type>VARIABLE</type>
</item>
<item id="113" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="114">["FilePerEntity"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="115">input["FilePerEntity"]</name>
<stringValue id="116">FilePerEntity</stringValue>
<type>VARIABLE</type>
</item>
<item id="117" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="118">["Group MultiOccurring Fields"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="119">input["Group MultiOccurring Fields"]</name>
<stringValue id="120">Group MultiOccuring Field</stringValue>
<type>VARIABLE</type>
</item>
<item id="121" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="122">["JMS Connection Factory"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="123">input["JMS Connection Factory"]</name>
<stringValue id="124">JMS Connection Factory</stringValue>
<type>VARIABLE</type>
</item>
<item id="125" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="126">["JMSBulkSize"]@java/lang/Integer@</UITypeHint>
<input>true</input>
<name id="127">input["JMSBulkSize"]</name>
<stringValue id="128">JMSBulkSize</stringValue>
<type>VARIABLE</type>
</item>
<item id="129" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="130">["No. Of Parallel Branches"]@java/lang/Integer@</UITypeHint>
<input>true</input>
<name id="131">input["No. Of Parallel Branches"]</name>
<stringValue id="132">No. Of Parallel Branches</stringValue>
<type>VARIABLE</type>
</item>
<item id="133" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="134">["PublishDataWithFailedRulesValidation"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="135">input["PublishDataWithFailedRulesValidation"]</name>
<stringValue id="136">PublishDataWithFailedRulesValidation</stringValue>
<type>VARIABLE</type>
</item>
<item id="137" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="138">["PublishingBulkSize"]@java/lang/Integer@</UITypeHint>
<input>true</input>
<name id="139">input["PublishingBulkSize"]</name>
<stringValue id="140">PublishingBulkSize</stringValue>
<type>VARIABLE</type>
</item>
<item id="141" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="142">["PublishingFileName"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="143">input["PublishingFileName"]</name>
<stringValue id="144">PublishingFileName</stringValue>
<type>VARIABLE</type>
</item>
<item id="145" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="146">["QueryParameter"]@java/util/Map@</UITypeHint>
<input>true</input>
<name id="147">input["QueryParameter"]</name>
<stringValue id="148">QueryParameterMap</stringValue>
<type>VARIABLE</type>
</item>
<item id="149" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="150">["Senders Email"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="151">input["Senders Email"]</name>
<stringValue id="152">Senders Email</stringValue>
<type>VARIABLE</type>
</item>
<item id="153" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="154">["StorePublishedMessageToPBDP"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="155">input["StorePublishedMessageToPBDP"]</name>
<stringValue id="156">StorePublishedMessageToPBDP</stringValue>
<type>VARIABLE</type>
</item>
<item id="157" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="158">["String Quoting"]@com/thegoldensource/publishing/activity/ConvertBusinessEntity$StringQuoting@</UITypeHint>
<input>true</input>
<name id="159">input["String Quoting"]</name>
<stringValue id="160">String Quoting</stringValue>
<type>VARIABLE</type>
</item>
<item id="161" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="162">["SubscriptionName"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="163">input["SubscriptionName"]</name>
<stringValue id="164">SubscriptionName</stringValue>
<type>VARIABLE</type>
</item>
<item id="165" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="166">["addCorrelationHeader"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="167">input["addCorrelationHeader"]</name>
<stringValue id="168">addCorrelationHeader</stringValue>
<type>VARIABLE</type>
</item>
<item id="169" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="170">["addCoveringXMLHeader"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="171">input["addCoveringXMLHeader"]</name>
<stringValue id="172">addCoveringXMLHeader</stringValue>
<type>VARIABLE</type>
</item>
<item id="173" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="174">["addGSONameJSONRoot"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="175">input["addGSONameJSONRoot"]</name>
<stringValue id="176">addGSONameJSONRoot</stringValue>
<type>VARIABLE</type>
</item>
<item id="177" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="178">["appendEOFLine"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="179">input["appendEOFLine"]</name>
<stringValue id="180">appendEOFLine</stringValue>
<type>VARIABLE</type>
</item>
<item id="181" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="182">["bulkSize"]@java/lang/Integer@</UITypeHint>
<input>true</input>
<name id="183">input["bulkSize"]</name>
<stringValue id="184">bulkSize</stringValue>
<type>VARIABLE</type>
</item>
<item id="185" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="186">["entityMode"]@com/thegoldensource/publishing/util/EntityMode@</UITypeHint>
<input>true</input>
<name id="187">input["entityMode"]</name>
<stringValue id="188">entityMode</stringValue>
<type>VARIABLE</type>
</item>
<item id="189" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="190">["inlineAOIProcessing"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="191">input["inlineAOIProcessing"]</name>
<stringValue id="192">inlineAOIProcessing</stringValue>
<type>VARIABLE</type>
</item>
<item id="193" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="194">["jobId"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="195">input["jobId"]</name>
<stringValue id="196">jobid</stringValue>
<type>VARIABLE</type>
</item>
<item id="197" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="198">["messageType"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="199">input["messageType"]</name>
<stringValue id="200">messageType</stringValue>
<type>VARIABLE</type>
</item>
<item id="201" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="202">["modelName"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="203">input["modelName"]</name>
<stringValue id="204">modelName</stringValue>
<type>VARIABLE</type>
</item>
<item id="205" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="206">["processedEntityInfo"]@[Ljava/lang/String;@</UITypeHint>
<input>true</input>
<name id="207">input["processedEntityInfo"]</name>
<stringValue id="208">processedEntityInfo</stringValue>
<type>VARIABLE</type>
</item>
<item id="209" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="210">["publishingMode"]@com/thegoldensource/subscription/PublishingMode@</UITypeHint>
<input>true</input>
<name id="211">input["publishingMode"]</name>
<stringValue id="212">publishingMode</stringValue>
<type>VARIABLE</type>
</item>
<item id="213" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="214">["requireFullyQualifiedName"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="215">input["requireFullyQualifiedName"]</name>
<stringValue id="216">requireFullyQualifiedName</stringValue>
<type>VARIABLE</type>
</item>
<item id="217" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="218">["startRecordSequence"]@java/lang/Integer@</UITypeHint>
<input>true</input>
<name id="219">input["startRecordSequence"]</name>
<stringValue id="220">startRecordSequence</stringValue>
<type>VARIABLE</type>
</item>
<item id="221" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="222">["subscriptionId"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="223">input["subscriptionId"]</name>
<stringValue id="224">subscriptionId</stringValue>
<type>VARIABLE</type>
</item>
<item id="225" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="226">["transactionId"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="227">input["transactionId"]</name>
<stringValue id="228">transactionId</stringValue>
<type>VARIABLE</type>
</item>
<item id="229" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="230">name</name>
<stringValue id="231">StandardSubscriptionPublishing</stringValue>
<type>CONSTANT</type>
</item>
<item id="232" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="233">output["SubscriptionInstanceID"]</name>
<stringValue id="234">SubscriptionInstanceID</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="235" type="java.util.HashSet">
<item id="236" type="com.j2fe.workflow.definition.Transition">
<name id="237">goto-next</name>
<source id="238">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="239">PublishingFileName</name>
<nodeHandler>com.j2fe.general.activities.BeanShellScript</nodeHandler>
<nodeHandlerClass id="240">com.j2fe.general.activities.BeanShellScript</nodeHandlerClass>
<parameters id="241" type="java.util.HashSet">
<item id="242" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="243">statements</name>
<stringValue id="244">import com.thegoldensource.subscription.PublishedOutPutType;&#13;
import java.util.GregorianCalendar;&#13;
import org.apache.log4j.Logger;&#13;
import com.j2fe.general.activities.BeanShellScript;&#13;
import java.text.SimpleDateFormat;&#13;
import java.text.*;&#13;
&#13;
String nameOfFile =publishingFileName+"_" + new SimpleDateFormat(DateFormat).format(Calendar.getInstance().getTime());&#13;
&#13;
String jobConfigText = jobConfigText1 + currentUser;&#13;
&#13;
HashMap queryMapParam = new HashMap();&#13;
&#13;
queryMapParam.put("EntityOid", EntityOid);&#13;
&#13;
&#13;
//get system properties for s3&#13;
String o_s3BucketName = System.getProperty(i_s3BucketName);&#13;
String o_s3Prefix = System.getProperty(i_s3Prefix);&#13;
String o_s3Region = System.getProperty(i_s3Region);&#13;
</stringValue>
<type>CONSTANT</type>
</item>
<item id="245" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="246">["DateFormat"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="247">variables["DateFormat"]</name>
<stringValue id="248">DateFormat</stringValue>
<type>VARIABLE</type>
</item>
<item id="249" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="250">variables["EntityOid"]</name>
<stringValue id="251">EntityOid</stringValue>
<type>VARIABLE</type>
</item>
<item id="252" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="253">["currentUser"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="254">variables["currentUser"]</name>
<stringValue id="255">Current User</stringValue>
<type>VARIABLE</type>
</item>
<item id="256" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="257">variables["i_s3BucketName"]</name>
<stringValue id="258">s3BucketName</stringValue>
<type>VARIABLE</type>
</item>
<item id="259" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="260">variables["i_s3Prefix"]</name>
<stringValue id="261">s3Prefix</stringValue>
<type>VARIABLE</type>
</item>
<item id="262" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="263">variables["i_s3Region"]</name>
<stringValue id="264">s3Region</stringValue>
<type>VARIABLE</type>
</item>
<item id="265" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="266">variables["jobConfigText"]</name>
<stringValue id="267">JobConfigText</stringValue>
<type>VARIABLE</type>
</item>
<item id="268" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="269">["jobConfigText1"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="270">variables["jobConfigText1"]</name>
<stringValue id="271">JobConfigText</stringValue>
<type>VARIABLE</type>
</item>
<item id="272" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="273">variables["o_s3BucketName"]</name>
<stringValue id="274">s3BucketName</stringValue>
<type>VARIABLE</type>
</item>
<item id="275" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="276">variables["o_s3Prefix"]</name>
<stringValue id="277">s3Prefix</stringValue>
<type>VARIABLE</type>
</item>
<item id="278" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="279">variables["o_s3Region"]</name>
<stringValue id="280">s3Region</stringValue>
<type>VARIABLE</type>
</item>
<item id="281" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="282">["publishingFileName"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="283">variables["publishingFileName"]</name>
<stringValue id="284">PublishingFileName</stringValue>
<type>VARIABLE</type>
</item>
<item id="285" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="286">variables["queryMapParam"]</name>
<stringValue id="287">QueryParameterMap</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="288" type="java.util.HashSet">
<item id="289" type="com.j2fe.workflow.definition.Transition">
<name id="290">goto-next</name>
<source id="291">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="292">Create Job</name>
<nodeHandler>com.j2fe.streetlamp.activities.CreateJob</nodeHandler>
<nodeHandlerClass id="293">com.j2fe.streetlamp.activities.CreateJob</nodeHandlerClass>
<parameters id="294" type="java.util.HashSet">
<item id="295" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="296">configInfo</name>
<stringValue id="297">JobConfigText</stringValue>
<type>VARIABLE</type>
</item>
<item id="298" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="299">jobId</name>
<stringValue id="300">JobID</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<persistentVariables id="301" type="java.util.HashSet">
<item id="302" type="java.lang.String">JobID
1000</item>
</persistentVariables>
<sources id="303" type="java.util.HashSet">
<item id="304" type="com.j2fe.workflow.definition.Transition">
<name id="305">goto-next</name>
<source id="306">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="307">Construct Job Config Text</name>
<nodeHandler>com.j2fe.general.activities.BeanShellScript</nodeHandler>
<nodeHandlerClass id="308">com.j2fe.general.activities.BeanShellScript</nodeHandlerClass>
<parameters id="309" type="java.util.HashSet">
<item id="310" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="311">statements</name>
<stringValue id="312">
String jobConfigText = jobConfigText1 +" - "+ currentUser;
</stringValue>
<type>CONSTANT</type>
</item>
<item id="313" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="314">["currentUser"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="315">variables["currentUser"]</name>
<stringValue id="316">Current User</stringValue>
<type>VARIABLE</type>
</item>
<item id="317" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="318">variables["jobConfigText"]</name>
<stringValue id="319">JobConfigText</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="320" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="321">["jobConfigText1"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="322">variables["jobConfigText1"]</name>
<stringValue id="323">JobConfigText</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="324" type="java.util.HashSet">
<item id="325" type="com.j2fe.workflow.definition.Transition">
<name id="326">goto-next</name>
<source id="327">
<activation>ASYNCHRONOUS</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="328">Start</name>
<nodeHandler>com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandler>
<nodeHandlerClass id="329">com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandlerClass>
<sources id="330" type="java.util.HashSet"/>
<targets id="331" type="java.util.HashSet">
<item idref="325" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>START</type>
</source>
<target idref="306"/>
</item>
</sources>
<targets id="332" type="java.util.HashSet">
<item idref="304" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="291"/>
</item>
</sources>
<targets id="333" type="java.util.HashSet">
<item idref="289" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="238"/>
</item>
</sources>
<targets id="334" type="java.util.HashSet">
<item idref="236" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="73"/>
</item>
</sources>
<targets id="335" type="java.util.HashSet">
<item idref="71" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="52"/>
</item>
</sources>
<targets id="336" type="java.util.HashSet">
<item id="337" type="com.j2fe.workflow.definition.Transition">
<name id="338">nothing-found</name>
<source idref="52"/>
<target idref="11"/>
</item>
<item idref="50" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>XORSPLIT</type>
</source>
<target idref="21"/>
</item>
</sources>
<targets id="339" type="java.util.HashSet">
<item idref="19" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="11"/>
</item>
<item idref="337" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="340" type="java.util.HashSet">
<item idref="9" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="3"/>
</item>
</sources>
<targets id="341" type="java.util.HashSet"/>
<type>END</type>
</endNode>
<forcePurgeAtEnd>false</forcePurgeAtEnd>
<group id="342">Custom/Publishing</group>
<haltOnError>false</haltOnError>
<lastChangeUser id="343">ser_gs_gc</lastChangeUser>
<lastUpdate id="344">2023-11-02T02:12:23.000+0530</lastUpdate>
<name id="345">Nuveen_PublishInstrumentUI</name>
<optimize>true</optimize>
<parameter id="346" type="java.util.HashMap">
<entry>
<key id="347" type="java.lang.String">CSV Separator</key>
<value id="348" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="349">com.thegoldensource.publishing.activity.ConvertBusinessEntity$Separator</className>
<clazz>com.thegoldensource.publishing.activity.ConvertBusinessEntity$Separator</clazz>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="350" type="java.lang.String">Configuration File</key>
<value id="351" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="352">java.net.URI</className>
<clazz>java.net.URI</clazz>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="353" type="java.lang.String">Current User</key>
<value id="354" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="355">java.lang.String</className>
<clazz>java.lang.String</clazz>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="356" type="java.lang.String">Database</key>
<value id="357" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="358">java.lang.String</className>
<clazz>java.lang.String</clazz>
<input>true</input>
<output>false</output>
<required>true</required>
</value>
</entry>
<entry>
<key id="359" type="java.lang.String">DateFormat</key>
<value id="360" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="361">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="362">		</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="363" type="java.lang.String">DateFormatForPublishedData</key>
<value id="364" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="365">java.lang.String</className>
<clazz>java.lang.String</clazz>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="366" type="java.lang.String">DateTimeFormatForPublishedData</key>
<value id="367" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="368">java.lang.String</className>
<clazz>java.lang.String</clazz>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="369" type="java.lang.String">DeleteLocalCopy</key>
<value id="370" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="371">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description idref="2"/>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="372" type="java.lang.String">Email Session</key>
<value id="373" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="374">java.lang.String</className>
<clazz>java.lang.String</clazz>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="375" type="java.lang.String">Email Subject</key>
<value id="376" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="377">java.lang.String</className>
<clazz>java.lang.String</clazz>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="378" type="java.lang.String">Email Text</key>
<value id="379" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="380">java.lang.String</className>
<clazz>java.lang.String</clazz>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="381" type="java.lang.String">EntityName</key>
<value id="382" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="383">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="384" type="java.lang.String">EntityOid</key>
<value id="385" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="386">java.lang.String</className>
<clazz>java.lang.String</clazz>
<input>true</input>
<output>false</output>
<required>true</required>
</value>
</entry>
<entry>
<key id="387" type="java.lang.String">FilePerEntity</key>
<value id="388" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="389">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="390" type="java.lang.String">Group MultiOccuring Field</key>
<value id="391" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="392">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="393" type="java.lang.String">IsEODPublishing</key>
<value id="394" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="395">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description idref="2"/>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="396" type="java.lang.String">JMS Connection Factory</key>
<value id="397" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="398">java.lang.String</className>
<clazz>java.lang.String</clazz>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="399" type="java.lang.String">JMSBulkSize</key>
<value id="400" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="401">java.lang.Integer</className>
<clazz>java.lang.Integer</clazz>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="402" type="java.lang.String">JobConfigText</key>
<value id="403" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="404">java.lang.String</className>
<clazz>java.lang.String</clazz>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="405" type="java.lang.String">No. Of Parallel Branches</key>
<value id="406" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="407">java.lang.Integer</className>
<clazz>java.lang.Integer</clazz>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="408" type="java.lang.String">PublishDataWithFailedRulesValidation</key>
<value id="409" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="410">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="411" type="java.lang.String">PublishingBulkSize</key>
<value id="412" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="413">java.lang.Integer</className>
<clazz>java.lang.Integer</clazz>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="414" type="java.lang.String">PublishingDir</key>
<value id="415" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="416">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="417" type="java.lang.String">PublishingFileName</key>
<value id="418" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="419">java.lang.String</className>
<clazz>java.lang.String</clazz>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="420" type="java.lang.String">PublishingQueryBindVariables</key>
<value id="421" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="422">java.lang.Object</className>
<clazz>java.lang.Object</clazz>
<input>false</input>
<output>true</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="423" type="java.lang.String">Senders Email</key>
<value id="424" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="425">java.lang.String</className>
<clazz>java.lang.String</clazz>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="426" type="java.lang.String">StorePublishedMessageToPBDP</key>
<value id="427" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="428">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="429" type="java.lang.String">String Quoting</key>
<value id="430" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="431">com.thegoldensource.publishing.activity.ConvertBusinessEntity$StringQuoting</className>
<clazz>com.thegoldensource.publishing.activity.ConvertBusinessEntity$StringQuoting</clazz>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="432" type="java.lang.String">SubscriptionInstanceID</key>
<value id="433" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="434">java.lang.String</className>
<clazz>java.lang.String</clazz>
<input>false</input>
<output>true</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="435" type="java.lang.String">SubscriptionName</key>
<value id="436" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="437">java.lang.String</className>
<clazz>java.lang.String</clazz>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="438" type="java.lang.String">addCorrelationHeader</key>
<value id="439" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="440">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description idref="2"/>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="441" type="java.lang.String">addCoveringXMLHeader</key>
<value id="442" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="443">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="444" type="java.lang.String">addGSONameJSONRoot</key>
<value id="445" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="446">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description idref="2"/>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="447" type="java.lang.String">appendEOFLine</key>
<value id="448" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="449">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="450" type="java.lang.String">entityMode</key>
<value id="451" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="452">com.thegoldensource.publishing.util.EntityMode</className>
<clazz>com.thegoldensource.publishing.util.EntityMode</clazz>
<description idref="2"/>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="453" type="java.lang.String">inlineAOIProcessing</key>
<value id="454" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="455">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="456" type="java.lang.String">jobid</key>
<value id="457" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="458">java.lang.String</className>
<clazz>java.lang.String</clazz>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="459" type="java.lang.String">messageType</key>
<value id="460" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="461">java.lang.String</className>
<clazz>java.lang.String</clazz>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="462" type="java.lang.String">modelName</key>
<value id="463" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="464">java.lang.String</className>
<clazz>java.lang.String</clazz>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="465" type="java.lang.String">processedEntityInfo</key>
<value id="466" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="467">[Ljava.lang.String;</className>
<clazz>[Ljava.lang.String;</clazz>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="468" type="java.lang.String">publishingMode</key>
<value id="469" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="470">com.thegoldensource.subscription.PublishingMode</className>
<clazz>com.thegoldensource.subscription.PublishingMode</clazz>
<description idref="2"/>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="471" type="java.lang.String">requireFullyQualifiedName</key>
<value id="472" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="473">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<input>true</input>
<output>false</output>
<required>true</required>
</value>
</entry>
<entry>
<key id="474" type="java.lang.String">s3BucketName</key>
<value id="475" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="476">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="477" type="java.lang.String">s3Prefix</key>
<value id="478" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="479">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="480" type="java.lang.String">s3Region</key>
<value id="481" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="482">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="483" type="java.lang.String">startRecordSequence</key>
<value id="484" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="485">java.lang.Integer</className>
<clazz>java.lang.Integer</clazz>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="486" type="java.lang.String">subscriptionId</key>
<value id="487" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="488">java.lang.String</className>
<clazz>java.lang.String</clazz>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="489" type="java.lang.String">transactionId</key>
<value id="490" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="491">java.lang.String</className>
<clazz>java.lang.String</clazz>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
</parameter>
<permissions id="492" type="java.util.HashSet"/>
<priority>50</priority>
<purgeAtEnd>false</purgeAtEnd>
<retries>0</retries>
<startNode idref="327"/>
<status>RELEASED</status>
<variables id="493" type="java.util.HashMap">
<entry>
<key id="494" type="java.lang.String">CSV Separator</key>
<value id="495" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="496">com.thegoldensource.publishing.activity.ConvertBusinessEntity$Separator</className>
<clazz>com.thegoldensource.publishing.activity.ConvertBusinessEntity$Separator</clazz>
<persistent>false</persistent>
<value id="497" type="com.thegoldensource.publishing.activity.ConvertBusinessEntity$Separator">PIPE</value>
</value>
</entry>
<entry>
<key id="498" type="java.lang.String">Configuration File</key>
<value id="499" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="500">java.net.URI</className>
<clazz>java.net.URI</clazz>
<persistent>false</persistent>
<value id="501" type="java.net.URI">db://resource/tmp/config/tblMapping.txt</value>
</value>
</entry>
<entry>
<key id="502" type="java.lang.String">Current User</key>
<value id="503" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="504">java.lang.String</className>
<clazz>java.lang.String</clazz>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="505" type="java.lang.String">Database</key>
<value id="506" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="507">java.lang.String</className>
<clazz>java.lang.String</clazz>
<persistent>false</persistent>
<value id="508" type="java.lang.String">jdbc/GSDM-1</value>
</value>
</entry>
<entry>
<key id="509" type="java.lang.String">DateFormat</key>
<value id="510" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="511">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="512">		</description>
<persistent>false</persistent>
<value id="513" type="java.lang.String">yyyyMMddHHmmssSSSSSSS</value>
</value>
</entry>
<entry>
<key id="514" type="java.lang.String">DateFormatForPublishedData</key>
<value id="515" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="516">java.lang.String</className>
<clazz>java.lang.String</clazz>
<persistent>false</persistent>
<value id="517" type="java.lang.String">dd-MM-yyyy</value>
</value>
</entry>
<entry>
<key id="518" type="java.lang.String">DateTimeFormatForPublishedData</key>
<value id="519" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="520">java.lang.String</className>
<clazz>java.lang.String</clazz>
<persistent>false</persistent>
<value id="521" type="java.lang.String">dd-MM-yyyy</value>
</value>
</entry>
<entry>
<key id="522" type="java.lang.String">DeleteLocalCopy</key>
<value id="523" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="524">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description idref="2"/>
<persistent>false</persistent>
<value id="525" type="java.lang.Boolean">true</value>
</value>
</entry>
<entry>
<key id="526" type="java.lang.String">Email Session</key>
<value id="527" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="528">java.lang.String</className>
<clazz>java.lang.String</clazz>
<persistent>false</persistent>
<value id="529" type="java.lang.String">java/Mail</value>
</value>
</entry>
<entry>
<key id="530" type="java.lang.String">Email Subject</key>
<value id="531" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="532">java.lang.String</className>
<clazz>java.lang.String</clazz>
<persistent>false</persistent>
<value id="533" type="java.lang.String">Sample Message</value>
</value>
</entry>
<entry>
<key id="534" type="java.lang.String">Email Text</key>
<value id="535" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="536">java.lang.String</className>
<clazz>java.lang.String</clazz>
<persistent>false</persistent>
<value id="537" type="java.lang.String">Sample Message</value>
</value>
</entry>
<entry>
<key id="538" type="java.lang.String">EntityName</key>
<value id="539" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="540">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="541" type="java.lang.String">EntityOid</key>
<value id="542" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="543">java.lang.String</className>
<clazz>java.lang.String</clazz>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="544" type="java.lang.String">FilePerEntity</key>
<value id="545" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="546">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<persistent>false</persistent>
<value id="547" type="java.lang.Boolean">false</value>
</value>
</entry>
<entry>
<key id="548" type="java.lang.String">Group MultiOccuring Field</key>
<value id="549" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="550">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<persistent>false</persistent>
<value idref="547"/>
</value>
</entry>
<entry>
<key id="551" type="java.lang.String">IsEODPublishing</key>
<value id="552" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="553">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description idref="2"/>
<persistent>false</persistent>
<value idref="547"/>
</value>
</entry>
<entry>
<key id="554" type="java.lang.String">JMS Connection Factory</key>
<value id="555" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="556">java.lang.String</className>
<clazz>java.lang.String</clazz>
<persistent>false</persistent>
<value id="557" type="java.lang.String">jms/XAConnectionFactory</value>
</value>
</entry>
<entry>
<key id="558" type="java.lang.String">JMSBulkSize</key>
<value id="559" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="560">java.lang.Integer</className>
<clazz>java.lang.Integer</clazz>
<persistent>false</persistent>
<value id="561" type="java.lang.Integer">500</value>
</value>
</entry>
<entry>
<key id="562" type="java.lang.String">JobConfigText</key>
<value id="563" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="564">java.lang.String</className>
<clazz>java.lang.String</clazz>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="565" type="java.lang.String">No. Of Parallel Branches</key>
<value id="566" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="567">java.lang.Integer</className>
<clazz>java.lang.Integer</clazz>
<persistent>false</persistent>
<value id="568" type="java.lang.Integer">20</value>
</value>
</entry>
<entry>
<key id="569" type="java.lang.String">PublishDataWithFailedRulesValidation</key>
<value id="570" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="571">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<persistent>false</persistent>
<value idref="547"/>
</value>
</entry>
<entry>
<key id="572" type="java.lang.String">PublishingBulkSize</key>
<value id="573" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="574">java.lang.Integer</className>
<clazz>java.lang.Integer</clazz>
<persistent>false</persistent>
<value id="575" type="java.lang.Integer">500</value>
</value>
</entry>
<entry>
<key id="576" type="java.lang.String">PublishingDir</key>
<value id="577" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="578">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="579" type="java.lang.String">PublishingFileName</key>
<value id="580" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="581">java.lang.String</className>
<clazz>java.lang.String</clazz>
<persistent>false</persistent>
<value id="582" type="java.lang.String">PublishedFile</value>
</value>
</entry>
<entry>
<key id="583" type="java.lang.String">PublishingQueryBindVariables</key>
<value id="584" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="585">java.lang.Object</className>
<clazz>java.lang.Object</clazz>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="586" type="java.lang.String">Senders Email</key>
<value id="587" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="588">java.lang.String</className>
<clazz>java.lang.String</clazz>
<persistent>false</persistent>
<value id="589" type="java.lang.String">no-reply@thegoldensource.com</value>
</value>
</entry>
<entry>
<key id="590" type="java.lang.String">StorePublishedMessageToPBDP</key>
<value id="591" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="592">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<persistent>false</persistent>
<value idref="547"/>
</value>
</entry>
<entry>
<key id="593" type="java.lang.String">String Quoting</key>
<value id="594" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="595">com.thegoldensource.publishing.activity.ConvertBusinessEntity$StringQuoting</className>
<clazz>com.thegoldensource.publishing.activity.ConvertBusinessEntity$StringQuoting</clazz>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="596" type="java.lang.String">SubscriptionInstanceID</key>
<value id="597" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="598">java.lang.String</className>
<clazz>java.lang.String</clazz>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="599" type="java.lang.String">SubscriptionName</key>
<value id="600" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="601">java.lang.String</className>
<clazz>java.lang.String</clazz>
<persistent>true</persistent>
</value>
</entry>
<entry>
<key id="602" type="java.lang.String">addCorrelationHeader</key>
<value id="603" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="604">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description idref="2"/>
<persistent>false</persistent>
<value idref="547"/>
</value>
</entry>
<entry>
<key id="605" type="java.lang.String">addCoveringXMLHeader</key>
<value id="606" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="607">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<persistent>false</persistent>
<value idref="547"/>
</value>
</entry>
<entry>
<key id="608" type="java.lang.String">addGSONameJSONRoot</key>
<value id="609" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="610">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description idref="2"/>
<persistent>false</persistent>
<value idref="525"/>
</value>
</entry>
<entry>
<key id="611" type="java.lang.String">appendEOFLine</key>
<value id="612" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="613">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<persistent>false</persistent>
<value idref="547"/>
</value>
</entry>
<entry>
<key id="614" type="java.lang.String">auditIdentifier</key>
<value id="615" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="616">java.lang.String</className>
<clazz>java.lang.String</clazz>
<persistent>true</persistent>
</value>
</entry>
<entry>
<key id="617" type="java.lang.String">bulkSize</key>
<value id="618" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="619">java.lang.Integer</className>
<clazz>java.lang.Integer</clazz>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="620" type="java.lang.String">entityMode</key>
<value id="621" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="622">com.thegoldensource.publishing.util.EntityMode</className>
<clazz>com.thegoldensource.publishing.util.EntityMode</clazz>
<description idref="2"/>
<persistent>false</persistent>
<value id="623" type="com.thegoldensource.publishing.util.EntityMode">BUSINESS_ENTITY</value>
</value>
</entry>
<entry>
<key id="624" type="java.lang.String">inlineAOIProcessing</key>
<value id="625" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="626">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<persistent>false</persistent>
<value idref="547"/>
</value>
</entry>
<entry>
<key id="627" type="java.lang.String">jobid</key>
<value id="628" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="629">java.lang.String</className>
<clazz>java.lang.String</clazz>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="630" type="java.lang.String">messageType</key>
<value id="631" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="632">java.lang.String</className>
<clazz>java.lang.String</clazz>
<persistent>true</persistent>
</value>
</entry>
<entry>
<key id="633" type="java.lang.String">modelName</key>
<value id="634" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="635">java.lang.String</className>
<clazz>java.lang.String</clazz>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="636" type="java.lang.String">processedEntityInfo</key>
<value id="637" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="638">[Ljava.lang.String;</className>
<clazz>[Ljava.lang.String;</clazz>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="639" type="java.lang.String">publishingDefCounter</key>
<value id="640" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="641">java.lang.Integer</className>
<clazz>java.lang.Integer</clazz>
<persistent>false</persistent>
<value id="642" type="java.lang.Integer">0</value>
</value>
</entry>
<entry>
<key id="643" type="java.lang.String">publishingDefs</key>
<value id="644" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="645">com.thegoldensource.publishing.util.PublishingDefinition</className>
<clazz>com.thegoldensource.publishing.util.PublishingDefinition</clazz>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="646" type="java.lang.String">publishingMode</key>
<value id="647" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="648">com.thegoldensource.subscription.PublishingMode</className>
<clazz>com.thegoldensource.subscription.PublishingMode</clazz>
<description idref="2"/>
<persistent>false</persistent>
<value id="649" type="com.thegoldensource.subscription.PublishingMode">BATCH</value>
</value>
</entry>
<entry>
<key id="650" type="java.lang.String">requireFullyQualifiedName</key>
<value id="651" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="652">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<persistent>false</persistent>
<value idref="525"/>
</value>
</entry>
<entry>
<key id="653" type="java.lang.String">s3BucketName</key>
<value id="654" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="655">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="656" type="java.lang.String">s3Prefix</key>
<value id="657" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="658">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="659" type="java.lang.String">s3Region</key>
<value id="660" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="661">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="662" type="java.lang.String">startRecordSequence</key>
<value id="663" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="664">java.lang.Integer</className>
<clazz>java.lang.Integer</clazz>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="665" type="java.lang.String">subscriptionId</key>
<value id="666" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="667">java.lang.String</className>
<clazz>java.lang.String</clazz>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="668" type="java.lang.String">transactionId</key>
<value id="669" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="670">java.lang.String</className>
<clazz>java.lang.String</clazz>
<persistent>false</persistent>
</value>
</entry>
</variables>
<version>10</version>
</com.j2fe.workflow.definition.Workflow>
</businessobject>
</goldensource-package>
