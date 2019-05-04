package pt.iscte.sid.core;

import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingDeque;

public class Servidor {
	
	private BlockingQueue<String> messageQueue = new LinkedBlockingDeque<>();
	
	public Servidor() {
		GetSensorMessages();
		while(true) {
			try {
				System.out.println(messageQueue.take());
			} catch (InterruptedException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}
	
	public void GetSensorMessages() {
		new MqttSubscribeService().GetMessages(messageQueue);
	}
	
	
}
