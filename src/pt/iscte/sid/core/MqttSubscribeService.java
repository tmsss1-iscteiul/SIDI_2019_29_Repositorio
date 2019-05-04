package pt.iscte.sid.core;

import java.util.ArrayList;
import java.util.UUID;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;

import org.eclipse.paho.client.mqttv3.IMqttMessageListener;
import org.eclipse.paho.client.mqttv3.MqttClient;
import org.eclipse.paho.client.mqttv3.MqttConnectOptions;
import org.eclipse.paho.client.mqttv3.MqttException;
import org.eclipse.paho.client.mqttv3.MqttMessage;

public class MqttSubscribeService {

	private String returnMessage;
	
	public MqttSubscribeService() {}
	
	public void GetMessages(BlockingQueue<String> messageQueue) {
		try {
			String publisherId = UUID.randomUUID().toString();
			MqttClient subscriber = new MqttClient("tcp://broker.mqtt-dashboard.com:1883", publisherId);
			
			MqttConnectOptions options = new MqttConnectOptions();
			options.setAutomaticReconnect(true);
			options.setCleanSession(true);
			options.setConnectionTimeout(10);
			subscriber.connect(options);
			System.out.println("Connected to Sensor.. Receiving messages...");
			
			returnMessage = "";
			
			IMqttMessageListener msgListener = new IMqttMessageListener() {
				
				public void messageArrived(String topic, MqttMessage message) throws Exception {
					messageQueue.offer(message.toString());
				}		
				
			};
			
			subscriber.subscribe("/sid_lab_2019_2", msgListener);

			
		} catch (MqttException e) {
			e.printStackTrace();
		}
	}
	
	
	
	public static void main(String[] args) {

		try {
			String publisherId = UUID.randomUUID().toString();
			MqttClient subscriber = new MqttClient("tcp://broker.mqtt-dashboard.com:1883", publisherId);
			
			MqttConnectOptions options = new MqttConnectOptions();
			options.setAutomaticReconnect(true);
			options.setCleanSession(true);
			options.setConnectionTimeout(10);
			subscriber.connect(options);
			System.out.println("Connected to Sensor.. Receiving messages...");
			
/*
			sampleClient.setCallback(new MqttCallback() {
				public void connectionLost(Throwable cause) {
				}

				public void messageArrived(String topic, MqttMessage message) throws Exception {
					System.out.println("Message: " + message.toString());
				}

				public void deliveryComplete(IMqttDeliveryToken token) {
				}
			});

			sampleClient.connect(connOpts);
			System.out.println("Connected");
			sampleClient.subscribe("/sid_lab_2019");
			System.out.println("subscribed");
			
*/
			
			CountDownLatch receivedSignal = new CountDownLatch(10);
			subscriber.subscribe("/sid_lab_2019_2", (topic, msg) -> {
			    byte[] payload = msg.getPayload();
			    
			    System.out.println(msg.toString());
			    
			    receivedSignal.countDown();
			});    
			try {
				receivedSignal.await(1, TimeUnit.MINUTES);
			} catch (InterruptedException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			
		} catch (MqttException e) {
			e.printStackTrace();
		}
	}
}
