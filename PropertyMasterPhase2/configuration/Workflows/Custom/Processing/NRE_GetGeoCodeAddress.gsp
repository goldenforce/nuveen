<?xml version="1.0" encoding="UTF-8" standalone="no"?>
<goldensource-package version="8.8.1.64">
<package-comment/>
<businessobject displayString="11 - 20250226 - Handle Missing Place Id v2" type="com.j2fe.workflow.definition.Workflow">
<com.j2fe.workflow.definition.Workflow id="0">
<alwaysPersist>false</alwaysPersist>
<clustered>true</clustered>
<comment id="1">20250226 - Handle Missing Place Id v2</comment>
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
<objectValue id="115" type="com.j2fe.general.activities.HttpClientMethod">GET</objectValue>
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
<UITypeHint id="129">["place_id"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="130">queryParams["place_id"]</name>
<stringValue id="131">data1</stringValue>
<type>VARIABLE</type>
</item>
<item id="132" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="133">responseBody</name>
<stringValue id="134">ResponseBody1</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="135" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="136">responseByetArr</name>
<stringValue id="137">ResponseByteArray</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="138" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="139">responseHeaders</name>
<stringValue id="140">ResponseHeaders</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="141" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="142">statusCode</name>
<stringValue id="143">StatusCode</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="144" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="145">statusLine</name>
<stringValue id="146">SatusLine</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="147" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="148">url</name>
<stringValue id="149">https://maps.googleapis.com/maps/api/geocode/json</stringValue>
<type>CONSTANT</type>
</item>
</parameters>
<sources id="150" type="java.util.HashSet">
<item id="151" type="com.j2fe.workflow.definition.Transition">
<name id="152">goto-next</name>
<source id="153">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="154">Fetch MapsAPIKey</name>
<nodeHandler>com.j2fe.general.activities.BeanShellScript</nodeHandler>
<nodeHandlerClass id="155">com.j2fe.general.activities.BeanShellScript</nodeHandlerClass>
<parameters id="156" type="java.util.HashSet">
<item id="157" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="158">statements</name>
<stringValue id="159">import java.text.*;&#13;
&#13;
//get system properties for MapsAPIKey&#13;
String mapsAPIKey = System.getProperty("MapsAPIKey","AIzaSyDAOYBrI7MT3hiENNtyVl1oSKUXBestvQg");</stringValue>
<type>CONSTANT</type>
</item>
<item id="160" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="161">["mapsAPIKey"]@java/lang/String@</UITypeHint>
<input>false</input>
<name id="162">variables["mapsAPIKey"]</name>
<stringValue id="163">mapsAPIKey</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
</parameters>
<sources id="164" type="java.util.HashSet">
<item id="165" type="com.j2fe.workflow.definition.Transition">
<name id="166">false</name>
<source id="167">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="168">Is place_id available</name>
<nodeHandler>com.j2fe.general.activities.BeanShellScript</nodeHandler>
<nodeHandlerClass id="169">com.j2fe.general.activities.BeanShellScript</nodeHandlerClass>
<parameters id="170" type="java.util.HashSet">
<item id="171" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="172">statements</name>
<objectValue id="173" type="java.lang.String">import com.google.gson.JsonObject;&#13;
import com.google.gson.JsonParser;&#13;
&#13;
JsonParser parser = new JsonParser();&#13;
JsonObject jsonObject = (JsonObject) parser.parse(tokenResponse1);&#13;
&#13;
String data1 = null;&#13;
String errStr = null;&#13;
&#13;
&#13;
String ppry1 = jsonObject.get("ppry_oid").getAsString();&#13;
System.out.println("PPRY_OID: " + ppry1);&#13;
&#13;
// Check if "result" exists and is a JsonObject&#13;
if (jsonObject.has("result") &amp;&amp; jsonObject.get("result").isJsonObject()) &#13;
{&#13;
    JsonObject locObj = jsonObject.getAsJsonObject("result");&#13;
    // Check if "geocode" exists and is a JsonObject&#13;
    if (locObj.has("geocode") &amp;&amp; locObj.get("geocode").isJsonObject()) &#13;
	{&#13;
        JsonObject locObj1 = locObj.getAsJsonObject("geocode");&#13;
        // Check if "placeId" exists and is not null&#13;
        if (locObj1.has("placeId") &amp;&amp; !locObj1.get("placeId").isJsonNull())&#13;
		{&#13;
			data1 = locObj1.get("placeId").getAsString();&#13;
			System.out.println("Place ID: " + data1);&#13;
			return false;&#13;
		}&#13;
		else &#13;
		{&#13;
			errStr = "PlaceId not found or missing";&#13;
			System.out.println("Error Reported: " + errStr);&#13;
			return true;	&#13;
		}&#13;
    } else &#13;
	{&#13;
        errStr = "geocode object is missing";&#13;
	System.out.println("Error Reported: " + errStr);&#13;
		return true;&#13;
    }&#13;
} &#13;
else &#13;
{&#13;
    	errStr = "result object is missing";&#13;
	System.out.println("Error Reported: " + errStr);&#13;
	return true;&#13;
}&#13;
&#13;
&#13;
</objectValue>
<type>CONSTANT</type>
</item>
<item id="174" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="175">["data1"]@java/lang/String@</UITypeHint>
<input>false</input>
<name id="176">variables["data1"]</name>
<stringValue id="177">data1</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="178" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="179">["errStr"]@java/lang/String@</UITypeHint>
<input>false</input>
<name id="180">variables["errStr"]</name>
<stringValue id="181">MissingPlaceError</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="182" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="183">["ppry1"]@java/lang/String@</UITypeHint>
<input>false</input>
<name id="184">variables["ppry1"]</name>
<stringValue id="185">ppry1</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="186" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="187">["tokenResponse1"]@java/lang/Object@</UITypeHint>
<input>true</input>
<name id="188">variables["tokenResponse1"]</name>
<stringValue id="189">ResponseInput</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="190" type="java.util.HashSet">
<item id="191" type="com.j2fe.workflow.definition.Transition">
<name id="192">goto-next</name>
<source id="193">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="194">Start</name>
<nodeHandler>com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandler>
<nodeHandlerClass id="195">com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandlerClass>
<sources id="196" type="java.util.HashSet"/>
<targets id="197" type="java.util.HashSet">
<item idref="191" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>START</type>
</source>
<target idref="167"/>
</item>
</sources>
<targets id="198" type="java.util.HashSet">
<item idref="165" type="com.j2fe.workflow.definition.Transition"/>
<item id="199" type="com.j2fe.workflow.definition.Transition">
<name id="200">true</name>
<source idref="167"/>
<target id="201">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="202">Get Property Identifier</name>
<nodeHandler>com.j2fe.general.activities.database.DBQuery</nodeHandler>
<nodeHandlerClass id="203">com.j2fe.general.activities.database.DBQuery</nodeHandlerClass>
<parameters id="204" type="java.util.HashSet">
<item id="205" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="206">database</name>
<stringValue id="207">jdbc/GSDM-1</stringValue>
<type>REFERENCE</type>
</item>
<item id="208" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="209">[0]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="210">indexedParameters[0]</name>
<stringValue id="211">ppry1</stringValue>
<type>VARIABLE</type>
</item>
<item id="212" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="213">mappedResult</name>
<stringValue id="214">PropertyIdentifierDetails</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="215" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="216">querySQL</name>
<stringValue id="217">select case when ppty.prop_typ = 'Property' then propid.prop_id &#13;
when ppty.prop_typ = 'Building' then bldgid.prop_id else null end identifier,&#13;
case when ppty.prop_typ = 'Property' then propid.prop_id_ctxt_typ&#13;
when ppty.prop_typ = 'Building' then bldgid.prop_id_ctxt_typ else null end idtype from ft_T_ppry ppry &#13;
left join ft_t_ppid propid on (ppry.ppry_oid = propid.ppry_oid and propid.prop_id_ctxt_typ='PROP_ID')&#13;
left join ft_t_ppid bldgid on (ppry.ppry_oid = bldgid.ppry_oid and bldgid.prop_id_ctxt_typ='BLDNG_ID')&#13;
join ft_t_ppty ppty on (ppry.ppty_oid = ppty.ppty_oid)&#13;
where ppry.ppry_oid = ?</stringValue>
<type>CONSTANT</type>
</item>
</parameters>
<sources id="218" type="java.util.HashSet">
<item idref="199" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="219" type="java.util.HashSet">
<item id="220" type="com.j2fe.workflow.definition.Transition">
<name id="221">goto-next</name>
<source idref="201"/>
<target id="222">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="223">Create Transaction  #2</name>
<nodeHandler>com.j2fe.streetlamp.activities.CreateTransaction</nodeHandler>
<nodeHandlerClass id="224">com.j2fe.streetlamp.activities.CreateTransaction</nodeHandlerClass>
<parameters id="225" type="java.util.HashSet">
<item id="226" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="227">transactionId</name>
<stringValue id="228">MissingPlaceIdTransactionID</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
</parameters>
<sources id="229" type="java.util.HashSet">
<item idref="220" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="230" type="java.util.HashSet">
<item id="231" type="com.j2fe.workflow.definition.Transition">
<name id="232">goto-next</name>
<source idref="222"/>
<target id="233">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="234">Report Notification </name>
<nodeHandler>com.j2fe.streetlamp.activities.ReportNotification</nodeHandler>
<nodeHandlerClass id="235">com.j2fe.streetlamp.activities.ReportNotification</nodeHandlerClass>
<parameters id="236" type="java.util.HashSet">
<item id="237" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="238">applicationId</name>
<stringValue id="239">REST</stringValue>
<type>CONSTANT</type>
</item>
<item id="240" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="241">goldenCopy</name>
<stringValue id="242">jdbc/GSDM-1</stringValue>
<type>REFERENCE</type>
</item>
<item id="243" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="244">mainEntityId</name>
<stringValue id="245">PropertyIdentifierDetails</stringValue>
<type>VARIABLE</type>
<variablePart id="246">[0]["identifier"]</variablePart>
</item>
<item id="247" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="248">mainEntityIdContextType</name>
<stringValue id="249">PropertyIdentifierDetails</stringValue>
<type>VARIABLE</type>
<variablePart id="250">[0]["idtype"]</variablePart>
</item>
<item id="251" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="252">messageType</name>
<stringValue id="253">GSPlatform</stringValue>
<type>CONSTANT</type>
</item>
<item id="254" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="255">notificationId</name>
<stringValue id="256">90001</stringValue>
<type>CONSTANT</type>
</item>
<item id="257" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="258">["errortext"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="259">parameterValues["errortext"]</name>
<stringValue id="260">MissingPlaceError</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="261" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="262">partId</name>
<stringValue id="263">REST</stringValue>
<type>CONSTANT</type>
</item>
<item id="264" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="265">tableOid</name>
<stringValue id="266">ppry1</stringValue>
<type>VARIABLE</type>
</item>
<item id="267" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="268">tableType</name>
<stringValue id="269">PPRY</stringValue>
<type>CONSTANT</type>
</item>
<item id="270" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="271">transactionId</name>
<stringValue id="272">MissingPlaceIdTransactionID</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
</parameters>
<sources id="273" type="java.util.HashSet">
<item idref="231" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="274" type="java.util.HashSet">
<item id="275" type="com.j2fe.workflow.definition.Transition">
<name id="276">goto-next</name>
<source idref="233"/>
<target id="277">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="278">Close Transaction  #2</name>
<nodeHandler>com.j2fe.streetlamp.activities.CloseTransaction</nodeHandler>
<nodeHandlerClass id="279">com.j2fe.streetlamp.activities.CloseTransaction</nodeHandlerClass>
<parameters id="280" type="java.util.HashSet">
<item id="281" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="282">transactionId</name>
<stringValue id="283">MissingPlaceIdTransactionID</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
</parameters>
<sources id="284" type="java.util.HashSet">
<item idref="275" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="285" type="java.util.HashSet">
<item id="286" type="com.j2fe.workflow.definition.Transition">
<name id="287">goto-next</name>
<source idref="277"/>
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
<type>XORSPLIT</type>
</source>
<target idref="153"/>
</item>
</sources>
<targets id="288" type="java.util.HashSet">
<item idref="151" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="102"/>
</item>
</sources>
<targets id="289" type="java.util.HashSet">
<item idref="100" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="92"/>
</item>
</sources>
<targets id="290" type="java.util.HashSet">
<item id="291" type="com.j2fe.workflow.definition.Transition">
<name id="292">false</name>
<source idref="92"/>
<target id="293">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="294">Message</name>
<nodeHandler>com.j2fe.general.activities.BeanShellScript</nodeHandler>
<nodeHandlerClass id="295">com.j2fe.general.activities.BeanShellScript</nodeHandlerClass>
<parameters id="296" type="java.util.HashSet">
<item id="297" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="298">statements</name>
<objectValue id="299" type="java.lang.String">import com.google.gson.JsonArray;&#13;
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
			JsonArray results = jsonObject.get("results").getAsJsonArray();&#13;
			JsonObject result = results.get(0).getAsJsonObject();&#13;
			&#13;
			for (int i = 0; i &lt; result.get("address_components").getAsJsonArray().size(); i += 1) {	&#13;
				String newStr = new String();	&#13;
				JsonArray arrayJson = result.get("address_components").getAsJsonArray().get(i).get("types");&#13;
				for (int i = 0; i &lt; arrayJson.size(); i++) {&#13;
				String value = arrayJson.get(i).getAsString();&#13;
				newStr += value;&#13;
				}&#13;
				result.get("address_components").getAsJsonArray().get(i).addProperty("type",newStr);&#13;
			}&#13;
			&#13;
			for (int i = 0; i &lt; result.get("address_components").getAsJsonArray().size(); i += 1) {			    &#13;
				result.get("address_components").getAsJsonArray().get(i).getAsJsonObject().remove("types");&#13;
			}&#13;
&#13;
			result.remove("types");&#13;
			&#13;
			result.addProperty("ppry_oid",ppry_oid);&#13;
			&#13;
			Gson gson = new GsonBuilder().disableHtmlEscaping().create();&#13;
&#13;
			String[] data = new String[1];&#13;
			data[0] = gson.toJson(result);&#13;
			</objectValue>
<type>CONSTANT</type>
</item>
<item id="300" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="301">variables["data"]</name>
<stringValue id="302">data</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="303" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="304">["ppry_oid"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="305">variables["ppry_oid"]</name>
<stringValue id="306">ppry1</stringValue>
<type>VARIABLE</type>
</item>
<item id="307" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="308">["tokenResponse"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="309">variables["tokenResponse"]</name>
<stringValue id="310">ResponseBody1</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
</parameters>
<sources id="311" type="java.util.HashSet">
<item idref="291" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="312" type="java.util.HashSet">
<item id="313" type="com.j2fe.workflow.definition.Transition">
<name id="314">goto-next</name>
<source idref="293"/>
<target id="315">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="316">Create Job New</name>
<nodeHandler>com.j2fe.streetlamp.activities.CreateJob</nodeHandler>
<nodeHandlerClass id="317">com.j2fe.streetlamp.activities.CreateJob</nodeHandlerClass>
<parameters id="318" type="java.util.HashSet">
<item id="319" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="320">flushImmediate</name>
<stringValue id="321">true</stringValue>
<type>CONSTANT</type>
</item>
<item id="322" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="323">jobId</name>
<stringValue id="324">Job Id</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="325" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="326">messageType</name>
<stringValue id="327">NRE_GeoAddressAPI</stringValue>
<type>CONSTANT</type>
</item>
<item id="328" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="329">parentJobId</name>
<stringValue id="330">Parent_JobID</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="331" type="java.util.HashSet">
<item idref="313" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="332" type="java.util.HashSet">
<item id="333" type="com.j2fe.workflow.definition.Transition">
<name id="334">goto-next</name>
<source idref="315"/>
<target id="335">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="336">Create Message Object Array</name>
<nodeHandler>com.j2fe.feeds.activities.CreateMessageArray</nodeHandler>
<nodeHandlerClass id="337">com.j2fe.feeds.activities.CreateMessageArray</nodeHandlerClass>
<parameters id="338" type="java.util.HashSet">
<item id="339" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="340">inputMessage</name>
<stringValue id="341">data</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="342" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="343">jobId</name>
<stringValue id="344">Job Id</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="345" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="346">jobIndex</name>
<stringValue id="347">1</stringValue>
<type>CONSTANT</type>
</item>
<item id="348" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="349">message</name>
<stringValue id="350">Message</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="351" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="352">messageType</name>
<stringValue id="353">NRE_GeoAddressAPI</stringValue>
<type>CONSTANT</type>
</item>
<item id="354" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="355">["PPRY_OID"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="356">metaData["PPRY_OID"]</name>
<stringValue id="357">ppry1</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="358" type="java.util.HashSet">
<item idref="333" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="359" type="java.util.HashSet">
<item id="360" type="com.j2fe.workflow.definition.Transition">
<name id="361">goto-next</name>
<source idref="335"/>
<target id="362">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="363">Bulk Processing</name>
<nodeHandler>com.j2fe.workflow.handler.impl.CallSubWorkflow</nodeHandler>
<nodeHandlerClass id="364">com.j2fe.workflow.handler.impl.CallSubWorkflow</nodeHandlerClass>
<parameters id="365" type="java.util.HashSet">
<item id="366" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="367">["JobId"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="368">input["JobId"]</name>
<stringValue id="369">Job Id</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="370" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="371">["Messages"]@[Lcom/j2fe/transport/Message;@</UITypeHint>
<input>true</input>
<name id="372">input["Messages"]</name>
<stringValue id="373">Message</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="374" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="375">name</name>
<stringValue id="376">Bulk Message Processing</stringValue>
<type>CONSTANT</type>
</item>
</parameters>
<sources id="377" type="java.util.HashSet">
<item idref="360" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="378" type="java.util.HashSet">
<item id="379" type="com.j2fe.workflow.definition.Transition">
<name id="380">goto-next</name>
<source idref="362"/>
<target id="381">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="382">Close Job New</name>
<nodeHandler>com.j2fe.streetlamp.activities.CloseJob</nodeHandler>
<nodeHandlerClass id="383">com.j2fe.streetlamp.activities.CloseJob</nodeHandlerClass>
<parameters id="384" type="java.util.HashSet">
<item id="385" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="386">jobId</name>
<stringValue id="387">Job Id</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
</parameters>
<sources id="388" type="java.util.HashSet">
<item idref="379" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="389" type="java.util.HashSet">
<item id="390" type="com.j2fe.workflow.definition.Transition">
<name id="391">goto-next</name>
<source idref="381"/>
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
<item idref="90" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>XORSPLIT</type>
</source>
<target idref="73"/>
</item>
</sources>
<targets id="392" type="java.util.HashSet">
<item idref="71" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="54"/>
</item>
</sources>
<targets id="393" type="java.util.HashSet">
<item idref="52" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="29"/>
</item>
</sources>
<targets id="394" type="java.util.HashSet">
<item idref="27" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="19"/>
</item>
</sources>
<targets id="395" type="java.util.HashSet">
<item idref="17" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="9"/>
</item>
</sources>
<targets id="396" type="java.util.HashSet">
<item idref="7" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="3"/>
</item>
<item idref="390" type="com.j2fe.workflow.definition.Transition"/>
<item idref="286" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="397" type="java.util.HashSet"/>
<type>END</type>
</endNode>
<forcePurgeAtEnd>false</forcePurgeAtEnd>
<group id="398">Custom/Processing</group>
<haltOnError>false</haltOnError>
<lastChangeUser id="399">user1</lastChangeUser>
<lastUpdate id="400">2025-02-26T12:37:04.000+0530</lastUpdate>
<name id="401">NRE_GetGeoCodeAddress</name>
<optimize>true</optimize>
<parameter id="402" type="java.util.HashMap">
<entry>
<key id="403" type="java.lang.String">PPRY_OID</key>
<value id="404" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="405">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="406" type="java.lang.String">Parent_JobID</key>
<value id="407" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="408">java.lang.Object</className>
<clazz>java.lang.Object</clazz>
<description idref="2"/>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="409" type="java.lang.String">Place_ID</key>
<value id="410" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="411">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="412" type="java.lang.String">ResponseInput</key>
<value id="413" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="414">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
</parameter>
<permissions id="415" type="java.util.HashSet"/>
<priority>50</priority>
<purgeAtEnd>false</purgeAtEnd>
<retries>0</retries>
<startNode idref="193"/>
<status>RELEASED</status>
<variables id="416" type="java.util.HashMap">
<entry>
<key id="417" type="java.lang.String">PPRY_OID</key>
<value id="418" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="419">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="420" type="java.lang.String">Parent_JobID</key>
<value id="421" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="422">java.lang.Object</className>
<clazz>java.lang.Object</clazz>
<description idref="2"/>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="423" type="java.lang.String">Place_ID</key>
<value id="424" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="425">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="426" type="java.lang.String">ResponseInput</key>
<value id="427" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="428">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="429" type="java.lang.String">mapsAPIKey</key>
<value id="430" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="431">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<persistent>false</persistent>
</value>
</entry>
</variables>
<version>11</version>
</com.j2fe.workflow.definition.Workflow>
</businessobject>
</goldensource-package>
