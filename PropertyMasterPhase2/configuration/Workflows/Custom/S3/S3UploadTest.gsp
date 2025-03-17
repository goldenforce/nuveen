<?xml version="1.0" encoding="UTF-8" standalone="no"?>
<goldensource-package version="8.8.1.51">
<package-comment/>
<businessobject displayString="3 - lower case" type="com.j2fe.workflow.definition.Workflow">
<com.j2fe.workflow.definition.Workflow id="0">
<alwaysPersist>false</alwaysPersist>
<clustered>true</clustered>
<comment id="1">lower case</comment>
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
<name id="10">upload to S3</name>
<nodeHandler>com.j2fe.general.activities.BeanShellScript</nodeHandler>
<nodeHandlerClass id="11">com.j2fe.general.activities.BeanShellScript</nodeHandlerClass>
<parameters id="12" type="java.util.HashSet">
<item id="13" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="14">statements</name>
<objectValue id="15" type="java.lang.String">import java.io.File;&#13;
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
<item id="16" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="17">variables["bucketName"]</name>
<stringValue id="18">BucketName</stringValue>
<type>VARIABLE</type>
</item>
<item id="19" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="20">variables["deleteLocalCopy"]</name>
<stringValue id="21">DeleteLocalCopy</stringValue>
<type>VARIABLE</type>
</item>
<item id="22" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="23">variables["entityName"]</name>
<stringValue id="24">EntityName</stringValue>
<type>VARIABLE</type>
</item>
<item id="25" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="26">variables["eod"]</name>
<stringValue id="27">IsEODPublishing</stringValue>
<type>VARIABLE</type>
</item>
<item id="28" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="29">variables["prefix"]</name>
<stringValue id="30">Prefix</stringValue>
<type>VARIABLE</type>
</item>
<item id="31" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="32">variables["publishingDir"]</name>
<stringValue id="33">PublishingDir</stringValue>
<type>VARIABLE</type>
</item>
<item id="34" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="35">variables["region"]</name>
<stringValue id="36">Region</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="37" type="java.util.HashSet">
<item id="38" type="com.j2fe.workflow.definition.Transition">
<name id="39">goto-next</name>
<source id="40">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="41">Start</name>
<nodeHandler>com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandler>
<nodeHandlerClass id="42">com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandlerClass>
<sources id="43" type="java.util.HashSet"/>
<targets id="44" type="java.util.HashSet">
<item idref="38" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>START</type>
</source>
<target idref="9"/>
</item>
</sources>
<targets id="45" type="java.util.HashSet">
<item idref="7" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="3"/>
</item>
</sources>
<targets id="46" type="java.util.HashSet"/>
<type>END</type>
</endNode>
<forcePurgeAtEnd>false</forcePurgeAtEnd>
<group id="47">Custom/S3</group>
<haltOnError>false</haltOnError>
<lastChangeUser id="48">user1</lastChangeUser>
<lastUpdate id="49">2023-11-10T16:59:49.000+0530</lastUpdate>
<name id="50">S3UploadTest</name>
<optimize>true</optimize>
<parameter id="51" type="java.util.HashMap">
<entry>
<key id="52" type="java.lang.String">BucketName</key>
<value id="53" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="54">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<input>true</input>
<output>false</output>
<required>true</required>
</value>
</entry>
<entry>
<key id="55" type="java.lang.String">DeleteLocalCopy</key>
<value id="56" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="57">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description idref="2"/>
<input>true</input>
<output>false</output>
<required>true</required>
</value>
</entry>
<entry>
<key id="58" type="java.lang.String">EntityName</key>
<value id="59" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="60">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<input>true</input>
<output>false</output>
<required>true</required>
</value>
</entry>
<entry>
<key id="61" type="java.lang.String">IsEODPublishing</key>
<value id="62" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="63">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description id="64">default false representing UI adhoc publishing</description>
<input>true</input>
<output>false</output>
<required>true</required>
</value>
</entry>
<entry>
<key id="65" type="java.lang.String">Prefix</key>
<value id="66" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="67">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="68">Bucket prefix upto EntityName/ EOD or Intraday</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="69" type="java.lang.String">PublishingDir</key>
<value id="70" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="71">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="72">Local File based publishing directory</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="73" type="java.lang.String">Region</key>
<value id="74" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="75">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="76">Optional if it's the default region, else manatory.</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
</parameter>
<permissions id="77" type="java.util.HashSet"/>
<priority>50</priority>
<purgeAtEnd>true</purgeAtEnd>
<retries>0</retries>
<startNode idref="40"/>
<status>RELEASED</status>
<variables id="78" type="java.util.HashMap">
<entry>
<key id="79" type="java.lang.String">BucketName</key>
<value id="80" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="81">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="82" type="java.lang.String">DeleteLocalCopy</key>
<value id="83" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="84">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description idref="2"/>
<persistent>false</persistent>
<value id="85" type="java.lang.Boolean">true</value>
</value>
</entry>
<entry>
<key id="86" type="java.lang.String">EntityName</key>
<value id="87" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="88">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="89" type="java.lang.String">IsEODPublishing</key>
<value id="90" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="91">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description id="92">default false representing UI adhoc publishing</description>
<persistent>false</persistent>
<value id="93" type="java.lang.Boolean">false</value>
</value>
</entry>
<entry>
<key id="94" type="java.lang.String">Prefix</key>
<value id="95" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="96">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="97">Bucket prefix upto EntityName/ EOD or Intraday</description>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="98" type="java.lang.String">PublishingDir</key>
<value id="99" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="100">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="101">Local File based publishing directory</description>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="102" type="java.lang.String">Region</key>
<value id="103" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="104">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="105">Optional if it's the default region, else manatory.</description>
<persistent>false</persistent>
</value>
</entry>
</variables>
<version>3</version>
</com.j2fe.workflow.definition.Workflow>
</businessobject>
</goldensource-package>
