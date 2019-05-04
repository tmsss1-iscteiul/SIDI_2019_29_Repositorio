package pt.iscte.sid.mongodb;

import com.mongodb.*;
import java.util.*;
import java.net.UnknownHostException;

public class MongoWrite   {
	public static void main(String[] args) {
		int i;
		MongoClient mongoClient = null;
		MongoClient mongoClient1 = new MongoClient( 
		   //new MongoClientURI("mongodb://TOSHIBA:27017,TOSHIBA:25017,TOSHIBA:23017/?replicaSet=replicaDemo&autoConnectRetry=true"));
		   new MongoClientURI("mongodb://TOSHIBA:27017,TOSHIBA:25017,TOSHIBA:23017/?replicaSet=replicaDemo"));
		DB db = mongoClient1.getDB("db_demo");
		i=1;
		DBCollection table = db.getCollection("collection_demo");
		while(i<6) {
			
			BasicDBObject document = new BasicDBObject();
			document.put("Nome",i);
			try { table.insert(document);} catch (Exception e) {}
			i++;
			try{Thread.sleep(5000);} catch (InterruptedException  e) {Thread.currentThread().interrupt();}
		}
		mongoClient1.close();		
	}
}	
