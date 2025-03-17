<?xml version="1.0" encoding="UTF-8" standalone="no"?>
<goldensource-package version="8.8.1.47">
<package-comment/>
<businessobject displayString="2 - v_1" type="com.j2fe.workflow.definition.Workflow">
<com.j2fe.workflow.definition.Workflow id="0">
<alwaysPersist>false</alwaysPersist>
<clustered>true</clustered>
<comment id="1">v_1</comment>
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
<name id="10">List S3 File</name>
<nodeHandler>com.j2fe.general.activities.BeanShellScript</nodeHandler>
<nodeHandlerClass id="11">com.j2fe.general.activities.BeanShellScript</nodeHandlerClass>
<parameters id="12" type="java.util.HashSet">
<item id="13" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="14">statements</name>
<objectValue id="15" type="java.lang.String">package com.j2fe.workstation.activities;&#13;
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
&#13;
if(region != null &amp;&amp; !region.trim().isEmpty())&#13;
	builder = builder.withRegion(region);&#13;
&#13;
AmazonS3 s3 = builder.enableForceGlobalBucketAccess().build();&#13;
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
else if (filePatterns != null &amp;&amp; filePatterns.length &gt; 0)&#13;
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
<item id="16" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="17">["bucketName"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="18">variables["bucketName"]</name>
<stringValue id="19">S3BucketName</stringValue>
<type>VARIABLE</type>
</item>
<item id="20" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="21">variables["dataSource"]</name>
<stringValue id="22">jdbc/GSDM-1</stringValue>
<type>REFERENCE</type>
</item>
<item id="23" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="24">["fetchNewFilesOnly"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="25">variables["fetchNewFilesOnly"]</name>
<stringValue id="26">FetchNewFilesOnly</stringValue>
<type>VARIABLE</type>
</item>
<item id="27" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="28">variables["filePatterns"]</name>
<stringValue id="29">FilePatterns</stringValue>
<type>VARIABLE</type>
</item>
<item id="30" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="31">["listAfter"]@java/util/Date@</UITypeHint>
<input>true</input>
<name id="32">variables["listAfter"]</name>
<stringValue id="33">ListAfter</stringValue>
<type>VARIABLE</type>
</item>
<item id="34" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="35">variables["objectKeys"]</name>
<stringValue id="36">FileList</stringValue>
<type>VARIABLE</type>
</item>
<item id="37" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="38">variables["prefix"]</name>
<stringValue id="39">KeyPrefix</stringValue>
<type>VARIABLE</type>
</item>
<item id="40" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="41">["region"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="42">variables["region"]</name>
<stringValue id="43">BucketRegion</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="44" type="java.util.HashSet">
<item id="45" type="com.j2fe.workflow.definition.Transition">
<name id="46">goto-next</name>
<source id="47">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="48">Start</name>
<nodeHandler>com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandler>
<nodeHandlerClass id="49">com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandlerClass>
<sources id="50" type="java.util.HashSet"/>
<targets id="51" type="java.util.HashSet">
<item idref="45" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>START</type>
</source>
<target idref="9"/>
</item>
</sources>
<targets id="52" type="java.util.HashSet">
<item idref="7" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="3"/>
</item>
</sources>
<targets id="53" type="java.util.HashSet"/>
<type>END</type>
</endNode>
<forcePurgeAtEnd>false</forcePurgeAtEnd>
<group id="54">Custom/S3</group>
<haltOnError>false</haltOnError>
<lastChangeUser id="55">user1</lastChangeUser>
<lastUpdate id="56">2023-10-26T12:45:36.000+0530</lastUpdate>
<name id="57">S3FileList</name>
<optimize>true</optimize>
<parameter id="58" type="java.util.HashMap">
<entry>
<key id="59" type="java.lang.String">BucketRegion</key>
<value id="60" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="61">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="62">The region where the s3 bucket is created, example "ap-south-1". If the profile is configured with the default region, this value is optional.</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="63" type="java.lang.String">FetchNewFilesOnly</key>
<value id="64" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="65">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description id="66">Select only new files which are not there in ft_o_rsrt table.</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="67" type="java.lang.String">FilePatterns</key>
<value id="68" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="69">[Ljava.lang.String;</className>
<clazz>[Ljava.lang.String;</clazz>
<description id="70">file patters to select.</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="71" type="java.lang.String">KeyPrefix</key>
<value id="72" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="73">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="74">The s3 object prefix to list specific objects inside a folder in s3 bucket.</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="75" type="java.lang.String">ListAfter</key>
<value id="76" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="77">java.util.Date</className>
<clazz>java.util.Date</clazz>
<description id="78">Specify to select files later that the specified Date.</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="79" type="java.lang.String">S3BucketName</key>
<value id="80" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="81">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<input>true</input>
<output>false</output>
<required>true</required>
</value>
</entry>
</parameter>
<permissions id="82" type="java.util.HashSet"/>
<priority>50</priority>
<purgeAtEnd>true</purgeAtEnd>
<retries>0</retries>
<startNode idref="47"/>
<status>RELEASED</status>
<variables id="83" type="java.util.HashMap">
<entry>
<key id="84" type="java.lang.String">BucketRegion</key>
<value id="85" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="86">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="87">The region where the s3 bucket is created, example "ap-south-1". If the profile is configured with the default region, this value is optional.</description>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="88" type="java.lang.String">FetchNewFilesOnly</key>
<value id="89" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="90">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description id="91">Select only new files which are not there in ft_o_rsrt table.</description>
<persistent>false</persistent>
<value id="92" type="java.lang.Boolean">false</value>
</value>
</entry>
<entry>
<key id="93" type="java.lang.String">FilePatterns</key>
<value id="94" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="95">[Ljava.lang.String;</className>
<clazz>[Ljava.lang.String;</clazz>
<description id="96">file patters to select.</description>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="97" type="java.lang.String">KeyPrefix</key>
<value id="98" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="99">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="100">The s3 object prefix to list specific objects inside a folder in s3 bucket.</description>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="101" type="java.lang.String">ListAfter</key>
<value id="102" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="103">java.util.Date</className>
<clazz>java.util.Date</clazz>
<description id="104">Specify to select files later that the specified Date.</description>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="105" type="java.lang.String">S3BucketName</key>
<value id="106" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="107">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<persistent>false</persistent>
</value>
</entry>
</variables>
<version>2</version>
</com.j2fe.workflow.definition.Workflow>
</businessobject>
</goldensource-package>
