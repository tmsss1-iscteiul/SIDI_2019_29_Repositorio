package pt.iscte.sid.core;

import java.util.concurrent.BlockingQueue;

public class InsertDummyMessages {

	public void insertMessages(BlockingQueue<String> messageQueue) {
		Thread worker = new Thread(new Runnable() {
			@Override
			public void run() {
				while(true) {
					String message = "{\"tmp\":\"22.40\",\"hum\":\"61.30\",\"dat\":\"9/4/2019\",\"tim\":\"14:59:32\",\"cell\":\"3138\",\"sens\":\"wifi\"}";
					messageQueue.add(message);
				}
			}
		});
		worker.start();
	}

}
