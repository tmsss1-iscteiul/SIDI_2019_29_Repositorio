package pt.iscte.sid.utils;

import java.io.IOException;

import javax.security.sasl.SaslException;

import org.codehaus.jackson.JsonGenerationException;
import org.codehaus.jackson.JsonParseException;
import org.codehaus.jackson.map.JsonMappingException;
import org.codehaus.jackson.map.ObjectMapper;
import org.codehaus.jackson.type.TypeReference;



public class JsonParser {

	public String[] SensorMessageParser(String message) {
		String[] returnArray = new String[6];
		try {
			ObjectMapper objectMapper = new ObjectMapper();
			returnArray = objectMapper.readValue(message, new TypeReference<String>(){});
		} catch (IOException e) {
			e.printStackTrace();
		}
		return returnArray;
	}
}
