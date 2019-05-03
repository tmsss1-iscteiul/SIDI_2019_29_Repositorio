package pt.iscte.sid.core;

import org.eclipse.paho.client.mqttv3.IMqttDeliveryToken;
import org.eclipse.paho.client.mqttv3.MqttCallback;
import org.eclipse.paho.client.mqttv3.MqttClient;
import org.eclipse.paho.client.mqttv3.MqttConnectOptions;
import org.eclipse.paho.client.mqttv3.MqttException;
import org.eclipse.paho.client.mqttv3.MqttMessage;

public class MqttPublishService {

	public static void main(String[] args) {

		try {
			MqttClient sampleClient = new MqttClient("tcp://broker.mqtt-dashboard.com:1883", "/sid_lab_2019_grupo_29");
			MqttConnectOptions connOpts = new MqttConnectOptions();
			connOpts.setCleanSession(true);
			

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
		} catch (MqttException e) {
			e.printStackTrace();
		}
	}
}
