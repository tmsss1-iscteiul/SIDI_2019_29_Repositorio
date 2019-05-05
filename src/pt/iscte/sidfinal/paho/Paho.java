package pt.iscte.sidfinal.paho;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

import org.eclipse.paho.client.mqttv3.IMqttDeliveryToken;
import org.eclipse.paho.client.mqttv3.MqttCallback;
import org.eclipse.paho.client.mqttv3.MqttClient;
import org.eclipse.paho.client.mqttv3.MqttException;
import org.eclipse.paho.client.mqttv3.MqttMessage;

import pt.iscte.sidfinal.functionalities.Algorithm;
import pt.iscte.sidfinal.functionalities.Frame;

public class Paho implements MqttCallback {

	MqttClient client;
	Frame frame;
	Algorithm algorithm = new Algorithm(frame);
	boolean connect = false;

	public Paho(Frame frame){
		this.frame = frame;
	}
	
	// Metodo para subscrever topico Paho
	
	public void main (Algorithm algorithm) {
	    this.algorithm = algorithm;
	    frame.getSubscribeButton().addActionListener(new ActionListener() {
			
			@Override
			public void actionPerformed(ActionEvent e) {
			    doDemo();				
			}
		});
	}
	
	// Metodo para efetuar conexão com o Paho

	public void doDemo() {
		
	    try {
	    	if(!connect){
		        client = new MqttClient("tcp://iot.eclipse.org:1883", "js-utility-19UPV");
		        client.connect();
		        //System.out.println("Connection done!");
		        client.setCallback(this);
		        client.subscribe(frame.getTopicText().getText());
		        connect = true;
	    	}
	    	else{
		        client.subscribe(frame.getTopicText().getText());
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
		//algorithm.insertDateTime(message);
		
		algorithm.confirm(message);

		if(algorithm.getSend() == true){
			
			algorithm.conversion();
			
			algorithm.insertArray(algorithm.getMessageString());

		}
		//client.disconnect();
		connect = false;
	}
	
	@Override
	public void deliveryComplete(IMqttDeliveryToken token) {
	    // TODO Auto-generated method stub
	}
}