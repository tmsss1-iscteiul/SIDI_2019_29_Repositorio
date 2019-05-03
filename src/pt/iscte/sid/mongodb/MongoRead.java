package pt.iscte.sid.mongodb;

import com.mongodb.*;
import java.util.*;

public class MongoRead   {
	public static void main(String[] args) {
		MongoClient mongoClient1 = new MongoClient( new MongoClientURI("mongodb://TOSHIBA:27017,TOSHIBA:25017,TOSHIBA:23017/?replicaSet=replicaDemo"));

		DB db = mongoClient1.getDB("db_demo");
		DBCollection table = db.getCollection("collection_demo");
		DBCursor cursor = table.find();
		while(cursor.hasNext()) {
		    System.out.println(cursor.next());
		  }

    }
}
