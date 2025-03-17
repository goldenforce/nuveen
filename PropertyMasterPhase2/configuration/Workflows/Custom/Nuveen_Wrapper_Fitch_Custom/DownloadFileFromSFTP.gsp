<?xml version="1.0" encoding="UTF-8" standalone="no"?>
<goldensource-package version="8.8.1.34">
<package-comment/>
<businessobject displayString="36 - 20241114-SFTPToLocal" type="com.j2fe.workflow.definition.Workflow">
<com.j2fe.workflow.definition.Workflow id="0">
<alwaysPersist>false</alwaysPersist>
<clustered>true</clustered>
<comment id="1">20241114-SFTPToLocal</comment>
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
<stringValue id="15">JobID</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="16" type="java.util.HashSet">
<item id="17" type="com.j2fe.workflow.definition.Transition">
<name id="18">empty</name>
<source id="19">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="20">List Files From SFTP</name>
<nodeHandler>com.j2fe.feeds.activities.ListFiles</nodeHandler>
<nodeHandlerClass id="21">com.j2fe.feeds.activities.ListFiles</nodeHandlerClass>
<parameters id="22" type="java.util.HashSet">
<item id="23" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="24">businessFeedFilter</name>
<stringValue id="25">BusinessFeed</stringValue>
<type>VARIABLE</type>
</item>
<item id="26" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="27">dataSourceFilter</name>
<stringValue id="28">VendorDefinition</stringValue>
<type>VARIABLE</type>
</item>
<item id="29" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="30">directory</name>
<stringValue id="31">SFTPDirectory</stringValue>
<type>VARIABLE</type>
</item>
<item id="32" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="33">fileSystem</name>
<stringValue id="34">filesystem/sftp/fitchsftp</stringValue>
<type>REFERENCE</type>
</item>
<item id="35" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="36">list</name>
<stringValue id="37">FileList</stringValue>
<type>VARIABLE</type>
</item>
<item id="38" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="39">pattern</name>
<stringValue id="40">FilePattern</stringValue>
<type>VARIABLE</type>
</item>
<item id="41" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="42">sort</name>
<stringValue id="43">SortOrder</stringValue>
<type>VARIABLE</type>
</item>
<item id="44" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="45">sortAscending</name>
<stringValue id="46">SortAscending</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="47" type="java.util.HashSet">
<item id="48" type="com.j2fe.workflow.definition.Transition">
<name id="49">goto-next</name>
<source id="50">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="51">Create Job </name>
<nodeHandler>com.j2fe.streetlamp.activities.CreateJob</nodeHandler>
<nodeHandlerClass id="52">com.j2fe.streetlamp.activities.CreateJob</nodeHandlerClass>
<parameters id="53" type="java.util.HashSet">
<item id="54" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="55">configInfo</name>
<stringValue id="56">DownloadFileFromSFTP</stringValue>
<type>CONSTANT</type>
</item>
<item id="57" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="58">jobId</name>
<stringValue id="59">JobID</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="60" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="61">parentJobId</name>
<stringValue id="62">ParentJobID</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="63" type="java.util.HashSet">
<item id="64" type="com.j2fe.workflow.definition.Transition">
<name id="65">goto-next</name>
<source id="66">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="67">Start</name>
<nodeHandler>com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandler>
<nodeHandlerClass id="68">com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandlerClass>
<sources id="69" type="java.util.HashSet"/>
<targets id="70" type="java.util.HashSet">
<item idref="64" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>START</type>
</source>
<target idref="50"/>
</item>
</sources>
<targets id="71" type="java.util.HashSet">
<item idref="48" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="19"/>
</item>
</sources>
<targets id="72" type="java.util.HashSet">
<item idref="17" type="com.j2fe.workflow.definition.Transition"/>
<item id="73" type="com.j2fe.workflow.definition.Transition">
<name id="74">not-empty</name>
<source idref="19"/>
<target id="75">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="76">Is FileToProcess are Full Files</name>
<nodeHandler>com.j2fe.general.activities.BeanShellScript</nodeHandler>
<nodeHandlerClass id="77">com.j2fe.general.activities.BeanShellScript</nodeHandlerClass>
<parameters id="78" type="java.util.HashSet">
<item id="79" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="80">statements</name>
<stringValue id="81">import org.apache.log4j.Logger;&#13;
import com.j2fe.util.file.FileSystemItem;&#13;
&#13;
Logger logger = Logger.getLogger("DownloadFileFromSFTPLogger");&#13;
boolean allFullFile = true;&#13;
String fullFileName = null;&#13;
&#13;
for(Object obj : filesToProcess)&#13;
{&#13;
	FileSystemItem file = (FileSystemItem) obj;&#13;
	String fileName = ((FileSystemItem) file).getName();&#13;
	int index = fileName.indexOf(".");&#13;
	String extension = fileName.substring(index + 1);&#13;
        if (extension.equals("mis") || fileName.endsWith(".mis.zip")) &#13;
       {&#13;
   	     fullFileName = fileName ;&#13;
       }&#13;
	if (! fullFileExtensions.contains(extension))&#13;
	{&#13;
		allFullFile = false;&#13;
		if (fullFileName != null)&#13;
		{&#13;
			break;&#13;
      		 }&#13;
	}&#13;
}&#13;
&#13;
if(fullFileName != null)&#13;
{&#13;
	fullFileName =fullFileName.replace("//data/","");&#13;
}&#13;
return allFullFile;</stringValue>
<type>CONSTANT</type>
</item>
<item id="82" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="83">["allFullFile"]@java/lang/Boolean@</UITypeHint>
<input>false</input>
<name id="84">variables["allFullFile"]</name>
<stringValue id="85">allFullFile</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="86" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="87">["filesToProcess"]@java/lang/Object@</UITypeHint>
<input>true</input>
<name id="88">variables["filesToProcess"]</name>
<stringValue id="89">FileList</stringValue>
<type>VARIABLE</type>
</item>
<item id="90" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="91">["fullFileExtensions"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="92">variables["fullFileExtensions"]</name>
<stringValue id="93">FullFileExtensions</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="94" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="95">variables["fullFileName"]</name>
<stringValue id="96">fullFileName</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<persistentVariables id="97" type="java.util.HashSet">
<item id="98" type="java.lang.String">fullFileName
1000</item>
</persistentVariables>
<sources id="99" type="java.util.HashSet">
<item idref="73" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="100" type="java.util.HashSet">
<item id="101" type="com.j2fe.workflow.definition.Transition">
<name id="102">false</name>
<source idref="75"/>
<target id="103">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="104">NOP </name>
<nodeHandler>com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandler>
<nodeHandlerClass id="105">com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandlerClass>
<sources id="106" type="java.util.HashSet">
<item idref="101" type="com.j2fe.workflow.definition.Transition"/>
<item id="107" type="com.j2fe.workflow.definition.Transition">
<name id="108">goto-next</name>
<source id="109">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="110">Move Prior Files from LocalSystem</name>
<nodeHandler>com.j2fe.workflow.handler.impl.CallSubWorkflow</nodeHandler>
<nodeHandlerClass id="111">com.j2fe.workflow.handler.impl.CallSubWorkflow</nodeHandlerClass>
<parameters id="112" type="java.util.HashSet">
<item id="113" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="114">["FileOperation"]@com/j2fe/general/activities/FileOperator$Operation@</UITypeHint>
<input>true</input>
<name id="115">input["FileOperation"]</name>
<objectValue id="116" type="com.j2fe.general.activities.FileOperator$Operation">Move</objectValue>
<type>CONSTANT</type>
</item>
<item id="117" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="118">["FileSystemType"]@com/j2fe/connector/BBFileSystemType@</UITypeHint>
<input>true</input>
<name id="119">input["FileSystemType"]</name>
<objectValue id="120" type="com.j2fe.connector.BBFileSystemType">FTP</objectValue>
<type>CONSTANT</type>
</item>
<item id="121" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="122">["OutputDirectory"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="123">input["OutputDirectory"]</name>
<stringValue id="124">LocalOutputDirectory</stringValue>
<type>VARIABLE</type>
</item>
<item id="125" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="126">["SortAscending"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="127">input["SortAscending"]</name>
<stringValue id="128">SortAscending</stringValue>
<type>VARIABLE</type>
</item>
<item id="129" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="130">["SortOrder"]@com/j2fe/feeds/activities/ListFiles$Sort@</UITypeHint>
<input>true</input>
<name id="131">input["SortOrder"]</name>
<stringValue id="132">SortOrder</stringValue>
<type>VARIABLE</type>
</item>
<item id="133" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="134">["SourceDirectory"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="135">input["SourceDirectory"]</name>
<stringValue id="136">LocalProcessDirectory</stringValue>
<type>VARIABLE</type>
</item>
<item id="137" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="138">["VendorDefinition"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="139">input["VendorDefinition"]</name>
<stringValue id="140">VendorDefinition</stringValue>
<type>VARIABLE</type>
</item>
<item id="141" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="142">name</name>
<stringValue id="143">PerformFileOperation</stringValue>
<type>CONSTANT</type>
</item>
</parameters>
<sources id="144" type="java.util.HashSet">
<item id="145" type="com.j2fe.workflow.definition.Transition">
<name id="146">empty</name>
<source id="147">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="148">List Files </name>
<nodeHandler>com.j2fe.feeds.activities.ListFiles</nodeHandler>
<nodeHandlerClass id="149">com.j2fe.feeds.activities.ListFiles</nodeHandlerClass>
<parameters id="150" type="java.util.HashSet">
<item id="151" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="152">dataSourceFilter</name>
<stringValue id="153">VendorDefinition</stringValue>
<type>VARIABLE</type>
</item>
<item id="154" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="155">directory</name>
<stringValue id="156">LocalProcessDirectory</stringValue>
<type>VARIABLE</type>
</item>
<item id="157" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="158">fileSystem</name>
<stringValue id="159">filesystem/local</stringValue>
<type>REFERENCE</type>
</item>
<item id="160" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="161">pattern</name>
<stringValue id="162">fullFileName</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="163" type="java.util.HashSet">
<item id="164" type="com.j2fe.workflow.definition.Transition">
<name id="165">true</name>
<source idref="75"/>
<target idref="147"/>
</item>
</sources>
<targets id="166" type="java.util.HashSet">
<item idref="145" type="com.j2fe.workflow.definition.Transition"/>
<item id="167" type="com.j2fe.workflow.definition.Transition">
<name id="168">not-empty</name>
<source idref="147"/>
<target idref="103"/>
</item>
</targets>
<type>XORSPLIT</type>
</source>
<target idref="109"/>
</item>
</sources>
<targets id="169" type="java.util.HashSet">
<item idref="107" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="103"/>
</item>
<item idref="167" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="170" type="java.util.HashSet">
<item id="171" type="com.j2fe.workflow.definition.Transition">
<name id="172">goto-next</name>
<source idref="103"/>
<target id="173">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="174">Copy Files From SFTP to Local</name>
<nodeHandler>com.j2fe.workflow.handler.impl.CallSubWorkflow</nodeHandler>
<nodeHandlerClass id="175">com.j2fe.workflow.handler.impl.CallSubWorkflow</nodeHandlerClass>
<parameters id="176" type="java.util.HashSet">
<item id="177" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="178">["FileOperation"]@com/j2fe/general/activities/FileOperator$Operation@</UITypeHint>
<input>true</input>
<name id="179">input["FileOperation"]</name>
<objectValue id="180" type="com.j2fe.general.activities.FileOperator$Operation">Copy</objectValue>
<type>CONSTANT</type>
</item>
<item id="181" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="182">["FilePattern"]@[Ljava/lang/String;@</UITypeHint>
<input>true</input>
<name id="183">input["FilePattern"]</name>
<stringValue id="184">FilePattern</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="185" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="186">["FileSystemType"]@com/j2fe/connector/BBFileSystemType@</UITypeHint>
<input>true</input>
<name id="187">input["FileSystemType"]</name>
<objectValue id="188" type="com.j2fe.connector.BBFileSystemType">SFTP</objectValue>
<type>CONSTANT</type>
</item>
<item id="189" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="190">["OutputDirectory"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="191">input["OutputDirectory"]</name>
<stringValue id="192">LocalProcessDirectory</stringValue>
<type>VARIABLE</type>
</item>
<item id="193" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="194">["SortAscending"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="195">input["SortAscending"]</name>
<stringValue id="196">SortAscending</stringValue>
<type>VARIABLE</type>
</item>
<item id="197" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="198">["SortOrder"]@com/j2fe/feeds/activities/ListFiles$Sort@</UITypeHint>
<input>true</input>
<name id="199">input["SortOrder"]</name>
<stringValue id="200">SortOrder</stringValue>
<type>VARIABLE</type>
</item>
<item id="201" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="202">["SourceDirectory"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="203">input["SourceDirectory"]</name>
<stringValue id="204">SFTPDirectory</stringValue>
<type>VARIABLE</type>
</item>
<item id="205" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="206">["VendorDefinition"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="207">input["VendorDefinition"]</name>
<stringValue id="208">VendorDefinition</stringValue>
<type>VARIABLE</type>
</item>
<item id="209" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="210">name</name>
<stringValue id="211">PerformFileOperation</stringValue>
<type>CONSTANT</type>
</item>
</parameters>
<sources id="212" type="java.util.HashSet">
<item idref="171" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="213" type="java.util.HashSet">
<item id="214" type="com.j2fe.workflow.definition.Transition">
<name id="215">goto-next</name>
<source idref="173"/>
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
<item idref="164" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>XORSPLIT</type>
</target>
</item>
</targets>
<type>XORSPLIT</type>
</source>
<target idref="9"/>
</item>
<item idref="214" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="216" type="java.util.HashSet">
<item idref="7" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="3"/>
</item>
</sources>
<targets id="217" type="java.util.HashSet"/>
<type>END</type>
</endNode>
<forcePurgeAtEnd>false</forcePurgeAtEnd>
<group id="218">Custom/Nuveen_Wrapper_Fitch_Custom</group>
<haltOnError>false</haltOnError>
<lastChangeUser id="219">user1</lastChangeUser>
<lastUpdate id="220">2024-11-15T14:26:40.000+0530</lastUpdate>
<name id="221">DownloadFileFromSFTP</name>
<optimize>true</optimize>
<parameter id="222" type="java.util.HashMap">
<entry>
<key id="223" type="java.lang.String">BusinessFeed</key>
<value id="224" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="225">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="226" type="java.lang.String">FilePattern</key>
<value id="227" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="228">[Ljava.lang.String;</className>
<clazz>[Ljava.lang.String;</clazz>
<description idref="2"/>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="229" type="java.lang.String">FullFileExtensions</key>
<value id="230" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="231">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="232" type="java.lang.String">LocalOutputDirectory</key>
<value id="233" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="234">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<input>true</input>
<output>false</output>
<required>true</required>
</value>
</entry>
<entry>
<key id="235" type="java.lang.String">LocalProcessDirectory</key>
<value id="236" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="237">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<input>true</input>
<output>false</output>
<required>true</required>
</value>
</entry>
<entry>
<key id="238" type="java.lang.String">ParentJobID</key>
<value id="239" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="240">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="241" type="java.lang.String">SFTPDirectory</key>
<value id="242" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="243">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<input>true</input>
<output>false</output>
<required>true</required>
</value>
</entry>
<entry>
<key id="244" type="java.lang.String">SortAscending</key>
<value id="245" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="246">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description id="247">Sort the files ascending or descending.</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="248" type="java.lang.String">SortOrder</key>
<value id="249" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="250">com.j2fe.feeds.activities.ListFiles$Sort</className>
<clazz>com.j2fe.feeds.activities.ListFiles$Sort</clazz>
<description id="251">Sort the files by TIME or NATURAL or FILESIZE?</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="252" type="java.lang.String">VendorDefinition</key>
<value id="253" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="254">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
</parameter>
<permissions id="255" type="java.util.HashSet"/>
<priority>50</priority>
<purgeAtEnd>true</purgeAtEnd>
<retries>0</retries>
<startNode idref="66"/>
<status>RELEASED</status>
<variables id="256" type="java.util.HashMap">
<entry>
<key id="257" type="java.lang.String">BusinessFeed</key>
<value id="258" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="259">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="260" type="java.lang.String">FilePattern</key>
<value id="261" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="262">[Ljava.lang.String;</className>
<clazz>[Ljava.lang.String;</clazz>
<description idref="2"/>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="263" type="java.lang.String">FullFileExtensions</key>
<value id="264" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="265">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<persistent>false</persistent>
<value id="266" type="java.lang.String">mis.zip,mir.zip</value>
</value>
</entry>
<entry>
<key id="267" type="java.lang.String">JobID</key>
<value id="268" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="269">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="270" type="java.lang.String">LocalOutputDirectory</key>
<value id="271" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="272">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="273" type="java.lang.String">LocalProcessDirectory</key>
<value id="274" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="275">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="276" type="java.lang.String">LoopCounter</key>
<value id="277" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="278">java.lang.Integer</className>
<clazz>java.lang.Integer</clazz>
<description idref="2"/>
<persistent>false</persistent>
<value id="279" type="java.lang.Integer">0</value>
</value>
</entry>
<entry>
<key id="280" type="java.lang.String">ParentJobID</key>
<value id="281" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="282">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="283" type="java.lang.String">SFTPDirectory</key>
<value id="284" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="285">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="286" type="java.lang.String">SortAscending</key>
<value id="287" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="288">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description id="289">Sort the files ascending or descending.</description>
<persistent>false</persistent>
<value id="290" type="java.lang.Boolean">true</value>
</value>
</entry>
<entry>
<key id="291" type="java.lang.String">SortOrder</key>
<value id="292" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="293">com.j2fe.feeds.activities.ListFiles$Sort</className>
<clazz>com.j2fe.feeds.activities.ListFiles$Sort</clazz>
<description id="294">Sort the files by TIME or NATURAL or FILESIZE?</description>
<persistent>false</persistent>
<value id="295" type="com.j2fe.feeds.activities.ListFiles$Sort">NATURAL</value>
</value>
</entry>
<entry>
<key id="296" type="java.lang.String">VendorDefinition</key>
<value id="297" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="298">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<persistent>false</persistent>
<value id="299" type="java.lang.String">FITCH</value>
</value>
</entry>
</variables>
<version>36</version>
</com.j2fe.workflow.definition.Workflow>
</businessobject>
</goldensource-package>
