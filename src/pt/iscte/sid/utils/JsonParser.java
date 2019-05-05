package pt.iscte.sid.utils;

import org.codehaus.jackson.JsonGenerationException;
import org.codehaus.jackson.JsonParseException;
import org.codehaus.jackson.map.JsonMappingException;
import org.codehaus.jackson.map.ObjectMapper;



public class JsonParser {

	public String[] SensorMessageParser(String message) {
		String[] array = new String[6];
		JSONObject obj = new JSONObject(str);
		JSONArray arr = obj.getJSONArray("number");
		for (int i = 0; i < arr.length(); i++)
		    System.out.println(arr.getInt(i));
	}
}
