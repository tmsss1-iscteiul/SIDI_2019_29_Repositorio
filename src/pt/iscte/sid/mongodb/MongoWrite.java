package pt.iscte.sid.mongodb;

import com.mongodb.*;

import java.util.*;
import java.net.UnknownHostException;

import com.mongodb.MongoClient;
import com.mongodb.MongoClientURI;
import com.mongodb.ServerAddress;

import com.mongodb.client.MongoDatabase;
import com.mongodb.client.MongoCollection;

import org.bson.Document;
import org.bson.types.ObjectId;

import java.util.Arrays;
import com.mongodb.Block;

import com.mongodb.client.MongoCursor;
import static com.mongodb.client.model.Filters.*;
import com.mongodb.client.result.DeleteResult;
import static com.mongodb.client.model.Updates.*;
import com.mongodb.client.result.UpdateResult;

import pt.iscte.sid.utils.JsonParser;

import java.util.ArrayList;
import java.util.List;

import javax.print.Doc;

public class MongoWrite   {
	public static void main(String[] args) {
		/*
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
		*/
				
		MongoClient mongoClient = new MongoClient(new MongoClientURI("mongodb://localhost:27017"));
		MongoDatabase db = mongoClient.getDatabase("dbSid");
		MongoCollection<Document> coll = db.getCollection("templumi");
		
		/*
		//mostra o primeiro documento
		Document myDoc = coll.find().first();
		System.out.println(myDoc.toJson());
		
		//mostra todos os documentos
		MongoCursor<Document> cursor = coll.find().iterator();
		try {
		    while (cursor.hasNext()) {
		        System.out.println(cursor.next().toJson());
		    }
		} finally {
		    cursor.close();
		}
		*/
		
		Document newDoc = new Document("_id", new ObjectId())
										.append("temperatura", "25.40")
										.append("luminosidade", "2000")
										.append("data", "2019-05-05")
										.append("tempo", "17:32:32");
		coll.insertOne(newDoc);
		
		
		
		MongoCursor<Document> cursor = coll.find().iterator();
		try {
		    while (cursor.hasNext()) {
		        System.out.println(cursor.next().toJson());
		    }
		} finally {
		    cursor.close();
		}
		
	}

	public void CreateDoc(String message) {
		MongoCollection<Document> coll = Connect();
		Document newDoc;
		
		String[] stringArray = new JsonParser().SensorMessageParser(message);
		
		newDoc = new Document("_id", new ObjectId())
				.append("temperatura", stringArray[0])
				.append("luminosidade", stringArray[4])
				.append("data", stringArray[2]) // aplicar o algoritmo de mudança da data com a Classe DataConverter.java
				.append("tempo", stringArray[3]);
		
		coll.insertOne(newDoc);
	}

	private MongoCollection<Document> Connect() {
		MongoClient mongoClient = new MongoClient(new MongoClientURI("mongodb://localhost:27017"));
		MongoDatabase db = mongoClient.getDatabase("dbSid");
		MongoCollection<Document> coll = db.getCollection("templumi");
		return coll;
	}

}	
