<?xml version="1.0" encoding="UTF-8" standalone="no"?>
<goldensource-package version="8.8.1.64">
<package-comment/>
<businessobject displayString="29 - Added BCP proxy" type="com.j2fe.workflow.definition.Workflow">
<com.j2fe.workflow.definition.Workflow id="0">
<alwaysPersist>false</alwaysPersist>
<clustered>true</clustered>
<comment id="1">Added BCP proxy</comment>
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
<stringValue id="15">NULLJobID</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
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
<name id="20">Close Transaction </name>
<nodeHandler>com.j2fe.streetlamp.activities.CloseTransaction</nodeHandler>
<nodeHandlerClass id="21">com.j2fe.streetlamp.activities.CloseTransaction</nodeHandlerClass>
<parameters id="22" type="java.util.HashSet">
<item id="23" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="24">transactionId</name>
<stringValue id="25">TransactionID</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
</parameters>
<sources id="26" type="java.util.HashSet">
<item id="27" type="com.j2fe.workflow.definition.Transition">
<name id="28">goto-next</name>
<source id="29">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="30">Report Notification </name>
<nodeHandler>com.j2fe.streetlamp.activities.ReportNotification</nodeHandler>
<nodeHandlerClass id="31">com.j2fe.streetlamp.activities.ReportNotification</nodeHandlerClass>
<parameters id="32" type="java.util.HashSet">
<item id="33" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="34">applicationId</name>
<stringValue id="35">STRDATA</stringValue>
<type>CONSTANT</type>
</item>
<item id="36" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="37">flushImmediate</name>
<stringValue id="38">true</stringValue>
<type>CONSTANT</type>
</item>
<item id="39" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="40">messageType</name>
<stringValue id="41">DC_FiinPro_Price</stringValue>
<type>CONSTANT</type>
</item>
<item id="42" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="43">notificationId</name>
<stringValue id="44">40004</stringValue>
<type>CONSTANT</type>
</item>
<item id="45" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="46">partId</name>
<stringValue id="47">RULEPRC</stringValue>
<type>CONSTANT</type>
</item>
<item id="48" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="49">transactionId</name>
<stringValue id="50">TransactionID</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
</parameters>
<sources id="51" type="java.util.HashSet">
<item id="52" type="com.j2fe.workflow.definition.Transition">
<name id="53">goto-next</name>
<source id="54">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="55">Create Transaction </name>
<nodeHandler>com.j2fe.streetlamp.activities.CreateTransaction</nodeHandler>
<nodeHandlerClass id="56">com.j2fe.streetlamp.activities.CreateTransaction</nodeHandlerClass>
<parameters id="57" type="java.util.HashSet">
<item id="58" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="59">flushImmediate</name>
<stringValue id="60">true</stringValue>
<type>CONSTANT</type>
</item>
<item id="61" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="62">jobId</name>
<stringValue id="63">NULLJobID</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="64" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="65">messageType</name>
<stringValue id="66">DC_FiinPro_Price</stringValue>
<type>CONSTANT</type>
</item>
<item id="67" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="68">transactionId</name>
<stringValue id="69">TransactionID</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
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
<name id="74">Create Job </name>
<nodeHandler>com.j2fe.streetlamp.activities.CreateJob</nodeHandler>
<nodeHandlerClass id="75">com.j2fe.streetlamp.activities.CreateJob</nodeHandlerClass>
<parameters id="76" type="java.util.HashSet">
<item id="77" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="78">configInfo</name>
<stringValue id="79">NRE Google Maps Address Exception</stringValue>
<type>CONSTANT</type>
</item>
<item id="80" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="81">flushImmediate</name>
<stringValue id="82">true</stringValue>
<type>CONSTANT</type>
</item>
<item id="83" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="84">jobId</name>
<stringValue id="85">NULLJobID</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="86" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="87">messageType</name>
<stringValue id="88">NRE_BF_INTL_Address</stringValue>
<type>CONSTANT</type>
</item>
</parameters>
<sources id="89" type="java.util.HashSet">
<item id="90" type="com.j2fe.workflow.definition.Transition">
<name id="91">true</name>
<source id="92">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="93">Is Null </name>
<nodeHandler>com.j2fe.general.activities.IsNull</nodeHandler>
<nodeHandlerClass id="94">com.j2fe.general.activities.IsNull</nodeHandlerClass>
<parameters id="95" type="java.util.HashSet">
<item id="96" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="97">input</name>
<stringValue id="98">ResponseBody1</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
</parameters>
<sources id="99" type="java.util.HashSet">
<item id="100" type="com.j2fe.workflow.definition.Transition">
<name id="101">goto-next</name>
<source id="102">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="103">GetHosePrice</name>
<nodeHandler>com.j2fe.general.activities.HttpClient</nodeHandler>
<nodeHandlerClass id="104">com.j2fe.general.activities.HttpClient</nodeHandlerClass>
<parameters id="105" type="java.util.HashSet">
<item id="106" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="107">characterSet</name>
<stringValue id="108">CharacterSet</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="109" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="110">["content-type"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="111">headers["content-type"]</name>
<stringValue id="112">application/json</stringValue>
<type>CONSTANT</type>
</item>
<item id="113" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="114">httpMethod</name>
<stringValue id="115">POST</stringValue>
<type>CONSTANT</type>
</item>
<item id="116" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="117">["http.proxyHost"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="118">proxySettings["http.proxyHost"]</name>
<stringValue id="119">ilz-prod-ue1-bcpxy-lb.aws.tiaa-cref.org</stringValue>
<type>CONSTANT</type>
</item>
<item id="120" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="121">["http.proxyPort"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="122">proxySettings["http.proxyPort"]</name>
<stringValue id="123">8080</stringValue>
<type>CONSTANT</type>
</item>
<item id="124" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="125">["key"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="126">queryParams["key"]</name>
<stringValue id="127">mapsAPIKey</stringValue>
<type>VARIABLE</type>
</item>
<item id="128" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="129">requestBody</name>
<stringValue id="130">mailAddJSON</stringValue>
<type>VARIABLE</type>
</item>
<item id="131" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="132">responseBody</name>
<stringValue id="133">ResponseBody1</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="134" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="135">responseByetArr</name>
<stringValue id="136">ResponseByteArray</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="137" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="138">responseHeaders</name>
<stringValue id="139">ResponseHeaders</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="140" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="141">statusCode</name>
<stringValue id="142">StatusCode</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="143" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="144">statusLine</name>
<stringValue id="145">SatusLine</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="146" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="147">url</name>
<stringValue id="148">https://addressvalidation.googleapis.com/v1:validateAddress</stringValue>
<type>CONSTANT</type>
</item>
</parameters>
<sources id="149" type="java.util.HashSet">
<item id="150" type="com.j2fe.workflow.definition.Transition">
<name id="151">goto-next</name>
<source id="152">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="153">Fetch MapsAPIKey</name>
<nodeHandler>com.j2fe.general.activities.BeanShellScript</nodeHandler>
<nodeHandlerClass id="154">com.j2fe.general.activities.BeanShellScript</nodeHandlerClass>
<parameters id="155" type="java.util.HashSet">
<item id="156" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="157">statements</name>
<stringValue id="158">import java.text.*;&#13;
&#13;
//get system properties for MapsAPIKey&#13;
String mapsAPIKey = System.getProperty("MapsAPIKey","AIzaSyDAOYBrI7MT3hiENNtyVl1oSKUXBestvQg");</stringValue>
<type>CONSTANT</type>
</item>
<item id="159" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="160">["mapsAPIKey"]@java/lang/String@</UITypeHint>
<input>false</input>
<name id="161">variables["mapsAPIKey"]</name>
<stringValue id="162">mapsAPIKey</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
</parameters>
<sources id="163" type="java.util.HashSet">
<item id="164" type="com.j2fe.workflow.definition.Transition">
<name id="165">goto-next</name>
<source id="166">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="167">Mailing Address JSON</name>
<nodeHandler>com.j2fe.general.activities.BeanShellScript</nodeHandler>
<nodeHandlerClass id="168">com.j2fe.general.activities.BeanShellScript</nodeHandlerClass>
<parameters id="169" type="java.util.HashSet">
<item id="170" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="171">statements</name>
<objectValue id="172" type="java.lang.String">import org.json.JSONObject;&#13;
import org.json.JSONArray;&#13;
import java.util.Map;&#13;
import java.util.HashMap;&#13;
import java.util.LinkedHashMap;&#13;
&#13;
Map madrMap = new LinkedHashMap(mailAddDG);&#13;
&#13;
JSONObject addObj = new JSONObject();&#13;
&#13;
JSONObject addAtt = new JSONObject();&#13;
addObj.put("address", addAtt);&#13;
//addAtt.put("regionCode", "US");&#13;
if ( "USA".equals(cntryCde) )&#13;
{&#13;
addAtt.put("regionCode", "US");&#13;
System.out.println("Country Code converted to 2 char..");&#13;
}&#13;
else&#13;
{&#13;
addAtt.put("regionCode", cntryCde);&#13;
System.out.println("Country Code using as is.." );&#13;
}&#13;
addAtt.put("sortingCode", "");&#13;
&#13;
JSONArray addDtl = new JSONArray();&#13;
addAtt.put("addressLines", addDtl);&#13;
		for (Map.Entry entry : madrMap.entrySet()) {&#13;
			switch (entry.getKey()) {&#13;
			case "PropMADRAddressLine1":&#13;
				addDtl.put(&#13;
						(entry.getValue() == null || "".equals(entry.getValue()) ? JSONObject.NULL : entry.getValue()));&#13;
				break;&#13;
			case "PropMADRCountyName":&#13;
				addDtl.put(&#13;
						(entry.getValue() == null || "".equals(entry.getValue()) ? JSONObject.NULL : entry.getValue()));&#13;
				break;&#13;
			case "PropMADRCityTownName":&#13;
				addDtl.put(&#13;
						(entry.getValue() == null || "".equals(entry.getValue()) ? JSONObject.NULL : entry.getValue()));&#13;
				break;&#13;
			case "PropMADRStateProvinceName":&#13;
				addDtl.put(&#13;
						(entry.getValue() == null || "".equals(entry.getValue()) ? JSONObject.NULL : entry.getValue()));&#13;
				break;&#13;
			case "PropMADRPostalCode":&#13;
				addDtl.put(&#13;
						(entry.getValue() == null || "".equals(entry.getValue()) ? JSONObject.NULL : entry.getValue()));&#13;
				break;&#13;
			}&#13;
		}&#13;
String mailAddJSONStr = addObj.toString();&#13;
System.out.println(mailAddJSONStr);</objectValue>
<type>CONSTANT</type>
</item>
<item id="173" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="174">["cntryCde"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="175">variables["cntryCde"]</name>
<stringValue id="176">CountryCode</stringValue>
<type>VARIABLE</type>
</item>
<item id="177" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="178">["mailAddDG"]@java/lang/Object@</UITypeHint>
<input>true</input>
<name id="179">variables["mailAddDG"]</name>
<stringValue id="180">mailAddDG</stringValue>
<type>VARIABLE</type>
</item>
<item id="181" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="182">["mailAddJSONStr"]@java/lang/String@</UITypeHint>
<input>false</input>
<name id="183">variables["mailAddJSONStr"]</name>
<stringValue id="184">mailAddJSON</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
</parameters>
<sources id="185" type="java.util.HashSet">
<item id="186" type="com.j2fe.workflow.definition.Transition">
<name id="187">goto-next</name>
<source id="188">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="189">Start</name>
<nodeHandler>com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandler>
<nodeHandlerClass id="190">com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandlerClass>
<sources id="191" type="java.util.HashSet"/>
<targets id="192" type="java.util.HashSet">
<item idref="186" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>START</type>
</source>
<target idref="166"/>
</item>
</sources>
<targets id="193" type="java.util.HashSet">
<item idref="164" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="152"/>
</item>
</sources>
<targets id="194" type="java.util.HashSet">
<item idref="150" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="102"/>
</item>
</sources>
<targets id="195" type="java.util.HashSet">
<item idref="100" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="92"/>
</item>
</sources>
<targets id="196" type="java.util.HashSet">
<item id="197" type="com.j2fe.workflow.definition.Transition">
<name id="198">false</name>
<source idref="92"/>
<target id="199">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="200">Message</name>
<nodeHandler>com.j2fe.general.activities.BeanShellScript</nodeHandler>
<nodeHandlerClass id="201">com.j2fe.general.activities.BeanShellScript</nodeHandlerClass>
<parameters id="202" type="java.util.HashSet">
<item id="203" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="204">statements</name>
<stringValue id="205">import com.google.gson.JsonArray;&#13;
import com.google.gson.JsonElement;&#13;
import com.google.gson.JsonObject;&#13;
import com.google.gson.JsonParser;&#13;
import java.util.Calendar;&#13;
import com.google.gson.Gson;&#13;
import com.google.gson.GsonBuilder;&#13;
import com.google.gson.JsonArray;&#13;
&#13;
&#13;
			JsonParser parser = new JsonParser();&#13;
			JsonObject jsonObject = (JsonObject) parser.parse(tokenResponse);&#13;
			&#13;
			jsonObject.addProperty("ppry_oid",ppry_oid);&#13;
			&#13;
			Gson gson = new GsonBuilder().disableHtmlEscaping().create();&#13;
&#13;
			String[] data = new String[1];&#13;
			data[0] = gson.toJson(jsonObject);&#13;
			String dataGeo = data[0];&#13;
			</stringValue>
<type>CONSTANT</type>
</item>
<item id="206" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="207">variables["data"]</name>
<stringValue id="208">data</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="209" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="210">["dataGeo"]@java/lang/String@</UITypeHint>
<input>false</input>
<name id="211">variables["dataGeo"]</name>
<stringValue id="212">dataGeo</stringValue>
<type>VARIABLE</type>
</item>
<item id="213" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="214">["ppry_oid"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="215">variables["ppry_oid"]</name>
<stringValue id="216">PPRY_OID</stringValue>
<type>VARIABLE</type>
</item>
<item id="217" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="218">["tokenResponse"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="219">variables["tokenResponse"]</name>
<stringValue id="220">ResponseBody1</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
</parameters>
<sources id="221" type="java.util.HashSet">
<item idref="197" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="222" type="java.util.HashSet">
<item id="223" type="com.j2fe.workflow.definition.Transition">
<name id="224">goto-next</name>
<source idref="199"/>
<target id="225">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="226">Create Job New</name>
<nodeHandler>com.j2fe.streetlamp.activities.CreateJob</nodeHandler>
<nodeHandlerClass id="227">com.j2fe.streetlamp.activities.CreateJob</nodeHandlerClass>
<parameters id="228" type="java.util.HashSet">
<item id="229" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="230">configInfo</name>
<stringValue id="231">NRE_BF_INTL_Address</stringValue>
<type>CONSTANT</type>
</item>
<item id="232" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="233">flushImmediate</name>
<objectValue id="234" type="java.lang.Boolean">true</objectValue>
<type>CONSTANT</type>
</item>
<item id="235" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="236">jobId</name>
<stringValue id="237">Job Id</stringValue>
<type>VARIABLE</type>
</item>
<item id="238" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="239">messageType</name>
<stringValue id="240">NRE_BF_INTL_Address</stringValue>
<type>CONSTANT</type>
</item>
</parameters>
<sources id="241" type="java.util.HashSet">
<item idref="223" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="242" type="java.util.HashSet">
<item id="243" type="com.j2fe.workflow.definition.Transition">
<name id="244">goto-next</name>
<source idref="225"/>
<target id="245">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="246">Create Message Object Array</name>
<nodeHandler>com.j2fe.feeds.activities.CreateMessageArray</nodeHandler>
<nodeHandlerClass id="247">com.j2fe.feeds.activities.CreateMessageArray</nodeHandlerClass>
<parameters id="248" type="java.util.HashSet">
<item id="249" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="250">inputMessage</name>
<stringValue id="251">data</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="252" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="253">jobId</name>
<stringValue id="254">Job Id</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="255" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="256">jobIndex</name>
<objectValue id="257" type="java.lang.Integer">1</objectValue>
<type>CONSTANT</type>
</item>
<item id="258" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="259">message</name>
<stringValue id="260">Message</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="261" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="262">messageType</name>
<stringValue id="263">NRE_BF_INTL_Address</stringValue>
<type>CONSTANT</type>
</item>
<item id="264" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="265">["PPRY_OID"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="266">metaData["PPRY_OID"]</name>
<stringValue id="267">PPRY_OID</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="268" type="java.util.HashSet">
<item idref="243" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="269" type="java.util.HashSet">
<item id="270" type="com.j2fe.workflow.definition.Transition">
<name id="271">goto-next</name>
<source idref="245"/>
<target id="272">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="273">Bulk Processing</name>
<nodeHandler>com.j2fe.workflow.handler.impl.CallSubWorkflow</nodeHandler>
<nodeHandlerClass id="274">com.j2fe.workflow.handler.impl.CallSubWorkflow</nodeHandlerClass>
<parameters id="275" type="java.util.HashSet">
<item id="276" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="277">["JobId"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="278">input["JobId"]</name>
<stringValue id="279">Job Id</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="280" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="281">["Messages"]@[Lcom/j2fe/transport/Message;@</UITypeHint>
<input>true</input>
<name id="282">input["Messages"]</name>
<stringValue id="283">Message</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="284" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="285">name</name>
<stringValue id="286">Bulk Message Processing</stringValue>
<type>CONSTANT</type>
</item>
</parameters>
<sources id="287" type="java.util.HashSet">
<item idref="270" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="288" type="java.util.HashSet">
<item id="289" type="com.j2fe.workflow.definition.Transition">
<name id="290">goto-next</name>
<source idref="272"/>
<target id="291">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="292">Call Subworkflow </name>
<nodeHandler>com.j2fe.workflow.handler.impl.CallSubWorkflow</nodeHandler>
<nodeHandlerClass id="293">com.j2fe.workflow.handler.impl.CallSubWorkflow</nodeHandlerClass>
<parameters id="294" type="java.util.HashSet">
<item id="295" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="296">["Parent_JobID"]@java/lang/Object@</UITypeHint>
<input>true</input>
<name id="297">input["Parent_JobID"]</name>
<stringValue id="298">Job Id</stringValue>
<type>VARIABLE</type>
</item>
<item id="299" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="300">["ResponseInput"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="301">input["ResponseInput"]</name>
<stringValue id="302">dataGeo</stringValue>
<type>VARIABLE</type>
</item>
<item id="303" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="304">name</name>
<stringValue id="305">NRE_GetGeoCodeAddress</stringValue>
<type>CONSTANT</type>
</item>
</parameters>
<sources id="306" type="java.util.HashSet">
<item idref="289" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="307" type="java.util.HashSet">
<item id="308" type="com.j2fe.workflow.definition.Transition">
<name id="309">goto-next</name>
<source idref="291"/>
<target id="310">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="311">Close Job New</name>
<nodeHandler>com.j2fe.streetlamp.activities.CloseJob</nodeHandler>
<nodeHandlerClass id="312">com.j2fe.streetlamp.activities.CloseJob</nodeHandlerClass>
<parameters id="313" type="java.util.HashSet">
<item id="314" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="315">jobId</name>
<stringValue id="316">Job Id</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="317" type="java.util.HashSet">
<item idref="308" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="318" type="java.util.HashSet">
<item id="319" type="com.j2fe.workflow.definition.Transition">
<name id="320">goto-next</name>
<source idref="310"/>
<target idref="3"/>
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
</targets>
<type>ACTIVITY</type>
</target>
</item>
</targets>
<type>ACTIVITY</type>
</target>
</item>
<item idref="90" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>XORSPLIT</type>
</source>
<target idref="73"/>
</item>
</sources>
<targets id="321" type="java.util.HashSet">
<item idref="71" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="54"/>
</item>
</sources>
<targets id="322" type="java.util.HashSet">
<item idref="52" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="29"/>
</item>
</sources>
<targets id="323" type="java.util.HashSet">
<item idref="27" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="19"/>
</item>
</sources>
<targets id="324" type="java.util.HashSet">
<item idref="17" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="9"/>
</item>
</sources>
<targets id="325" type="java.util.HashSet">
<item idref="7" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="3"/>
</item>
<item idref="319" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="326" type="java.util.HashSet"/>
<type>END</type>
</endNode>
<forcePurgeAtEnd>false</forcePurgeAtEnd>
<group id="327">Custom/Processing</group>
<haltOnError>false</haltOnError>
<lastChangeUser id="328">user1</lastChangeUser>
<lastUpdate id="329">2025-02-26T12:38:17.000+0530</lastUpdate>
<name id="330">NRE_WF_PostVerifyAddress</name>
<optimize>true</optimize>
<parameter id="331" type="java.util.HashMap">
<entry>
<key id="332" type="java.lang.String">CountryCode</key>
<value id="333" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="334">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<input>true</input>
<output>false</output>
<required>true</required>
</value>
</entry>
<entry>
<key id="335" type="java.lang.String">PPRY_OID</key>
<value id="336" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="337">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<input>true</input>
<output>false</output>
<required>true</required>
</value>
</entry>
<entry>
<key id="338" type="java.lang.String">addTyp</key>
<value id="339" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="340">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="341">Address Type Field</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="342" type="java.lang.String">addTypDG</key>
<value id="343" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="344">java.util.Map</className>
<clazz>java.util.Map</clazz>
<description id="345">Address Type DataGroup</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="346" type="java.lang.String">mailAddDG</key>
<value id="347" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="348">java.util.Map</className>
<clazz>java.util.Map</clazz>
<description idref="2"/>
<input>true</input>
<output>false</output>
<required>true</required>
</value>
</entry>
</parameter>
<permissions id="349" type="java.util.HashSet"/>
<priority>50</priority>
<purgeAtEnd>true</purgeAtEnd>
<retries>0</retries>
<startNode idref="188"/>
<status>RELEASED</status>
<variables id="350" type="java.util.HashMap">
<entry>
<key id="351" type="java.lang.String">CountryCode</key>
<value id="352" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="353">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="354" type="java.lang.String">PPRY_OID</key>
<value id="355" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="356">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="357" type="java.lang.String">addTyp</key>
<value id="358" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="359">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="360">Address Type Field</description>
<persistent>true</persistent>
</value>
</entry>
<entry>
<key id="361" type="java.lang.String">addTypDG</key>
<value id="362" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="363">java.util.Map</className>
<clazz>java.util.Map</clazz>
<description id="364">Address Type DataGroup</description>
<persistent>true</persistent>
</value>
</entry>
<entry>
<key id="365" type="java.lang.String">mailAddDG</key>
<value id="366" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="367">java.util.Map</className>
<clazz>java.util.Map</clazz>
<description idref="2"/>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="368" type="java.lang.String">mailAddJSON</key>
<value id="369" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="370">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<persistent>false</persistent>
</value>
</entry>
</variables>
<version>29</version>
</com.j2fe.workflow.definition.Workflow>
</businessobject>
</goldensource-package>
