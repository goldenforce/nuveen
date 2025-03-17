<?xml version="1.0" encoding="UTF-8" standalone="no"?>
<goldensource-package version="8.8.1.64">
<package-comment/>
<businessobject displayString="46 - 20250303 - Handling Missing Place Id v2 - For Each Split" type="com.j2fe.workflow.definition.Workflow">
<com.j2fe.workflow.definition.Workflow id="0">
<alwaysPersist>false</alwaysPersist>
<clustered>true</clustered>
<comment id="1">20250303 - Handling Missing Place Id v2 - For Each Split</comment>
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
<name id="8">0</name>
<source id="9">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="10">Switch Case </name>
<nodeHandler>com.j2fe.workflow.handler.impl.SwitchCaseSplit</nodeHandler>
<nodeHandlerClass id="11">com.j2fe.workflow.handler.impl.SwitchCaseSplit</nodeHandlerClass>
<parameters id="12" type="java.util.HashSet">
<item id="13" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="14">caseItem</name>
<stringValue id="15">addressGeoMap</stringValue>
<type>VARIABLE</type>
<variablePart id="16">[0]</variablePart>
</item>
<item id="17" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="18">defaultItem</name>
<stringValue id="19">1</stringValue>
<type>CONSTANT</type>
</item>
<item id="20" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="21">nullTransition</name>
<stringValue id="22">0</stringValue>
<type>CONSTANT</type>
</item>
</parameters>
<sources id="23" type="java.util.HashSet">
<item id="24" type="com.j2fe.workflow.definition.Transition">
<name id="25">end-loop</name>
<source id="26">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="27">For Loop Properties</name>
<nodeHandler>com.j2fe.workflow.handler.impl.ForEach</nodeHandler>
<nodeHandlerClass id="28">com.j2fe.workflow.handler.impl.ForEach</nodeHandlerClass>
<parameters id="29" type="java.util.HashSet">
<item id="30" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="31">counter</name>
<stringValue id="32">cntr</stringValue>
<type>VARIABLE</type>
</item>
<item id="33" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="34">counter</name>
<stringValue id="35">cntr</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="36" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="37">input</name>
<stringValue id="38">addrMap</stringValue>
<type>VARIABLE</type>
</item>
<item id="39" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="40">output</name>
<stringValue id="41">Output</stringValue>
<type>VARIABLE</type>
</item>
<item id="42" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="43">outputObjects</name>
<stringValue id="44">IncrementObj</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="45" type="java.util.HashSet">
<item id="46" type="com.j2fe.workflow.definition.Transition">
<name id="47">goto-next</name>
<source id="48">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description id="49">Automatically generated</description>
<directJoin>false</directJoin>
<name id="50">Merge</name>
<nodeHandler>com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandler>
<nodeHandlerClass id="51">com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandlerClass>
<sources id="52" type="java.util.HashSet">
<item id="53" type="com.j2fe.workflow.definition.Transition">
<name id="54">empty</name>
<source id="55">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="56">Array Helper </name>
<nodeHandler>com.j2fe.general.activities.ArrayHelper</nodeHandler>
<nodeHandlerClass id="57">com.j2fe.general.activities.ArrayHelper</nodeHandlerClass>
<parameters id="58" type="java.util.HashSet">
<item id="59" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="60">addElements</name>
<stringValue id="61">data</stringValue>
<type>VARIABLE</type>
</item>
<item id="62" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="63">array</name>
<stringValue id="64">addressMap</stringValue>
<type>VARIABLE</type>
</item>
<item id="65" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="66">array</name>
<stringValue id="67">addressMap</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="68" type="java.util.HashSet">
<item id="69" type="com.j2fe.workflow.definition.Transition">
<name id="70">ToSplit</name>
<source id="71">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description id="72">Automatically generated</description>
<directJoin>false</directJoin>
<name id="73">Merge</name>
<nodeHandler>com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandler>
<nodeHandlerClass id="74">com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandlerClass>
<sources id="75" type="java.util.HashSet">
<item id="76" type="com.j2fe.workflow.definition.Transition">
<name id="77">empty</name>
<source id="78">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="79">Array Helper </name>
<nodeHandler>com.j2fe.general.activities.ArrayHelper</nodeHandler>
<nodeHandlerClass id="80">com.j2fe.general.activities.ArrayHelper</nodeHandlerClass>
<parameters id="81" type="java.util.HashSet">
<item id="82" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="83">addElements</name>
<stringValue id="84">dataGeoMap</stringValue>
<type>VARIABLE</type>
</item>
<item id="85" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="86">array</name>
<stringValue id="87">addressGeoMap</stringValue>
<type>VARIABLE</type>
</item>
<item id="88" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="89">array</name>
<stringValue id="90">addressGeoMap</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
</parameters>
<sources id="91" type="java.util.HashSet">
<item id="92" type="com.j2fe.workflow.definition.Transition">
<name id="93">goto-next</name>
<source id="94">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="95">Message</name>
<nodeHandler>com.j2fe.general.activities.BeanShellScript</nodeHandler>
<nodeHandlerClass id="96">com.j2fe.general.activities.BeanShellScript</nodeHandlerClass>
<parameters id="97" type="java.util.HashSet">
<item id="98" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="99">statements</name>
<objectValue id="100" type="java.lang.String">import com.google.gson.JsonArray;&#13;
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
			String[] dataGeoMap = new String[1];&#13;
			dataGeoMap[0] = gson.toJson(result);&#13;
			</objectValue>
<type>CONSTANT</type>
</item>
<item id="101" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="102">variables["dataGeoMap"]</name>
<stringValue id="103">dataGeoMap</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="104" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="105">["ppry_oid"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="106">variables["ppry_oid"]</name>
<stringValue id="107">ppry1</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="108" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="109">["tokenResponse"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="110">variables["tokenResponse"]</name>
<stringValue id="111">ResponseBody2</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="112" type="java.util.HashSet">
<item id="113" type="com.j2fe.workflow.definition.Transition">
<name id="114">false</name>
<source id="115">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="116">Is Null </name>
<nodeHandler>com.j2fe.general.activities.IsNull</nodeHandler>
<nodeHandlerClass id="117">com.j2fe.general.activities.IsNull</nodeHandlerClass>
<parameters id="118" type="java.util.HashSet">
<item id="119" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="120">input</name>
<stringValue id="121">ResponseBody2</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="122" type="java.util.HashSet">
<item id="123" type="com.j2fe.workflow.definition.Transition">
<name id="124">goto-next</name>
<source id="125">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="126">GeoCode API</name>
<nodeHandler>com.j2fe.general.activities.HttpClient</nodeHandler>
<nodeHandlerClass id="127">com.j2fe.general.activities.HttpClient</nodeHandlerClass>
<parameters id="128" type="java.util.HashSet">
<item id="129" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="130">characterSet</name>
<stringValue id="131">CharacterSet</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="132" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="133">["content-type"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="134">headers["content-type"]</name>
<stringValue id="135">application/json</stringValue>
<type>CONSTANT</type>
</item>
<item id="136" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="137">httpMethod</name>
<stringValue id="138">GET</stringValue>
<type>CONSTANT</type>
</item>
<item id="139" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="140">["http.proxyHost"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="141">proxySettings["http.proxyHost"]</name>
<stringValue id="142">ilz-prod-ue1-bcpxy-lb.aws.tiaa-cref.org</stringValue>
<type>CONSTANT</type>
</item>
<item id="143" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="144">["http.proxyPort"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="145">proxySettings["http.proxyPort"]</name>
<stringValue id="146">8080</stringValue>
<type>CONSTANT</type>
</item>
<item id="147" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="148">["key"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="149">queryParams["key"]</name>
<stringValue id="150">mapsAPIKey</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="151" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="152">["place_id"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="153">queryParams["place_id"]</name>
<stringValue id="154">data1</stringValue>
<type>VARIABLE</type>
</item>
<item id="155" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="156">responseBody</name>
<stringValue id="157">ResponseBody2</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="158" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="159">responseByetArr</name>
<stringValue id="160">ResponseByteArray</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="161" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="162">responseHeaders</name>
<stringValue id="163">ResponseHeaders</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="164" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="165">statusCode</name>
<stringValue id="166">StatusCode</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="167" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="168">statusLine</name>
<stringValue id="169">SatusLine</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="170" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="171">url</name>
<stringValue id="172">https://maps.googleapis.com/maps/api/geocode/json</stringValue>
<type>CONSTANT</type>
</item>
</parameters>
<sources id="173" type="java.util.HashSet">
<item id="174" type="com.j2fe.workflow.definition.Transition">
<name id="175">false</name>
<source id="176">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="177">Is place_id available</name>
<nodeHandler>com.j2fe.general.activities.BeanShellScript</nodeHandler>
<nodeHandlerClass id="178">com.j2fe.general.activities.BeanShellScript</nodeHandlerClass>
<parameters id="179" type="java.util.HashSet">
<item id="180" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="181">statements</name>
<objectValue id="182" type="java.lang.String">import com.google.gson.JsonObject;&#13;
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
			errStr = "PlaceId is missing from the response.";&#13;
			System.out.println(errStr);&#13;
			return true;	&#13;
		}&#13;
    } else &#13;
	{&#13;
        errStr = "Geocode object is missing from the response.";&#13;
		System.out.println(errStr);&#13;
		return true;&#13;
    }&#13;
} &#13;
else &#13;
{&#13;
    errStr = "Result object is missing from the response.";&#13;
	System.out.println(errStr);&#13;
	return true;&#13;
}&#13;
&#13;
&#13;
</objectValue>
<type>CONSTANT</type>
</item>
<item id="183" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="184">["data1"]@java/lang/String@</UITypeHint>
<input>false</input>
<name id="185">variables["data1"]</name>
<stringValue id="186">data1</stringValue>
<type>VARIABLE</type>
</item>
<item id="187" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="188">["errStr"]@java/lang/String@</UITypeHint>
<input>false</input>
<name id="189">variables["errStr"]</name>
<stringValue id="190">MissingPlaceError</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="191" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="192">["ppry1"]@java/lang/String@</UITypeHint>
<input>false</input>
<name id="193">variables["ppry1"]</name>
<stringValue id="194">ppry1</stringValue>
<type>VARIABLE</type>
</item>
<item id="195" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="196">["tokenResponse1"]@java/lang/Object@</UITypeHint>
<input>true</input>
<name id="197">variables["tokenResponse1"]</name>
<stringValue id="198">dataGeo</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="199" type="java.util.HashSet">
<item id="200" type="com.j2fe.workflow.definition.Transition">
<name id="201">goto-next</name>
<source id="202">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="203">Message</name>
<nodeHandler>com.j2fe.general.activities.BeanShellScript</nodeHandler>
<nodeHandlerClass id="204">com.j2fe.general.activities.BeanShellScript</nodeHandlerClass>
<parameters id="205" type="java.util.HashSet">
<item id="206" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="207">statements</name>
<stringValue id="208">import com.google.gson.JsonArray;&#13;
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
			jsonObject.addProperty("ppry_oid",ppry_oid[0]);&#13;
			&#13;
			Gson gson = new GsonBuilder().disableHtmlEscaping().create();&#13;
&#13;
			String[] data = new String[1];&#13;
			data[0] = gson.toJson(jsonObject);&#13;
			String dataGeo = data[0];</stringValue>
<type>CONSTANT</type>
</item>
<item id="209" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="210">variables["data"]</name>
<stringValue id="211">data</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="212" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="213">["dataGeo"]@java/lang/Object@</UITypeHint>
<input>false</input>
<name id="214">variables["dataGeo"]</name>
<stringValue id="215">dataGeo</stringValue>
<type>VARIABLE</type>
</item>
<item id="216" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="217">["ppry_oid"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="218">variables["ppry_oid"]</name>
<stringValue id="219">Output</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="220" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="221">["tokenResponse"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="222">variables["tokenResponse"]</name>
<stringValue id="223">ResponseBody1</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
</parameters>
<sources id="224" type="java.util.HashSet">
<item id="225" type="com.j2fe.workflow.definition.Transition">
<name id="226">false</name>
<source id="227">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="228">Is Null </name>
<nodeHandler>com.j2fe.general.activities.IsNull</nodeHandler>
<nodeHandlerClass id="229">com.j2fe.general.activities.IsNull</nodeHandlerClass>
<parameters id="230" type="java.util.HashSet">
<item id="231" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="232">input</name>
<stringValue id="233">ResponseBody1</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
</parameters>
<sources id="234" type="java.util.HashSet">
<item id="235" type="com.j2fe.workflow.definition.Transition">
<name id="236">false</name>
<source id="237">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="238">Is Error Response ?</name>
<nodeHandler>com.j2fe.general.activities.BeanShellScript</nodeHandler>
<nodeHandlerClass id="239">com.j2fe.general.activities.BeanShellScript</nodeHandlerClass>
<parameters id="240" type="java.util.HashSet">
<item id="241" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="242">statements</name>
<stringValue id="243">if(code &gt;= 400)&#13;
{&#13;
	return true;	&#13;
}&#13;
else&#13;
{&#13;
	return false;&#13;
}</stringValue>
<type>CONSTANT</type>
</item>
<item id="244" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="245">["code"]@java/lang/Integer@</UITypeHint>
<input>true</input>
<name id="246">variables["code"]</name>
<stringValue id="247">StatusCode</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="248" type="java.util.HashSet">
<item id="249" type="com.j2fe.workflow.definition.Transition">
<name id="250">goto-next</name>
<source id="251">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="252">Address Validation API</name>
<nodeHandler>com.j2fe.general.activities.HttpClient</nodeHandler>
<nodeHandlerClass id="253">com.j2fe.general.activities.HttpClient</nodeHandlerClass>
<parameters id="254" type="java.util.HashSet">
<item id="255" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="256">characterSet</name>
<stringValue id="257">CharacterSet</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="258" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="259">["content-type"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="260">headers["content-type"]</name>
<stringValue id="261">application/json</stringValue>
<type>CONSTANT</type>
</item>
<item id="262" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="263">httpMethod</name>
<stringValue id="264">POST</stringValue>
<type>CONSTANT</type>
</item>
<item id="265" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="266">["http.proxyHost"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="267">proxySettings["http.proxyHost"]</name>
<stringValue id="268">ilz-prod-ue1-bcpxy-lb.aws.tiaa-cref.org</stringValue>
<type>CONSTANT</type>
</item>
<item id="269" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="270">["http.proxyPort"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="271">proxySettings["http.proxyPort"]</name>
<stringValue id="272">8080</stringValue>
<type>CONSTANT</type>
</item>
<item id="273" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="274">["key"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="275">queryParams["key"]</name>
<stringValue id="276">mapsAPIKey</stringValue>
<type>VARIABLE</type>
</item>
<item id="277" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="278">requestBody</name>
<stringValue id="279">mailAddJSON</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="280" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="281">responseBody</name>
<stringValue id="282">ResponseBody1</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="283" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="284">responseByetArr</name>
<stringValue id="285">ResponseByteArray</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="286" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="287">responseHeaders</name>
<stringValue id="288">ResponseHeaders</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="289" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="290">statusCode</name>
<stringValue id="291">StatusCode</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="292" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="293">statusLine</name>
<stringValue id="294">SatusLine</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="295" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="296">url</name>
<stringValue id="297">https://addressvalidation.googleapis.com/v1:validateAddress</stringValue>
<type>CONSTANT</type>
</item>
</parameters>
<sources id="298" type="java.util.HashSet">
<item id="299" type="com.j2fe.workflow.definition.Transition">
<name id="300">goto-next</name>
<source id="301">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="302">Mailing Address JSON</name>
<nodeHandler>com.j2fe.general.activities.BeanShellScript</nodeHandler>
<nodeHandlerClass id="303">com.j2fe.general.activities.BeanShellScript</nodeHandlerClass>
<parameters id="304" type="java.util.HashSet">
<item id="305" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="306">statements</name>
<objectValue id="307" type="java.lang.String">import org.json.JSONObject;&#13;
import org.json.JSONArray;&#13;
import java.nio.charset.StandardCharsets;&#13;
&#13;
String o_ppryOid = new String(PropMADRAddressLine1[0].getBytes(StandardCharsets.UTF_8), StandardCharsets.UTF_8);&#13;
&#13;
JSONObject addObj = new JSONObject();&#13;
JSONObject addAtt = new JSONObject();&#13;
addObj.put("address", addAtt);&#13;
addAtt.put("sortingCode", "");&#13;
&#13;
JSONArray addDtl = new JSONArray();&#13;
addAtt.put("addressLines", addDtl);&#13;
&#13;
// Function to encode in UTF-8&#13;
for (int i : new int[]{9, 2, 4, 5, 6, 7, 8}) {&#13;
    if (PropMADRAddressLine1[i] == null || PropMADRAddressLine1[i].isEmpty()) {&#13;
        addDtl.put(JSONObject.NULL);&#13;
    } else {&#13;
        String utf8EncodedValue = new String(PropMADRAddressLine1[i].getBytes(StandardCharsets.UTF_8), StandardCharsets.UTF_8);&#13;
        addDtl.put(utf8EncodedValue);&#13;
    }&#13;
}&#13;
&#13;
System.out.println(PropMADRAddressLine1[7]);&#13;
&#13;
// Convert JSON object to UTF-8 string&#13;
String mailAddJSONStr = new String(addObj.toString().getBytes(StandardCharsets.UTF_8), StandardCharsets.UTF_8);&#13;
&#13;
System.out.println(mailAddJSONStr);&#13;
</objectValue>
<type>CONSTANT</type>
</item>
<item id="308" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="309">["PropMADRAddressLine1"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="310">variables["PropMADRAddressLine1"]</name>
<stringValue id="311">Output</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="312" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="313">["mailAddJSONStr"]@java/lang/String@</UITypeHint>
<input>false</input>
<name id="314">variables["mailAddJSONStr"]</name>
<stringValue id="315">mailAddJSON</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="316" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="317">["o_ppryOid"]@java/lang/String@</UITypeHint>
<input>false</input>
<name id="318">variables["o_ppryOid"]</name>
<stringValue id="319">o_ppryOid</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="320" type="java.util.HashSet">
<item id="321" type="com.j2fe.workflow.definition.Transition">
<name id="322">loop</name>
<source idref="26"/>
<target idref="301"/>
</item>
</sources>
<targets id="323" type="java.util.HashSet">
<item idref="299" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="251"/>
</item>
</sources>
<targets id="324" type="java.util.HashSet">
<item idref="249" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="237"/>
</item>
</sources>
<targets id="325" type="java.util.HashSet">
<item idref="235" type="com.j2fe.workflow.definition.Transition"/>
<item id="326" type="com.j2fe.workflow.definition.Transition">
<name id="327">true</name>
<source idref="237"/>
<target id="328">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="329">Get Property Identifier</name>
<nodeHandler>com.j2fe.general.activities.database.DBQuery</nodeHandler>
<nodeHandlerClass id="330">com.j2fe.general.activities.database.DBQuery</nodeHandlerClass>
<parameters id="331" type="java.util.HashSet">
<item id="332" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="333">database</name>
<stringValue id="334">jdbc/GSDM-1</stringValue>
<type>REFERENCE</type>
</item>
<item id="335" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="336">[0]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="337">indexedParameters[0]</name>
<stringValue id="338">o_ppryOid</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="339" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="340">mappedResult</name>
<stringValue id="341">PropertyIdentifierDetails</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="342" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="343">querySQL</name>
<stringValue id="344">select case when ppty.prop_typ = 'Property' then propid.prop_id &#13;
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
<sources id="345" type="java.util.HashSet">
<item idref="326" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="346" type="java.util.HashSet">
<item id="347" type="com.j2fe.workflow.definition.Transition">
<name id="348">goto-next</name>
<source idref="328"/>
<target id="349">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="350">Create Transaction  for Address verification</name>
<nodeHandler>com.j2fe.streetlamp.activities.CreateTransaction</nodeHandler>
<nodeHandlerClass id="351">com.j2fe.streetlamp.activities.CreateTransaction</nodeHandlerClass>
<parameters id="352" type="java.util.HashSet">
<item id="353" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="354">originalCustomMetadata</name>
<stringValue id="355">OriginalCustomMetadata</stringValue>
<type>VARIABLE</type>
</item>
<item id="356" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="357">originalMessage</name>
<stringValue id="358">OriginalMessage</stringValue>
<type>VARIABLE</type>
</item>
<item id="359" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="360">originalMessageType</name>
<stringValue id="361">OriginalMessageType</stringValue>
<type>VARIABLE</type>
</item>
<item id="362" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="363">transactionId</name>
<stringValue id="364">TransactionID</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
</parameters>
<sources id="365" type="java.util.HashSet">
<item idref="347" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="366" type="java.util.HashSet">
<item id="367" type="com.j2fe.workflow.definition.Transition">
<name id="368">goto-next</name>
<source idref="349"/>
<target id="369">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="370">Report Notification for Address Verification</name>
<nodeHandler>com.j2fe.streetlamp.activities.ReportNotification</nodeHandler>
<nodeHandlerClass id="371">com.j2fe.streetlamp.activities.ReportNotification</nodeHandlerClass>
<parameters id="372" type="java.util.HashSet">
<item id="373" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="374">applicationId</name>
<stringValue id="375">REST</stringValue>
<type>CONSTANT</type>
</item>
<item id="376" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="377">goldenCopy</name>
<stringValue id="378">jdbc/GSDM-1</stringValue>
<type>REFERENCE</type>
</item>
<item id="379" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="380">mainEntityId</name>
<stringValue id="381">PropertyIdentifierDetails</stringValue>
<type>VARIABLE</type>
<variablePart id="382">[0]["identifier"]</variablePart>
</item>
<item id="383" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="384">mainEntityIdContextType</name>
<stringValue id="385">PropertyIdentifierDetails</stringValue>
<type>VARIABLE</type>
<variablePart id="386">[0]["idtype"]</variablePart>
</item>
<item id="387" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="388">messageType</name>
<stringValue id="389">GSPlatform</stringValue>
<type>CONSTANT</type>
</item>
<item id="390" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="391">notificationId</name>
<objectValue id="392" type="java.lang.Integer">90001</objectValue>
<type>CONSTANT</type>
</item>
<item id="393" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="394">["errortext"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="395">parameterValues["errortext"]</name>
<stringValue id="396">ResponseBody1</stringValue>
<type>VARIABLE</type>
</item>
<item id="397" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="398">partId</name>
<stringValue id="399">REST</stringValue>
<type>CONSTANT</type>
</item>
<item id="400" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="401">tableOid</name>
<stringValue id="402">o_ppryOid</stringValue>
<type>VARIABLE</type>
</item>
<item id="403" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="404">tableType</name>
<stringValue id="405">PPRY</stringValue>
<type>CONSTANT</type>
</item>
<item id="406" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="407">transactionId</name>
<stringValue id="408">TransactionID</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="409" type="java.util.HashSet">
<item idref="367" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="410" type="java.util.HashSet">
<item id="411" type="com.j2fe.workflow.definition.Transition">
<name id="412">goto-next</name>
<source idref="369"/>
<target id="413">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="414">Close Transaction  for Address Verification</name>
<nodeHandler>com.j2fe.streetlamp.activities.CloseTransaction</nodeHandler>
<nodeHandlerClass id="415">com.j2fe.streetlamp.activities.CloseTransaction</nodeHandlerClass>
<parameters id="416" type="java.util.HashSet">
<item id="417" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="418">transactionId</name>
<stringValue id="419">TransactionID</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="420" type="java.util.HashSet">
<item idref="411" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="421" type="java.util.HashSet">
<item id="422" type="com.j2fe.workflow.definition.Transition">
<name id="423">goto-next</name>
<source idref="413"/>
<target idref="48"/>
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
<target idref="227"/>
</item>
</sources>
<targets id="424" type="java.util.HashSet">
<item idref="225" type="com.j2fe.workflow.definition.Transition"/>
<item id="425" type="com.j2fe.workflow.definition.Transition">
<name id="426">true</name>
<source idref="227"/>
<target idref="48"/>
</item>
</targets>
<type>XORSPLIT</type>
</source>
<target idref="202"/>
</item>
</sources>
<targets id="427" type="java.util.HashSet">
<item idref="200" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="176"/>
</item>
</sources>
<targets id="428" type="java.util.HashSet">
<item idref="174" type="com.j2fe.workflow.definition.Transition"/>
<item id="429" type="com.j2fe.workflow.definition.Transition">
<name id="430">true</name>
<source idref="176"/>
<target id="431">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="432">Get Property Identifier</name>
<nodeHandler>com.j2fe.general.activities.database.DBQuery</nodeHandler>
<nodeHandlerClass id="433">com.j2fe.general.activities.database.DBQuery</nodeHandlerClass>
<parameters id="434" type="java.util.HashSet">
<item id="435" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="436">database</name>
<stringValue id="437">jdbc/GSDM-1</stringValue>
<type>REFERENCE</type>
</item>
<item id="438" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="439">[0]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="440">indexedParameters[0]</name>
<stringValue id="441">o_ppryOid</stringValue>
<type>VARIABLE</type>
</item>
<item id="442" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="443">mappedResult</name>
<stringValue id="444">PropertyIdentifierDetails</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="445" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="446">querySQL</name>
<stringValue id="447">select case when ppty.prop_typ = 'Property' then propid.prop_id &#13;
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
<sources id="448" type="java.util.HashSet">
<item idref="429" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="449" type="java.util.HashSet">
<item id="450" type="com.j2fe.workflow.definition.Transition">
<name id="451">goto-next</name>
<source idref="431"/>
<target id="452">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="453">Create Transaction for GeoCode</name>
<nodeHandler>com.j2fe.streetlamp.activities.CreateTransaction</nodeHandler>
<nodeHandlerClass id="454">com.j2fe.streetlamp.activities.CreateTransaction</nodeHandlerClass>
<parameters id="455" type="java.util.HashSet">
<item id="456" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="457">transactionId</name>
<stringValue id="458">MissingPlaceIdTransactionID</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
</parameters>
<sources id="459" type="java.util.HashSet">
<item idref="450" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="460" type="java.util.HashSet">
<item id="461" type="com.j2fe.workflow.definition.Transition">
<name id="462">goto-next</name>
<source idref="452"/>
<target id="463">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="464">Report Notification  for GeoCode</name>
<nodeHandler>com.j2fe.streetlamp.activities.ReportNotification</nodeHandler>
<nodeHandlerClass id="465">com.j2fe.streetlamp.activities.ReportNotification</nodeHandlerClass>
<parameters id="466" type="java.util.HashSet">
<item id="467" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="468">applicationId</name>
<stringValue id="469">REST</stringValue>
<type>CONSTANT</type>
</item>
<item id="470" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="471">goldenCopy</name>
<stringValue id="472">jdbc/GSDM-1</stringValue>
<type>REFERENCE</type>
</item>
<item id="473" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="474">mainEntityId</name>
<stringValue id="475">PropertyIdentifierDetails</stringValue>
<type>VARIABLE</type>
<variablePart id="476">[0]["identifier"]</variablePart>
</item>
<item id="477" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="478">mainEntityIdContextType</name>
<stringValue id="479">PropertyIdentifierDetails</stringValue>
<type>VARIABLE</type>
<variablePart id="480">[0]["idtype"]</variablePart>
</item>
<item id="481" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="482">messageType</name>
<stringValue id="483">GSPlatform</stringValue>
<type>CONSTANT</type>
</item>
<item id="484" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="485">notificationId</name>
<stringValue id="486">90001</stringValue>
<type>CONSTANT</type>
</item>
<item id="487" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="488">["errortext"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="489">parameterValues["errortext"]</name>
<stringValue id="490">MissingPlaceError</stringValue>
<type>VARIABLE</type>
</item>
<item id="491" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="492">partId</name>
<stringValue id="493">REST</stringValue>
<type>CONSTANT</type>
</item>
<item id="494" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="495">tableOid</name>
<stringValue id="496">o_ppryOid</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="497" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="498">tableType</name>
<stringValue id="499">PPRY</stringValue>
<type>CONSTANT</type>
</item>
<item id="500" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="501">transactionId</name>
<stringValue id="502">MissingPlaceIdTransactionID</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="503" type="java.util.HashSet">
<item idref="461" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="504" type="java.util.HashSet">
<item id="505" type="com.j2fe.workflow.definition.Transition">
<name id="506">goto-next</name>
<source idref="463"/>
<target id="507">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="508">Close Transaction for GeoCode</name>
<nodeHandler>com.j2fe.streetlamp.activities.CloseTransaction</nodeHandler>
<nodeHandlerClass id="509">com.j2fe.streetlamp.activities.CloseTransaction</nodeHandlerClass>
<parameters id="510" type="java.util.HashSet">
<item id="511" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="512">transactionId</name>
<stringValue id="513">MissingPlaceIdTransactionID</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="514" type="java.util.HashSet">
<item idref="505" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="515" type="java.util.HashSet">
<item id="516" type="com.j2fe.workflow.definition.Transition">
<name id="517">goto-next</name>
<source idref="507"/>
<target idref="71"/>
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
<target idref="125"/>
</item>
</sources>
<targets id="518" type="java.util.HashSet">
<item idref="123" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="115"/>
</item>
</sources>
<targets id="519" type="java.util.HashSet">
<item idref="113" type="com.j2fe.workflow.definition.Transition"/>
<item id="520" type="com.j2fe.workflow.definition.Transition">
<name id="521">true</name>
<source idref="115"/>
<target idref="71"/>
</item>
</targets>
<type>XORSPLIT</type>
</source>
<target idref="94"/>
</item>
</sources>
<targets id="522" type="java.util.HashSet">
<item idref="92" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="78"/>
</item>
</sources>
<targets id="523" type="java.util.HashSet">
<item idref="76" type="com.j2fe.workflow.definition.Transition"/>
<item id="524" type="com.j2fe.workflow.definition.Transition">
<name id="525">not-empty</name>
<source idref="78"/>
<target idref="71"/>
</item>
</targets>
<type>XORSPLIT</type>
</source>
<target idref="71"/>
</item>
<item idref="516" type="com.j2fe.workflow.definition.Transition"/>
<item idref="524" type="com.j2fe.workflow.definition.Transition"/>
<item idref="520" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="526" type="java.util.HashSet">
<item idref="69" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="55"/>
</item>
</sources>
<targets id="527" type="java.util.HashSet">
<item idref="53" type="com.j2fe.workflow.definition.Transition"/>
<item id="528" type="com.j2fe.workflow.definition.Transition">
<name id="529">not-empty</name>
<source idref="55"/>
<target idref="48"/>
</item>
</targets>
<type>XORSPLIT</type>
</source>
<target idref="48"/>
</item>
<item idref="422" type="com.j2fe.workflow.definition.Transition"/>
<item id="530" type="com.j2fe.workflow.definition.Transition">
<name id="531">goto-next</name>
<source id="532">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="533">Fetch MapsAPIKey</name>
<nodeHandler>com.j2fe.general.activities.BeanShellScript</nodeHandler>
<nodeHandlerClass id="534">com.j2fe.general.activities.BeanShellScript</nodeHandlerClass>
<parameters id="535" type="java.util.HashSet">
<item id="536" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="537">statements</name>
<stringValue id="538">//import java.text.*;&#13;
&#13;
//get system properties for MapsAPIKey&#13;
//String mapsAPIKey = System.getProperty("MapsAPIKey","AIzaSyDAOYBrI7MT3hiENNtyVl1oSKUXBestvQg");&#13;
&#13;
&#13;
&#13;
import java.text.*;&#13;
&#13;
//get system properties for MapsAPIKey&#13;
String mapsAPIKey = System.getProperty("MapsAPIKey","AIzaSyDAOYBrI7MT3hiENNtyVl1oSKUXBestvQg");&#13;
&#13;
&#13;
&#13;
System.out.println("Map API Key Value: " + mapsAPIKey );</stringValue>
<type>CONSTANT</type>
</item>
<item id="539" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="540">["mapsAPIKey"]@java/lang/String@</UITypeHint>
<input>false</input>
<name id="541">variables["mapsAPIKey"]</name>
<stringValue id="542">mapsAPIKey</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
</parameters>
<sources id="543" type="java.util.HashSet">
<item id="544" type="com.j2fe.workflow.definition.Transition">
<name id="545">rows-found</name>
<source id="546">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="547">Fetch Properties </name>
<nodeHandler>com.j2fe.general.activities.database.DBQuery</nodeHandler>
<nodeHandlerClass id="548">com.j2fe.general.activities.database.DBQuery</nodeHandlerClass>
<parameters id="549" type="java.util.HashSet">
<item id="550" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="551">database</name>
<stringValue id="552">jdbc/GSDM-1</stringValue>
<type>REFERENCE</type>
</item>
<item id="553" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="554">indexedResult</name>
<stringValue id="555">addrMap</stringValue>
<type>VARIABLE</type>
</item>
<item id="556" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="557">querySQL</name>
<objectValue id="558" type="java.lang.String">select &#13;
ccrf.ppry_oid,&#13;
mdr.mail_addr_id,mdr.addr_ln1_txt,mdr.addr_ln2_txt,mdr.city_nme,mdr.cnty_nme,mdr.postal_cde,mdr.ste_prv_nme,mdr.cntry_nme,ppry.property_nme from (&#13;
SELECT cntl_cross_ref_oid, mail_addr_id, addr_typ &#13;
FROM (&#13;
    SELECT *, ROW_NUMBER() OVER(PARTITION BY cntl_cross_ref_oid ORDER BY last_chg_tms DESC) AS row_num&#13;
    FROM ft_T_adtp where end_tms is null&#13;
) AS derived1&#13;
WHERE row_num = 1&#13;
) abc,&#13;
ft_T_madr mdr&#13;
,ft_T_ccrf ccrf,&#13;
ft_T_ppry ppry&#13;
where abc.mail_addr_id = mdr.mail_addr_id &#13;
and ccrf.cntl_cross_ref_oid = abc.cntl_cross_ref_oid&#13;
and ppry.ppry_oid = ccrf.ppry_oid &#13;
and ccrf.ppry_oid is not null &#13;
and mdr.addr_ln1_txt is not null&#13;
and mdr.last_chg_tms &gt;= coalesce((select job_start_tms from ft_T_jblg where job_msg_typ = 'NRE_BuildingMaster' and job_input_txt is not null and job_end_tms is not null and task_success_cnt &gt;0 order by job_start_tms desc limit 1),to_date(to_char(now(),'DD-MM-YYYY'),'DD-MM-YYYY'))&#13;
and abc.addr_typ in ('MAILING','UNCONFIRM')&#13;
--and ppry.property_nme like '%CSS%' &#13;
--and ppry.property_nme = 'CSS Vårby'&#13;
--and ppry.ppry_oid = 'u?3p23/581'</objectValue>
<type>CONSTANT</type>
</item>
</parameters>
<sources id="559" type="java.util.HashSet">
<item id="560" type="com.j2fe.workflow.definition.Transition">
<name id="561">goto-next</name>
<source id="562">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="563">Start</name>
<nodeHandler>com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandler>
<nodeHandlerClass id="564">com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandlerClass>
<sources id="565" type="java.util.HashSet"/>
<targets id="566" type="java.util.HashSet">
<item idref="560" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>START</type>
</source>
<target idref="546"/>
</item>
</sources>
<targets id="567" type="java.util.HashSet">
<item id="568" type="com.j2fe.workflow.definition.Transition">
<name id="569">nothing-found</name>
<source idref="546"/>
<target idref="3"/>
</item>
<item idref="544" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>XORSPLIT</type>
</source>
<target idref="532"/>
</item>
</sources>
<targets id="570" type="java.util.HashSet">
<item idref="530" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="48"/>
</item>
<item idref="528" type="com.j2fe.workflow.definition.Transition"/>
<item idref="425" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="571" type="java.util.HashSet">
<item idref="46" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="26"/>
</item>
</sources>
<targets id="572" type="java.util.HashSet">
<item idref="24" type="com.j2fe.workflow.definition.Transition"/>
<item idref="321" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>XORSPLIT</type>
</source>
<target idref="9"/>
</item>
</sources>
<targets id="573" type="java.util.HashSet">
<item idref="7" type="com.j2fe.workflow.definition.Transition"/>
<item id="574" type="com.j2fe.workflow.definition.Transition">
<name id="575">1</name>
<source idref="9"/>
<target id="576">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="577">Create Address Verify Job</name>
<nodeHandler>com.j2fe.streetlamp.activities.CreateJob</nodeHandler>
<nodeHandlerClass id="578">com.j2fe.streetlamp.activities.CreateJob</nodeHandlerClass>
<parameters id="579" type="java.util.HashSet">
<item id="580" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="581">configInfo</name>
<stringValue id="582">BulkVerifyAddress</stringValue>
<type>CONSTANT</type>
</item>
<item id="583" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="584">flushImmediate</name>
<stringValue id="585">true</stringValue>
<type>CONSTANT</type>
</item>
<item id="586" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="587">jobId</name>
<stringValue id="588">Job Id</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="589" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="590">messageType</name>
<stringValue id="591">NRE_BF_INTL_Address</stringValue>
<type>CONSTANT</type>
</item>
</parameters>
<persistentVariables id="592" type="java.util.HashSet">
<item id="593" type="java.lang.String">Job Id
1000</item>
</persistentVariables>
<sources id="594" type="java.util.HashSet">
<item idref="574" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="595" type="java.util.HashSet">
<item id="596" type="com.j2fe.workflow.definition.Transition">
<name id="597">goto-next</name>
<source idref="576"/>
<target id="598">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="599">Create Address Verify Message Object Array</name>
<nodeHandler>com.j2fe.feeds.activities.CreateMessageArray</nodeHandler>
<nodeHandlerClass id="600">com.j2fe.feeds.activities.CreateMessageArray</nodeHandlerClass>
<parameters id="601" type="java.util.HashSet">
<item id="602" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="603">inputMessage</name>
<stringValue id="604">addressMap</stringValue>
<type>VARIABLE</type>
</item>
<item id="605" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="606">jobId</name>
<stringValue id="607">Job Id</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="608" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="609">jobIndex</name>
<stringValue id="610">1</stringValue>
<type>CONSTANT</type>
</item>
<item id="611" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="612">message</name>
<stringValue id="613">Message</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="614" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="615">messageType</name>
<stringValue id="616">NRE_BF_INTL_Address</stringValue>
<type>CONSTANT</type>
</item>
</parameters>
<sources id="617" type="java.util.HashSet">
<item idref="596" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="618" type="java.util.HashSet">
<item id="619" type="com.j2fe.workflow.definition.Transition">
<name id="620">goto-next</name>
<source idref="598"/>
<target id="621">
<activation>ASYNCHRONOUS</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>true</directJoin>
<name id="622">Address Verification For Each Split</name>
<nodeHandler>com.j2fe.workflow.handler.impl.GenericSplit</nodeHandler>
<nodeHandlerClass id="623">com.j2fe.workflow.handler.impl.GenericSplit</nodeHandlerClass>
<parameters id="624" type="java.util.HashSet">
<item id="625" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="626">input</name>
<stringValue id="627">Message</stringValue>
<type>VARIABLE</type>
</item>
<item id="628" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="629">output</name>
<stringValue id="630">SingleOutputMsg</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
</parameters>
<persistentVariables id="631" type="java.util.HashSet">
<item id="632" type="java.lang.String">SingleOutputMsg
1000</item>
</persistentVariables>
<sources id="633" type="java.util.HashSet">
<item idref="619" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="634" type="java.util.HashSet">
<item id="635" type="com.j2fe.workflow.definition.Transition">
<name id="636">goto-next</name>
<source idref="621"/>
<target id="637">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="638">Basic Message Processing Address Verify</name>
<nodeHandler>com.j2fe.workflow.handler.impl.CallSubWorkflow</nodeHandler>
<nodeHandlerClass id="639">com.j2fe.workflow.handler.impl.CallSubWorkflow</nodeHandlerClass>
<parameters id="640" type="java.util.HashSet">
<item id="641" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="642">["Message"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="643">input["Message"]</name>
<stringValue id="644">SingleOutputMsg</stringValue>
<type>VARIABLE</type>
<variablePart id="645">message</variablePart>
</item>
<item id="646" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="647">["MessageMetaData"]@java/util/Map@</UITypeHint>
<input>true</input>
<name id="648">input["MessageMetaData"]</name>
<stringValue id="649">SingleOutputMsg</stringValue>
<type>VARIABLE</type>
<variablePart id="650">properties.custom</variablePart>
</item>
<item id="651" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="652">["MessageType"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="653">input["MessageType"]</name>
<stringValue id="654">NRE_BF_INTL_Address</stringValue>
<type>CONSTANT</type>
</item>
<item id="655" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="656">["TransactionId"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="657">input["TransactionId"]</name>
<stringValue id="658">SingleOutputMsg</stringValue>
<type>VARIABLE</type>
<variablePart id="659">transactionId</variablePart>
</item>
<item id="660" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="661">name</name>
<stringValue id="662">Basic Message Processing</stringValue>
<type>CONSTANT</type>
</item>
</parameters>
<sources id="663" type="java.util.HashSet">
<item idref="635" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="664" type="java.util.HashSet">
<item id="665" type="com.j2fe.workflow.definition.Transition">
<name id="666">goto-next</name>
<source idref="637"/>
<target id="667">
<activation>ASYNCHRONOUS</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>true</directJoin>
<name id="668">Address Verify Synchronize </name>
<nodeHandler>com.j2fe.workflow.handler.impl.StandardAndJoinHandler</nodeHandler>
<nodeHandlerClass id="669">com.j2fe.workflow.handler.impl.StandardAndJoinHandler</nodeHandlerClass>
<sources id="670" type="java.util.HashSet">
<item idref="665" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="671" type="java.util.HashSet">
<item id="672" type="com.j2fe.workflow.definition.Transition">
<name id="673">goto-next</name>
<source idref="667"/>
<target id="674">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="675">Close Job Address Verify</name>
<nodeHandler>com.j2fe.streetlamp.activities.CloseJob</nodeHandler>
<nodeHandlerClass id="676">com.j2fe.streetlamp.activities.CloseJob</nodeHandlerClass>
<parameters id="677" type="java.util.HashSet">
<item id="678" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="679">jobId</name>
<stringValue id="680">Job Id</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
</parameters>
<sources id="681" type="java.util.HashSet">
<item idref="672" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="682" type="java.util.HashSet">
<item id="683" type="com.j2fe.workflow.definition.Transition">
<name id="684">goto-next</name>
<source idref="674"/>
<target id="685">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="686">Create Job Geo Code</name>
<nodeHandler>com.j2fe.streetlamp.activities.CreateJob</nodeHandler>
<nodeHandlerClass id="687">com.j2fe.streetlamp.activities.CreateJob</nodeHandlerClass>
<parameters id="688" type="java.util.HashSet">
<item id="689" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="690">configInfo</name>
<stringValue id="691">NRE_GeoAddressAPI</stringValue>
<type>CONSTANT</type>
</item>
<item id="692" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="693">flushImmediate</name>
<stringValue id="694">true</stringValue>
<type>CONSTANT</type>
</item>
<item id="695" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="696">jobId</name>
<stringValue id="697">Job Id Geo</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="698" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="699">messageType</name>
<stringValue id="700">NRE_GeoAddressAPI</stringValue>
<type>CONSTANT</type>
</item>
</parameters>
<persistentVariables id="701" type="java.util.HashSet">
<item id="702" type="java.lang.String">Job Id Geo
1000</item>
</persistentVariables>
<sources id="703" type="java.util.HashSet">
<item idref="683" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="704" type="java.util.HashSet">
<item id="705" type="com.j2fe.workflow.definition.Transition">
<name id="706">goto-next</name>
<source idref="685"/>
<target id="707">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="708">Create  Geo Code Message Object Array</name>
<nodeHandler>com.j2fe.feeds.activities.CreateMessageArray</nodeHandler>
<nodeHandlerClass id="709">com.j2fe.feeds.activities.CreateMessageArray</nodeHandlerClass>
<parameters id="710" type="java.util.HashSet">
<item id="711" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="712">inputMessage</name>
<stringValue id="713">addressGeoMap</stringValue>
<type>VARIABLE</type>
</item>
<item id="714" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="715">jobId</name>
<stringValue id="716">Job Id Geo</stringValue>
<type>VARIABLE</type>
</item>
<item id="717" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="718">jobIndex</name>
<stringValue id="719">1</stringValue>
<type>CONSTANT</type>
</item>
<item id="720" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="721">message</name>
<stringValue id="722">MessageGeo</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="723" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="724">messageType</name>
<stringValue id="725">NRE_GeoAddressAPI</stringValue>
<type>CONSTANT</type>
</item>
</parameters>
<sources id="726" type="java.util.HashSet">
<item idref="705" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="727" type="java.util.HashSet">
<item id="728" type="com.j2fe.workflow.definition.Transition">
<name id="729">goto-next</name>
<source idref="707"/>
<target id="730">
<activation>ASYNCHRONOUS</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>true</directJoin>
<name id="731">Geo Address For Each Split</name>
<nodeHandler>com.j2fe.workflow.handler.impl.GenericSplit</nodeHandler>
<nodeHandlerClass id="732">com.j2fe.workflow.handler.impl.GenericSplit</nodeHandlerClass>
<parameters id="733" type="java.util.HashSet">
<item id="734" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="735">input</name>
<stringValue id="736">MessageGeo</stringValue>
<type>VARIABLE</type>
</item>
<item id="737" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="738">output</name>
<stringValue id="739">SingleOutputGeoMsg</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
</parameters>
<persistentVariables id="740" type="java.util.HashSet">
<item id="741" type="java.lang.String">SingleOutputGeoMsg
1000</item>
</persistentVariables>
<sources id="742" type="java.util.HashSet">
<item idref="728" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="743" type="java.util.HashSet">
<item id="744" type="com.j2fe.workflow.definition.Transition">
<name id="745">goto-next</name>
<source idref="730"/>
<target id="746">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="747">Basic Message Processing  Geo Code</name>
<nodeHandler>com.j2fe.workflow.handler.impl.CallSubWorkflow</nodeHandler>
<nodeHandlerClass id="748">com.j2fe.workflow.handler.impl.CallSubWorkflow</nodeHandlerClass>
<parameters id="749" type="java.util.HashSet">
<item id="750" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="751">["Message"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="752">input["Message"]</name>
<stringValue id="753">SingleOutputGeoMsg</stringValue>
<type>VARIABLE</type>
<variablePart id="754">message</variablePart>
</item>
<item id="755" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="756">["MessageMetaData"]@java/util/Map@</UITypeHint>
<input>true</input>
<name id="757">input["MessageMetaData"]</name>
<stringValue id="758">SingleOutputGeoMsg</stringValue>
<type>VARIABLE</type>
<variablePart id="759">properties.custom</variablePart>
</item>
<item id="760" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="761">["MessageType"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="762">input["MessageType"]</name>
<stringValue id="763">NRE_GeoAddressAPI</stringValue>
<type>CONSTANT</type>
</item>
<item id="764" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="765">["TransactionId"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="766">input["TransactionId"]</name>
<stringValue id="767">SingleOutputGeoMsg</stringValue>
<type>VARIABLE</type>
<variablePart id="768">transactionId</variablePart>
</item>
<item id="769" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="770">name</name>
<stringValue id="771">Basic Message Processing</stringValue>
<type>CONSTANT</type>
</item>
</parameters>
<sources id="772" type="java.util.HashSet">
<item idref="744" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="773" type="java.util.HashSet">
<item id="774" type="com.j2fe.workflow.definition.Transition">
<name id="775">goto-next</name>
<source idref="746"/>
<target id="776">
<activation>ASYNCHRONOUS</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>true</directJoin>
<name id="777"> Geo Code Synchronize </name>
<nodeHandler>com.j2fe.workflow.handler.impl.StandardAndJoinHandler</nodeHandler>
<nodeHandlerClass id="778">com.j2fe.workflow.handler.impl.StandardAndJoinHandler</nodeHandlerClass>
<sources id="779" type="java.util.HashSet">
<item idref="774" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="780" type="java.util.HashSet">
<item id="781" type="com.j2fe.workflow.definition.Transition">
<name id="782">goto-next</name>
<source idref="776"/>
<target id="783">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="784">Close Job  Geo Code</name>
<nodeHandler>com.j2fe.streetlamp.activities.CloseJob</nodeHandler>
<nodeHandlerClass id="785">com.j2fe.streetlamp.activities.CloseJob</nodeHandlerClass>
<parameters id="786" type="java.util.HashSet">
<item id="787" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="788">jobId</name>
<stringValue id="789">Job Id Geo</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="790" type="java.util.HashSet">
<item idref="781" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="791" type="java.util.HashSet">
<item id="792" type="com.j2fe.workflow.definition.Transition">
<name id="793">goto-next</name>
<source idref="783"/>
<target idref="3"/>
</item>
</targets>
<type>ACTIVITY</type>
</target>
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
<target idref="3"/>
</item>
<item idref="792" type="com.j2fe.workflow.definition.Transition"/>
<item idref="568" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="794" type="java.util.HashSet"/>
<type>END</type>
</endNode>
<forcePurgeAtEnd>false</forcePurgeAtEnd>
<group id="795">Custom/Processing</group>
<haltOnError>false</haltOnError>
<lastChangeUser id="796">user1</lastChangeUser>
<lastUpdate id="797">2025-03-05T14:25:18.000+0530</lastUpdate>
<name id="798">NRE_WF_BulkVerifyAddress</name>
<optimize>true</optimize>
<parameter id="799" type="java.util.HashMap"/>
<permissions id="800" type="java.util.HashSet"/>
<priority>50</priority>
<purgeAtEnd>true</purgeAtEnd>
<retries>0</retries>
<startNode idref="562"/>
<status>RELEASED</status>
<variables id="801" type="java.util.HashMap">
<entry>
<key id="802" type="java.lang.String">addressGeoMap</key>
<value id="803" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="804">[Ljava.lang.Object;</className>
<clazz>[Ljava.lang.Object;</clazz>
<description idref="2"/>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="805" type="java.lang.String">addressMap</key>
<value id="806" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="807">[Ljava.lang.Object;</className>
<clazz>[Ljava.lang.Object;</clazz>
<description idref="2"/>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="808" type="java.lang.String">cntr</key>
<value id="809" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="810">java.lang.Integer</className>
<clazz>java.lang.Integer</clazz>
<description idref="2"/>
<persistent>false</persistent>
<value id="811" type="java.lang.Integer">0</value>
</value>
</entry>
<entry>
<key id="812" type="java.lang.String">dataMap</key>
<value id="813" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="814">[Ljava.lang.String;</className>
<clazz>[Ljava.lang.String;</clazz>
<description idref="2"/>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="815" type="java.lang.String">mapsAPIKey</key>
<value id="816" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="817">java.lang.Object</className>
<clazz>java.lang.Object</clazz>
<description idref="2"/>
<persistent>true</persistent>
</value>
</entry>
</variables>
<version>46</version>
</com.j2fe.workflow.definition.Workflow>
</businessobject>
</goldensource-package>
