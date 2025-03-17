<?xml version="1.0" encoding="UTF-8" standalone="no"?>
<goldensource-package version="8.8.1.34">
<package-comment/>
<businessobject displayString="47 - FileList_Variable_persist" type="com.j2fe.workflow.definition.Workflow">
<com.j2fe.workflow.definition.Workflow id="0">
<alwaysPersist>true</alwaysPersist>
<clustered>true</clustered>
<comment id="1">FileList_Variable_persist</comment>
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
<name id="8">empty</name>
<source id="9">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="10">Array Helper </name>
<nodeHandler>com.j2fe.general.activities.ArrayHelper</nodeHandler>
<nodeHandlerClass id="11">com.j2fe.general.activities.ArrayHelper</nodeHandlerClass>
<parameters id="12" type="java.util.HashSet">
<item id="13" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="14">array</name>
<stringValue id="15">FileList</stringValue>
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
<name id="20">List S3 File</name>
<nodeHandler>com.j2fe.general.activities.BeanShellScript</nodeHandler>
<nodeHandlerClass id="21">com.j2fe.general.activities.BeanShellScript</nodeHandlerClass>
<parameters id="22" type="java.util.HashSet">
<item id="23" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="24">statements</name>
<objectValue id="25" type="java.lang.String">package com.j2fe.workstation.activities;&#13;
&#13;
import java.io.File;&#13;
import java.sql.Connection;&#13;
import java.sql.DriverManager;&#13;
import java.sql.PreparedStatement;&#13;
import java.sql.ResultSet;&#13;
import java.sql.SQLException;&#13;
import java.util.ArrayList;&#13;
import java.util.Calendar;&#13;
import java.util.Date;&#13;
import java.util.HashSet;&#13;
import java.util.List;&#13;
import java.util.Set;&#13;
import java.util.TimeZone;&#13;
&#13;
import org.apache.oro.io.GlobFilenameFilter;&#13;
&#13;
import com.amazonaws.services.s3.AmazonS3;&#13;
import com.amazonaws.services.s3.AmazonS3ClientBuilder;&#13;
import com.amazonaws.services.s3.model.ObjectListing;&#13;
import com.amazonaws.services.s3.model.S3ObjectSummary;&#13;
import com.j2fe.misc.ResourceUtils;&#13;
&#13;
// create s3 client&#13;
AmazonS3ClientBuilder builder = AmazonS3ClientBuilder.standard();&#13;
if(region != null &amp;&amp; !region.trim().isEmpty())&#13;
	builder = builder.withRegion(region);&#13;
AmazonS3 s3 = builder.build();&#13;
&#13;
// list all the objects in the bucket&#13;
List s3ObjectList = new ArrayList();&#13;
ObjectListing objects = s3.listObjects(bucketName);&#13;
s3ObjectList.addAll(objects.getObjectSummaries());&#13;
&#13;
while (objects.isTruncated()) &#13;
{&#13;
	objects = s3.listNextBatchOfObjects(objects);&#13;
	s3ObjectList.addAll(objects.getObjectSummaries());&#13;
}&#13;
&#13;
if (prefix != null &amp;&amp; prefix.trim().length() &gt; 0)&#13;
{&#13;
	List patternFiltered = new ArrayList();&#13;
	for (Object summary : s3ObjectList)&#13;
	{&#13;
		String key = ((S3ObjectSummary)summary).getKey();&#13;
		if (key.contains(prefix))&#13;
		{&#13;
			patternFiltered.add(summary);&#13;
		}&#13;
	}&#13;
	s3ObjectList = patternFiltered;&#13;
}&#13;
&#13;
if (filePatterns != null &amp;&amp; filePatterns.length &gt; 0)&#13;
{&#13;
	List patternFiltered = new ArrayList();&#13;
	Set dedupSet = new HashSet();&#13;
	for (String filePattern : filePatterns)&#13;
	{&#13;
		GlobFilenameFilter filter = new GlobFilenameFilter(filePattern);&#13;
		for (Object summary : s3ObjectList)&#13;
		{&#13;
			String key = ((S3ObjectSummary)summary).getKey();&#13;
			if (filter.accept(new File(key)))&#13;
			{&#13;
				if (!dedupSet.contains(key))&#13;
				{&#13;
					dedupSet.add(key);&#13;
					patternFiltered.add(summary);&#13;
				}&#13;
			}&#13;
		}&#13;
	}&#13;
	s3ObjectList = patternFiltered;&#13;
}&#13;
&#13;
if (listAfter != null)&#13;
{&#13;
	List dateFiltered = new ArrayList();&#13;
	for(Object summary : s3ObjectList)&#13;
	{&#13;
		if(((S3ObjectSummary)summary).getLastModified().compareTo(listAfter) &gt; -1)&#13;
		{&#13;
			dateFiltered.add(summary);&#13;
		}&#13;
	}&#13;
	s3ObjectList = dateFiltered;&#13;
}&#13;
&#13;
if (fetchNewFilesOnly)&#13;
{&#13;
	List rsrtFiltered = new ArrayList();&#13;
	for(Object summary : s3ObjectList)&#13;
	{&#13;
		S3ObjectSummary obs = (S3ObjectSummary)summary;&#13;
		String sql = "select 1 from ft_o_rsrt where file_id = ?";&#13;
		String isql = "insert into ft_o_rsrt (file_id, done_ind, file_tms, run_tms) values (?, ?, ?, ?)";&#13;
		&#13;
		Connection conn = null;&#13;
		PreparedStatement statement = null;&#13;
		ResultSet rs = null;&#13;
		PreparedStatement is = null;&#13;
		try&#13;
		{&#13;
			String rsrtURI = "s3://" + obs.getBucketName() + "/" + obs.getKey();&#13;
			boolean fileNotFound = true;&#13;
			&#13;
			conn = dataSource.getConnection();&#13;
			statement = conn.prepareStatement(sql);&#13;
			statement.setString(1, rsrtURI);&#13;
			rs = statement.executeQuery();&#13;
			while(rs.next())&#13;
			{&#13;
				fileNotFound = false;&#13;
				// file already present in RSRT, continue&#13;
				System.out.println("FIle exists in RSRT: " + rsrtURI);&#13;
			}&#13;
			if(fileNotFound)&#13;
			{&#13;
				rsrtFiltered.add(summary);&#13;
				is = conn.prepareStatement(isql);&#13;
				is.setString(1, rsrtURI);&#13;
				is.setString(2, "N");&#13;
				is.setTimestamp(3, new java.sql.Timestamp(obs.getLastModified().getTime()));&#13;
				is.setTimestamp(4, new java.sql.Timestamp(System.currentTimeMillis()));&#13;
				is.executeUpdate();&#13;
			}&#13;
		}&#13;
		catch (SQLException e)&#13;
		{&#13;
			throw new RuntimeException("Error occurred while checking RSRT table", e);&#13;
		}&#13;
		finally&#13;
		{&#13;
			ResourceUtils.sql.SafeClose(rs);&#13;
			ResourceUtils.sql.SafeClose(is);&#13;
			ResourceUtils.sql.SafeClose(statement);&#13;
			ResourceUtils.sql.SafeClose(conn);&#13;
		}&#13;
	}&#13;
	s3ObjectList = rsrtFiltered;&#13;
}&#13;
&#13;
String[] objectKeys = new String[s3ObjectList.size()];&#13;
for(int i=0; i&lt;objectKeys.length; i++)&#13;
{&#13;
	objectKeys[i] = ((S3ObjectSummary)s3ObjectList.get(i)).getKey();&#13;
}&#13;
</objectValue>
<type>CONSTANT</type>
</item>
<item id="26" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="27">["bucketName"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="28">variables["bucketName"]</name>
<stringValue id="29">S3BucketName</stringValue>
<type>VARIABLE</type>
</item>
<item id="30" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="31">variables["dataSource"]</name>
<stringValue id="32">jdbc/GSDM-1</stringValue>
<type>REFERENCE</type>
</item>
<item id="33" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="34">["fetchNewFilesOnly"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="35">variables["fetchNewFilesOnly"]</name>
<stringValue id="36">FetchNewFilesOnly</stringValue>
<type>VARIABLE</type>
</item>
<item id="37" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="38">variables["filePatterns"]</name>
<stringValue id="39">FilePatterns</stringValue>
<type>VARIABLE</type>
</item>
<item id="40" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="41">["listAfter"]@java/util/Date@</UITypeHint>
<input>true</input>
<name id="42">variables["listAfter"]</name>
<stringValue id="43">ListAfter</stringValue>
<type>VARIABLE</type>
</item>
<item id="44" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="45">variables["objectKeys"]</name>
<stringValue id="46">FileList</stringValue>
<type>VARIABLE</type>
</item>
<item id="47" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="48">variables["prefix"]</name>
<stringValue id="49">KeyPrefix</stringValue>
<type>VARIABLE</type>
</item>
<item id="50" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="51">["region"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="52">variables["region"]</name>
<stringValue id="53">BucketRegion</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<persistentVariables id="54" type="java.util.HashSet">
<item id="55" type="java.lang.String">FileList
1000</item>
</persistentVariables>
<sources id="56" type="java.util.HashSet">
<item id="57" type="com.j2fe.workflow.definition.Transition">
<name id="58">goto-next</name>
<source id="59">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="60">Start</name>
<nodeHandler>com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandler>
<nodeHandlerClass id="61">com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandlerClass>
<sources id="62" type="java.util.HashSet"/>
<targets id="63" type="java.util.HashSet">
<item idref="57" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>START</type>
</source>
<target idref="19"/>
</item>
</sources>
<targets id="64" type="java.util.HashSet">
<item idref="17" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="9"/>
</item>
</sources>
<targets id="65" type="java.util.HashSet">
<item idref="7" type="com.j2fe.workflow.definition.Transition"/>
<item id="66" type="com.j2fe.workflow.definition.Transition">
<name id="67">not-empty</name>
<source idref="9"/>
<target id="68">
<activation>ASYNCHRONOUS</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>true</directJoin>
<name id="69">For Each Split </name>
<nodeHandler>com.j2fe.workflow.handler.impl.GenericSplit</nodeHandler>
<nodeHandlerClass id="70">com.j2fe.workflow.handler.impl.GenericSplit</nodeHandlerClass>
<parameters id="71" type="java.util.HashSet">
<item id="72" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="73">input</name>
<stringValue id="74">FileList</stringValue>
<type>VARIABLE</type>
</item>
<item id="75" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="76">output</name>
<stringValue id="77">S3File</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
</parameters>
<persistentVariables id="78" type="java.util.HashSet">
<item id="79" type="java.lang.String">S3File
1000</item>
</persistentVariables>
<sources id="80" type="java.util.HashSet">
<item idref="66" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="81" type="java.util.HashSet">
<item id="82" type="com.j2fe.workflow.definition.Transition">
<name id="83">goto-next</name>
<source idref="68"/>
<target id="84">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="85">Download S3 File</name>
<nodeHandler>com.j2fe.general.activities.BeanShellScript</nodeHandler>
<nodeHandlerClass id="86">com.j2fe.general.activities.BeanShellScript</nodeHandlerClass>
<parameters id="87" type="java.util.HashSet">
<item id="88" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="89">statements</name>
<objectValue id="90" type="java.lang.String">import com.amazonaws.AmazonServiceException;&#13;
import com.amazonaws.services.s3.AmazonS3;&#13;
import com.amazonaws.services.s3.AmazonS3ClientBuilder;&#13;
import com.amazonaws.services.s3.model.S3Object;&#13;
import com.amazonaws.services.s3.model.S3ObjectInputStream;&#13;
&#13;
import java.io.File;&#13;
import java.nio.file.Files;&#13;
import java.nio.file.Paths;&#13;
import java.nio.file.attribute.FileAttribute;&#13;
import java.sql.Connection;&#13;
import java.sql.PreparedStatement;&#13;
import java.util.Date;&#13;
import javax.sql.DataSource;&#13;
import com.j2fe.misc.ResourceUtils;&#13;
&#13;
String targetFileName = fileName.substring(fileName.lastIndexOf("/") + 1);&#13;
Files.createDirectories(Paths.get(downloadDirectory, new String[0]), new FileAttribute[0]);&#13;
&#13;
// create s3 client&#13;
AmazonS3ClientBuilder builder = AmazonS3ClientBuilder.standard();&#13;
if(region != null &amp;&amp; !region.trim().isEmpty())&#13;
	builder = builder.withRegion(region);&#13;
AmazonS3 s3 = builder.build();&#13;
&#13;
String usql = "update ft_o_rsrt set done_ind = 'Y', run_tms = ? where file_id = ?";&#13;
FileOutputStream fos = null;&#13;
S3ObjectInputStream s3is = null;&#13;
Connection conn = null;&#13;
PreparedStatement statement = null;&#13;
try &#13;
{&#13;
	S3Object o = s3.getObject(bucketName, fileName);&#13;
	s3is = o.getObjectContent();&#13;
	fos = new FileOutputStream(new File(downloadDirectory + File.separator + targetFileName));&#13;
	byte[] read_buf = new byte[1024];&#13;
	int read_len = 0;&#13;
	while ((read_len = s3is.read(read_buf)) &gt; 0) &#13;
	{&#13;
		fos.write(read_buf, 0, read_len);&#13;
	}&#13;
	if(fetchNewFilesOnly)&#13;
	{&#13;
		String rsrtURI = "s3://" + o.getBucketName() + "/" + o.getKey();&#13;
		conn = dataSource.getConnection();&#13;
		statement = conn.prepareStatement(usql);&#13;
		statement.setTimestamp(1, new java.sql.Timestamp(System.currentTimeMillis()));&#13;
		statement.setString(2, rsrtURI);&#13;
		statement.executeUpdate();&#13;
	}&#13;
} &#13;
finally&#13;
{&#13;
	if(s3is != null)&#13;
		s3is.close();&#13;
	if(fos != null)&#13;
		fos.close();&#13;
	ResourceUtils.sql.SafeClose(statement);&#13;
	ResourceUtils.sql.SafeClose(conn);&#13;
}</objectValue>
<type>CONSTANT</type>
</item>
<item id="91" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="92">["bucketName"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="93">variables["bucketName"]</name>
<stringValue id="94">S3BucketName</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="95" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="96">variables["dataSource"]</name>
<stringValue id="97">jdbc/GSDM-1</stringValue>
<type>REFERENCE</type>
</item>
<item id="98" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="99">["downloadDirectory"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="100">variables["downloadDirectory"]</name>
<stringValue id="101">DownloadDirectory</stringValue>
<type>VARIABLE</type>
</item>
<item id="102" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="103">["fetchNewFilesOnly"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="104">variables["fetchNewFilesOnly"]</name>
<stringValue id="105">FetchNewFilesOnly</stringValue>
<type>VARIABLE</type>
</item>
<item id="106" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="107">["fileName"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="108">variables["fileName"]</name>
<stringValue id="109">S3File</stringValue>
<type>VARIABLE</type>
</item>
<item id="110" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="111">["region"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="112">variables["region"]</name>
<stringValue id="113">BucketRegion</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
</parameters>
<sources id="114" type="java.util.HashSet">
<item idref="82" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="115" type="java.util.HashSet">
<item id="116" type="com.j2fe.workflow.definition.Transition">
<name id="117">goto-next</name>
<source idref="84"/>
<target id="118">
<activation>ASYNCHRONOUS</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>true</directJoin>
<name id="119">Synchronize </name>
<nodeHandler>com.j2fe.workflow.handler.impl.StandardAndJoinHandler</nodeHandler>
<nodeHandlerClass id="120">com.j2fe.workflow.handler.impl.StandardAndJoinHandler</nodeHandlerClass>
<sources id="121" type="java.util.HashSet">
<item idref="116" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="122" type="java.util.HashSet">
<item id="123" type="com.j2fe.workflow.definition.Transition">
<name id="124">goto-next</name>
<source idref="118"/>
<target idref="3"/>
</item>
</targets>
<type>ANDJOIN</type>
</target>
</item>
</targets>
<type>ACTIVITY</type>
</target>
</item>
</targets>
<type>ANDSPLIT</type>
</target>
</item>
</targets>
<type>XORSPLIT</type>
</source>
<target idref="3"/>
</item>
<item idref="123" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="125" type="java.util.HashSet"/>
<type>END</type>
</endNode>
<forcePurgeAtEnd>false</forcePurgeAtEnd>
<group id="126">Custom/S3</group>
<haltOnError>false</haltOnError>
<lastChangeUser id="127">user1</lastChangeUser>
<lastUpdate id="128">2024-10-03T16:10:05.000-0400</lastUpdate>
<name id="129">S3FileListAndDownload</name>
<optimize>true</optimize>
<parameter id="130" type="java.util.HashMap">
<entry>
<key id="131" type="java.lang.String">BucketRegion</key>
<value id="132" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="133">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="134">The region where the s3 bucket is created, example "ap-south-1". If the profile is configured with the default region, this value is optional.</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="135" type="java.lang.String">DownloadDirectory</key>
<value id="136" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="137">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<input>true</input>
<output>false</output>
<required>true</required>
</value>
</entry>
<entry>
<key id="138" type="java.lang.String">FetchNewFilesOnly</key>
<value id="139" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="140">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description id="141">Select only new files which are not there in ft_o_rsrt table.</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="142" type="java.lang.String">FilePatterns</key>
<value id="143" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="144">[Ljava.lang.String;</className>
<clazz>[Ljava.lang.String;</clazz>
<description id="145">file patters to select.</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="146" type="java.lang.String">KeyPrefix</key>
<value id="147" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="148">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="149">The s3 object prefix to list specific objects inside a folder in s3 bucket.</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="150" type="java.lang.String">ListAfter</key>
<value id="151" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="152">java.util.Date</className>
<clazz>java.util.Date</clazz>
<description id="153">Specify to select files later that the specified Date.</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="154" type="java.lang.String">S3BucketName</key>
<value id="155" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="156">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<input>true</input>
<output>false</output>
<required>true</required>
</value>
</entry>
</parameter>
<permissions id="157" type="java.util.HashSet"/>
<priority>50</priority>
<purgeAtEnd>true</purgeAtEnd>
<retries>0</retries>
<startNode idref="59"/>
<status>RELEASED</status>
<variables id="158" type="java.util.HashMap">
<entry>
<key id="159" type="java.lang.String">BucketRegion</key>
<value id="160" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="161">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="162">The region where the s3 bucket is created, example "ap-south-1". If the profile is configured with the default region, this value is optional.</description>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="163" type="java.lang.String">DownloadDirectory</key>
<value id="164" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="165">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="166" type="java.lang.String">FetchNewFilesOnly</key>
<value id="167" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="168">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description id="169">Select only new files which are not there in ft_o_rsrt table.</description>
<persistent>false</persistent>
<value id="170" type="java.lang.Boolean">false</value>
</value>
</entry>
<entry>
<key id="171" type="java.lang.String">FilePatterns</key>
<value id="172" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="173">[Ljava.lang.String;</className>
<clazz>[Ljava.lang.String;</clazz>
<description id="174">file patters to select.</description>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="175" type="java.lang.String">KeyPrefix</key>
<value id="176" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="177">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="178">The s3 object prefix to list specific objects inside a folder in s3 bucket.</description>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="179" type="java.lang.String">ListAfter</key>
<value id="180" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="181">java.util.Date</className>
<clazz>java.util.Date</clazz>
<description id="182">Specify to select files later that the specified Date.</description>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="183" type="java.lang.String">S3BucketName</key>
<value id="184" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="185">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<persistent>false</persistent>
</value>
</entry>
</variables>
<version>47</version>
</com.j2fe.workflow.definition.Workflow>
</businessobject>
</goldensource-package>
