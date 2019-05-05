package pt.iscte.sidfinal.mongo;

import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.sql.Time;
import java.sql.Timestamp;
import java.util.Arrays;
import java.util.List;

import javax.swing.DefaultListModel;
import javax.swing.JList;

import org.bson.Document;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;

import com.mongodb.*;
import com.mongodb.client.MongoCollection;
import com.mongodb.client.MongoCursor;
import com.mongodb.client.MongoDatabase;

import pt.iscte.sidfinal.functionalities.Algorithm;
import pt.iscte.sidfinal.functionalities.Frame;

public class Mongo extends Thread {

	private static MongoClient mongo; // Cliente MongoDB

	private MongoDatabase database; // Base de dados MongoDB

	// Coleções da base de dados MongoDB

	private MongoCollection<Document> templumi;

	// Modelos e lista para inserir posteriormente no scrollPane

	private DefaultListModel<String> modelTL = new DefaultListModel<>();
	private JList<String> list;
	// ---

	private Frame frame;
	private Algorithm algorithm = new Algorithm(frame);
	private boolean connect = false;
	
	private Thread worker;

	public Mongo(Frame frame) {
		this.frame = frame;
		
		worker = new Thread(new Runnable() {
			@Override
			public void run() {
				DoWork();
			}
		});
	}

	// Metodo que vai iniciar o cliente MongoDB e acessar a base de dados e coleções

	public void main(Algorithm algorithm) {
		this.algorithm = algorithm;

		frame.getHostButton().addActionListener(new ActionListener() {

			@Override
			public void actionPerformed(ActionEvent e) {
				if (connect) {
					mongo.close();
					worker.interrupt();
					connect();
					worker = new Thread(new Runnable() {
						@Override
						public void run() {
							DoWork();
						}
					});
					worker.start();
				}else {
					connect();
					worker = new Thread(new Runnable() {
						@Override
						public void run() {
							DoWork();
						}
					});
					worker.start();
				}
			}
		});

		frame.getFrequencyButtonMongo().addActionListener(new ActionListener() {

			@Override
			public void actionPerformed(ActionEvent e) {
				interrupt();
			}
		});
	}
	
	private void connect() {
		ServerAddress serverAddress = new ServerAddress(frame.getHostText().getText(), 27017);
		// MongoCredential credential = MongoCredential.createCredential("admin",
		// "MedicoesSensor", "admin".toCharArray());
		// mongo = new MongoClient(serverAddress, Arrays.asList(credential));
		mongo = new MongoClient(serverAddress);
		database = mongo.getDatabase("dbSid");
		templumi = database.getCollection("templumi");
		connect = true;
	}

	// Metodo que vai chamar o método para inserir dados na coleção principal
	// HumidadeTemperatura consoante o timer escolhido
	
	public void DoWork() {
		readCollection();
//		readBackUp();
		while (true) {

			try {
				Thread.sleep(frame.getTimerMongo());
			} catch (InterruptedException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

			if (algorithm.getJSONArray().size() > 0) {
				addCollection();

				readCollection();
//		      	readBackUp();
			}
		}
	}

	// Metodo para inserir dados na coleção HumidadeTemperatura

	private void addCollection() {

		Document doc = new Document();

		if (!algorithm.getJSONArray().isEmpty()) {

			for (int i = 0; i < algorithm.getJSONArray().size(); i++) {

				doc = Document.parse(algorithm.getJSONArray().get(i).toString());

				templumi.insertOne(doc);
			}

			algorithm.getJSONArray().clear();

			readCollection();
		}
	}

	// Metodo para inserir dados na coleção BackUp (dados que foram enviados com
	// sucesso para o sybase)

//	public void addBackUp(Double temperatura, Double humidade, Timestamp date, Time time) {
//			
//		Document doc = new Document().append("temperature", temperatura).append("humidity", humidade).append("date", date).append("time", time);
//		
//		BackUp.insertOne(doc);
//		
//		readBackUp();
//	}

	// Metodo para ler coleção BackUp e inserir dados no ScrollPane para serem
	// visualizados na frame

//	private void readBackUp() {
//		
//		modelB.clear();
//		
//      	MongoCursor<Document> cursor = (MongoCursor<Document>) BackUp.find().iterator();
//
//    	while(cursor.hasNext()) {
//    	    modelB.addElement(cursor.next().toJson().toString());
//       	}
//
//    	list = new JList<>(modelB);
//    	frame.getScrollPaneMongoB().setViewportView(list);
//	}

	// Metodo para ler coleção HumidadeTemperatura e inserir dados no ScrollPane
	// para serem visualizados na frame

	private void readCollection() {

		modelTL.clear();

		MongoCursor<Document> cursor = (MongoCursor<Document>) templumi.find().iterator();

		while (cursor.hasNext()) {
			modelTL.addElement(cursor.next().toJson().toString());
		}

		list = new JList<>(modelTL);
		frame.getScrollPaneMongoTL().setViewportView(list);
	}

	public MongoCollection<Document> getTL() {
		return templumi;
	}

	public DefaultListModel<String> getModelTL() {
		return modelTL;
	}

	public boolean getConnect() {
		return connect;
	}
}
