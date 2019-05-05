package pt.iscte.sidfinal.functionalities;

import pt.iscte.sidfinal.mongo.Mongo;
import pt.iscte.sidfinal.mysql.MySql;
import pt.iscte.sidfinal.paho.Paho;

public class Main {

	public static void main(String[] args) {
		
		Frame frame = new Frame();
		frame.init();
		
		Paho paho = new Paho(frame);
		Mongo mongo = new Mongo(frame);
		MySql mysql = new MySql(frame, mongo);
		
		Algorithm algorithm = new Algorithm(frame);
		
		paho.main(algorithm);
		mongo.main(algorithm);
		mysql.main();
	}

}
