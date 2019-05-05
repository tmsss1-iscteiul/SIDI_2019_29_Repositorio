package pt.iscte.sidfinal.paho;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.util.UUID;

import org.eclipse.paho.client.mqttv3.IMqttDeliveryToken;
import org.eclipse.paho.client.mqttv3.IMqttMessageListener;
import org.eclipse.paho.client.mqttv3.MqttCallback;
import org.eclipse.paho.client.mqttv3.MqttClient;
import org.eclipse.paho.client.mqttv3.MqttException;
import org.eclipse.paho.client.mqttv3.MqttMessage;

import pt.iscte.sidfinal.functionalities.Algorithm;
import pt.iscte.sidfinal.functionalities.Frame;

public class Paho implements MqttCallback {

	
	private Frame frame;
	private Algorithm algorithm = new Algorithm(frame);
	
	private MqttClient client;
	private IMqttMessageListener msgListener;
	
	boolean connect = false;

	public Paho(Frame frame){
		this.frame = frame;
	}
	
	// Metodo para subscrever topico Paho
	
	public void main (Algorithm algorithm) {
	    this.algorithm = algorithm;
	    
	    //Listener que faz o tratamento das mensagens do Paho
	    this.msgListener = new IMqttMessageListener() {
			@Override
			public void messageArrived(String topic, MqttMessage message) throws Exception {
				//algorithm.insertDateTime(message);
				algorithm.confirm(message);
				if(algorithm.getSend() == true){
					algorithm.conversion();
					algorithm.insertArray(algorithm.getMessageString());
				}
				//client.disconnect();
				//connect = false;
			}
		};
	    
	    frame.getSubscribeButton().addActionListener(new ActionListener() {	
			@Override
			public void actionPerformed(ActionEvent e) {
				try {
					if(client != null) {
						client.disconnect();
						connect = false;
					}
				} catch (MqttException error) {
					error.printStackTrace();
				}
			    ConnectAndSubscribe();				
			}
		});
	}
	
	// Metodo para efetuar conexão com o Paho

	public void ConnectAndSubscribe() {
		
	    try {
	    	if(!connect){
	    		String publisherId = UUID.randomUUID().toString();
		        client = new MqttClient("tcp://broker.mqtt-dashboard.com:1883", publisherId);  //usar para testes com /sid_lab_2019_g29_test
		        //client = new MqttClient("tcp://iot.eclipse.org:1883", publisherId); //usar para testes com /sid_lab_2019_g29_test
		        client.connect();
		        //System.out.println("Connection Paho done!");
		        client.setCallback(this);
		        
		        client.subscribe(frame.getTopicText().getText(), msgListener);
		        connect = true;
	    	}
	    	else{
		        client.subscribe(frame.getTopicText().getText(), msgListener);
	    	}
	    } catch (MqttException e) {
	        e.printStackTrace();
	        System.out.println("Disconnect!");
	    }
	}

	@Override
	public void connectionLost(Throwable cause) {
		System.out.println("Connection lost!");
	}
	
	// Metodo que recebe a mensagem do Paho
	
	@Override
	public void messageArrived(String topic, MqttMessage message) throws Exception {   
	
	}
	
	@Override
	public void deliveryComplete(IMqttDeliveryToken token) {
	    // TODO Auto-generated method stub
	}
}