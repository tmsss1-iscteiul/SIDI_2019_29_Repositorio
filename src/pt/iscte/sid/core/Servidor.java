package pt.iscte.sid.core;

import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingDeque;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

import pt.iscte.sid.mongodb.MongoWrite;

public class Servidor {
	
	private BlockingQueue<String> messageQueue = new LinkedBlockingDeque<>();
	
	private BlockingQueue<Runnable> pollQueue = new LinkedBlockingDeque<Runnable>();
	
	private ThreadPoolExecutor executor;
	private MongoWrite mongoWrite;
	
	private Boolean running;
	
	
	
	public Servidor() {
		executor = new ThreadPoolExecutor(10, 20, 10, TimeUnit.SECONDS, pollQueue);
		mongoWrite =  new MongoWrite();
		
		running = true;

		/*
		while(true) {
			try {
				System.out.println(messageQueue.take());
			} catch (InterruptedException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		*/
	}
	
	public void StartServer() throws InterruptedException {
		GetSensorMessages();
		StoreMessageInMongo();
	}
	
	/**
	 * 
	 */
	private void StoreMessageInMongo() throws InterruptedException{
		while(running) {
			executor.execute(new Runnable() {
				
				@Override
				public void run() {
					try {
						mongoWrite.CreateDoc(messageQueue.take());
					} catch (InterruptedException e) {
						e.printStackTrace();
					}
				}
			});
		}
	}

	/**
	 * Connects to Paho server and keeps storing all messages in messageQueue
	 */
	public void GetSensorMessages() throws InterruptedException{
		new MqttSubscribeService().GetMessages(messageQueue);
		
		//comentar abaixo se o sensor funcionar bem !!
		InsertDummyMessages dummyMessages = new InsertDummyMessages();
		dummyMessages.insertMessages(messageQueue);
	}
	
	
}
