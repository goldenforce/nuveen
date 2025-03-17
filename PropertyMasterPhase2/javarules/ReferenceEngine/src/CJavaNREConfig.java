import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map.Entry;
import org.apache.log4j.Logger;

public class CJavaNREConfig {
	private static final int doNotCheckParamLengthFlag = 0;
	private static final Logger LOGGER = Logger.getLogger("CJavaNREConfig");
	private String[] parameters;
	private String ruleName;
	private int paramsLength;
	private String paramSeparator = "=";
	private String valueSeparator = ",";
	public HashMap<String, List<String>> parametersMap = new HashMap<String, List<String>>();
	private boolean status = false;

	public void init(String[] parameters, String ruleName, int paramsLength, String paramSeparator,
			String valueSeparator) {
		this.parameters = parameters;
		this.ruleName = ruleName;
		this.paramsLength = paramsLength;
		this.paramSeparator = paramSeparator;
		this.valueSeparator = valueSeparator;
		init(parameters, ruleName, paramsLength);
	}

	public void init(String[] parameters, String ruleName, int paramsLength) {
		LOGGER.debug("Initializing rule " + ruleName);
		this.parameters = parameters;
		this.ruleName = ruleName;
		this.paramsLength = paramsLength;
		status = parseParams();
		if (status)
			for (Entry<String, List<String>> parametersMapEntry : parametersMap.entrySet()) {
				LOGGER.debug("Parameters for " + ruleName + " : " + parametersMapEntry.getKey() + "="
						+ parametersMapEntry.getValue());
			}
	}

	private boolean parseParams() {
		if (parameters == null || parameters.length < paramsLength) {
			LOGGER.debug("Required parameters missing. Exiting " + ruleName);
			return false;
		}
		if (paramsLength != doNotCheckParamLengthFlag && parameters.length < paramsLength) {
			LOGGER.debug("Parameters length is less than expected length " + paramsLength + ". Exiting " + ruleName);
			return false;
		}
		for (int i = 0; i < parameters.length; i++) {
			String parameter = parameters[i].trim();
			String[] params = parameter.split(paramSeparator);
			if (params[0] == null) {
				LOGGER.debug("Format to add params is : <ParamName>" + paramSeparator + "<ParamValues> separated by "
						+ valueSeparator + ". Required parameters missing. Exiting " + ruleName);
				return false;
			}
			String parametersMapKey = params[0];
			if (params.length > 1) {
				List<String> parametersMapValue = Arrays.asList(params[1].split(valueSeparator));
				if (parametersMapValue.isEmpty()) {
					LOGGER.debug("Required parameter values missing for " + parametersMapKey + ". Exiting " + ruleName);
					return false;
				}
				parametersMap.put(parametersMapKey, parametersMapValue);
			} else {
				LOGGER.debug("Required parameters missing for " + parametersMapKey + ". Exiting " + ruleName);
				return false;
			}
		}
		return true;
	}

	public String getParameterMap() {
		return parametersMap.toString();
	}

	public boolean isStatus() {
		return status;
	}
}
