package pt.iscte.sidfinal.functionalities;

import java.sql.Time;
import java.sql.Timestamp;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.regex.Pattern;

import javax.swing.DefaultListModel;
import javax.swing.JList;

import org.eclipse.paho.client.mqttv3.MqttMessage;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;

import pt.iscte.sidfinal.mongo.Mongo;

public class Algorithm {

	private ArrayList<JSONObject> json = new ArrayList<>(); // Array com as mensagens recebidas e tratadas
	
	private DefaultListModel<String> model = new DefaultListModel<>(); // Modelo que vai ser adicionado a lista para inserir na textArea
	private JList<String> list; // Lista que tem o modelo e que vai ser inserido na textArea
	
	private Frame frame;
	
	private JSONObject messageToConfirm = new JSONObject(); // Mensagem em JSON que vai ser confirmada para ser ou não enviada para o MongoDB
	private String messageString = null; // Messagem recebido em formato String
	
	private boolean send = true; // Booleano que indica se a mensagem e para ser enviada ou não para o MongoDB
	
	public Algorithm (Frame frame){
		this.frame = frame;
	}
	
	// Metodo para inserir data e hora para testes mais rapidos e para a parte manual
	
	public void insertDateTime(MqttMessage message){
	
		DateFormat dateFormat = new SimpleDateFormat("dd/MM/yyyy");
		Date date = new Date();
		DateFormat timeFormat = new SimpleDateFormat("HH:mm:ss");
		Date time = new Date();
		
		messageString = "{" + message.toString() + ",\"date\":\"" + dateFormat.format(date) + "\",\"time\":\"" + timeFormat.format(time) + "\"}";
	}
	
	/* Metodo que vai confirmar se a mensagem é uma mensagem para ser enviada para o MongoDB ou nao, 
	alterando o valor do booleano send para false caso não e true caso a mensagem seja para ser enviada */
	
	public void confirm(MqttMessage message) {
		
		send = true;
		JSONParser parser = new JSONParser();
		String erradas = null;
		
		try {
			if(message.toString().contains("{") && message.toString().contains("}")){
				messageToConfirm = (JSONObject) parser.parse(message.toString());
			}
			else{
				erradas = message.toString();
				send = false;
			}
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		if(message.toString().equals("teste")){
			send = false;
			erradas = message.toString();
		} 
		else if(message.toString().equals("")){
			send = false;
			erradas = message.toString();
		}
		
		if(send) {
			if(!messageToConfirm.containsKey("dat")){
				Date date = new Date();
				SimpleDateFormat formatter = new SimpleDateFormat("dd/MM/yyyy");  
				messageToConfirm.put("dat", formatter.format(date).toString());
			} 
			else if (messageToConfirm.get("dat").equals("") || Pattern.matches("[a-zA-Z]+", messageToConfirm.get("dat").toString())) {
				messageToConfirm.remove("dat");
				Date date = new Date();
				SimpleDateFormat formatter = new SimpleDateFormat("dd/MM/yyyy");
				messageToConfirm.put("dat", formatter.format(date).toString());
			}
			
			if(!messageToConfirm.containsKey("tim")){
				Date date = new Date();
				SimpleDateFormat formatter = new SimpleDateFormat("HH:mm:ss");  
				messageToConfirm.put("tim", formatter.format(date).toString());
			}
			else if (messageToConfirm.get("tim").equals("") || Pattern.matches("[a-zA-Z]+", messageToConfirm.get("tim").toString())) {
				messageToConfirm.remove("tim");
				Date date = new Date();
				SimpleDateFormat formatter = new SimpleDateFormat("HH:mm:ss");  
				messageToConfirm.put("tim", formatter.format(date).toString());
			}
			
			if(!messageToConfirm.containsKey("tmp")){
				messageToConfirm.put("tmp", "");
			}
			
			if(!messageToConfirm.containsKey("cell")){
				messageToConfirm.put("cell", "");
			}
			
			if((messageToConfirm.get("tmp").equals("") || Pattern.matches("[a-zA-Z]+", messageToConfirm.get("tmp").toString()))
					&& (messageToConfirm.get("cell").equals("") || Pattern.matches("[a-zA-Z]+", messageToConfirm.get("cell").toString()))){
				send = false;
				erradas = messageToConfirm.toString();
			}
		}
		
		if(send){
			addTextArea(messageToConfirm.toString());
		}
		else{
			addTextArea("Erro - " + erradas);
		}
	}
	
	/* Metodo que vai utilizar a mensagem já confirmada e vai fazer as conversões necessárias, i.e, String para double no caso da
	temperatura e luminosidade, timestamp para a data e time para a hora */
	
	public void conversion(){
		
		//Double tmp = null;
		//Integer cell = null;
		
		String temp = "";
		String lum = "";
		
		if(!messageToConfirm.get("tmp").equals("") && !Pattern.matches("[a-zA-Z]+", messageToConfirm.get("tmp").toString()))
			//tmp = Double.parseDouble((String) messageToConfirm.get("tmp"));
			temp = (String) messageToConfirm.get("tmp");
		if(!messageToConfirm.get("cell").equals("") && !Pattern.matches("[a-zA-Z]+", messageToConfirm.get("cell").toString()))
			//cell = Integer.parseInt((String) messageToConfirm.get("cell"));
			lum = (String) messageToConfirm.get("cell");
		
		String date = (String) messageToConfirm.get("dat");
		String time = (String) messageToConfirm.get("tim");
		
		Time timeTemp = Time.valueOf(time);
		@SuppressWarnings("deprecation")
		Time timeSQL = Time.valueOf((timeTemp.getHours()) + ":" + timeTemp.getMinutes() + ":" + timeTemp.getSeconds()); 
		
		String[] tokensDate = date.split("/");
		//Timestamp dateSQL = Timestamp.valueOf(tokensDate[2] + "-" + tokensDate[1] + "-" + tokensDate[0] + " " + time);
		Timestamp dateSQL = Timestamp.valueOf(tokensDate[2] + "-" + tokensDate[1] + "-" + tokensDate[0]);

		
		
		messageString = "{" + "\"temperatura\":" + temp + ",\"luminosidade\":"+ lum + ",\"data\":\"" + dateSQL + "\",\"tempo\":\"" + timeSQL + "\"}";
	}
	
	// Metodo que vai inserir as mensagens comfirmadas e tratadas num array para posteriomente serem enviadas para o MongoDB
	
	public void insertArray(String messageString){
		
		JSONParser parser = new JSONParser();
		JSONObject messageJson = new JSONObject();
		try {
			messageJson = (JSONObject) parser.parse(messageString);
			json.add(messageJson);
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	// Metodo que vai inserir todas as mensagens na textArea para serem visualizadas na frame
	
	public void addTextArea(String messageString){
		model.addElement(messageString);
		list = new JList<String>(model);
		frame.getScrollPanePaho().setViewportView(list);
	}
	
	public ArrayList<JSONObject> getJSONArray(){
		return json;
	}
	
	public String getMessageString(){
		return messageString;
	}
	
	public boolean getSend(){
		return send;
	}
}