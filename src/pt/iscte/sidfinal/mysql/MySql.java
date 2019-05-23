package pt.iscte.sidfinal.mysql;

import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.sql.*;

import javax.swing.DefaultListModel;
import javax.swing.JList;

import org.bson.Document;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;

import com.mongodb.client.MongoCursor;

import pt.iscte.sidfinal.functionalities.Frame;
import pt.iscte.sidfinal.mongo.Mongo;


public class MySql extends Thread{
	
	static final String JDBC_DRIVER = "com.mysql.jdbc.Driver"; // MySql driver

	static String DB_URL = null; 

	// Credenciais (username e password) de acesso ao MySQL
	
	static final String USER = "root";
	static final String PASS = "root";
	//---
	
	private Connection conn = null;
    private Statement stmt = null;
    
	private Frame frame;

	// Modelo e lista para inserir posteriormente no scrollPane
	
	private DefaultListModel<String> model = new DefaultListModel<>();
	private JList<String> list;
	
	private boolean connect = false;
	
	private Mongo mongo;

	public MySql(Frame frame, Mongo mongo){
		this.frame = frame;
		this.mongo = mongo;
	}
	
	// Metodo que vai criar URL para a conexão ao MySQL com o respectivo IP do servidor e a base de dados MySQL
	
	public void main() {
		
		frame.getIPButtonMySql().addActionListener(new ActionListener() {
			
			@Override
			public void actionPerformed(ActionEvent e) {
		
				DB_URL = "jdbc:mysql://" + frame.getIPText().getText() + "/db_mysql_origem";
				start();
			}
		});
		
		frame.getFrequencyButtonMySql().addActionListener(new ActionListener() {
			
			@Override
			public void actionPerformed(ActionEvent e) {
				interrupt();
				
			}
		});
	}
	
	@Override
	public void run() {
		
		while(true){
			
			Connect();
			
    		try {
    			Thread.sleep(frame.getTimerMySql());
			} catch (InterruptedException a) {
				// TODO Auto-generated catch block
				a.printStackTrace();
			}
			
		}
	}
	
	// Metodo para efetuar a conexão ao MySQL
	
	public void Connect(){
		
	    try {
	    	if(!connect){
				
		        Class.forName(JDBC_DRIVER);
	
		        System.out.println("Connecting to database...");
		        conn = DriverManager.getConnection(DB_URL, USER, PASS);

		        connect = true;
		        
		        stmt = conn.createStatement();
		        
				selectTemp();
				selectLumi();
	    	}
	    	
	    	else{
	    		
	    		stmt = conn.createStatement();
	    		
	    		addToMySql();
	        
	        	selectTemp();
	        	selectLumi();
	    	}
	        stmt.close();
//	        conn.close();
	    } catch (SQLException se) {
	        se.printStackTrace();
	    } catch (Exception e) {
	        e.printStackTrace();
	    } finally {

	    }
	}	
	
	/* Metodo para inserir dados no MySQL na tabela HumidadeTemperatura por cada dos inserido 
	com sucesso e inserido na coleção BackUp do MongoDB */
	
	public void addToMySql(){
		
        String sql;
        String sql2;
        
        String sqlSPTemp;
        String sqlSPLum;

        
        if(mongo.getConnect() == true){    
        	
			MongoCursor<Document> cursor = (MongoCursor<Document>) mongo.getTL().find().iterator();
			
	    	while(cursor.hasNext()) {
	    	    
	    		JSONParser parser = new JSONParser();
	    		JSONObject json = null;
				try {
					json = (JSONObject) parser.parse(cursor.next().toJson().toString());
				} catch (ParseException e1) {
					e1.printStackTrace();
				}
	
				/*
	    		Timestamp date = Timestamp.valueOf(json.get("date").toString());
	    		Double temperatura = null;
	    		Long cell = null;
	    		if(json.get("temperature") != null)
	    			temperatura = (Double) json.get("temperature");
	    		if(json.get("cell") != null)
	    			cell = (Long) json.get("cell");
	    		
				
				double temp = 0;
				double lum = 0;
				String date = "";
				String time = "";
				
				if(json.get("temperatura") != null)
	    			temp = (Double) json.get("temperatura");
	    		if(json.get("luminosidade") != null)
	    			lum = (Double) json.get("luminosidade");
	    		if(json.get("data") != null)
	    			date = (String) json.get("data");
	    		if(json.get("tempo") != null)
	    			time = (String) json.get("tempo");

				*/
	    		mongo.getModelTL().clear();
	    		sqlSPTemp = "call Insert_Temperatura_v3("
	    												+ "\'" + (json.get("temperatura") != null ? json.get("temperatura") : null) + "\'"
	    												+ ", "
	    												+ "\'" + (json.get("data") != null ? json.get("data") : null) + "\'"
	    												+ ", "
	    												+ "\'" + (json.get("tempo") != null ? json.get("tempo"): null) + "\'"
	    												+ ")";
	    		
	    		sqlSPLum = "call Insert_Luminosidade_v3("
														+ "\'" + (json.get("luminosidade") != null ? json.get("luminosidade") : null) + "\'"
														+ ", "
														+ "\'" + (json.get("data") != null ? json.get("data") : null) + "\'"
														+ ", "
														+ "\'" + (json.get("tempo") != null ? json.get("tempo"): null) + "\'"
														+ ")";
	    		
	    		System.out.println(sqlSPTemp);
	    		System.out.println(sqlSPLum);
	    		
	    		try {
		        	if(json.get("temperatura") != null)
		        		stmt.execute(sqlSPTemp);
		        	if(json.get("luminosidade") != null)
		        		stmt.execute(sqlSPLum);
				} catch (SQLException e) {
					e.printStackTrace();
				}
	    				
	    		/*		
	    		sql = "insert into medicoestemperatura values (1, " + temp + ", '" + date + "')";
		        sql2 = "insert into medicoesluminosidade values (1, " + lum + ", '" + date + "')";
		        System.out.println(sql);
		        try {
		        	if(temp != null)
		        		stmt.execute(sql);
		        	if(lum != null)
		        		stmt.execute(sql2);
				} catch (SQLException e) {
					e.printStackTrace();
				}
				*/
	    		
	    		
	       	}
	        
	    	mongo.getTL().deleteMany(new Document());
	    	
	    	mongo.getModelTL().clear();
        }
	}
	
	// Metodo que efetua o select a tabela temp do sensor para ser possivel visualizar na frame
	
	public void selectTemp(){
		
        String sql;
        ResultSet rs = null;
    	        
        sql = "select * from medicoestemperatura";
        try {
			rs = stmt.executeQuery(sql);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

        model.clear();
        
        try {
			while (rs.next()) {
			    String data = rs.getString("DataHoraMedicao");
			    Double temperatura = rs.getDouble("ValorMedicaoTemperatura");
			    Integer id = rs.getInt("IDMedicao");
			    
			    model.addElement("Temperatura -> " + id + " | " + temperatura + " | " + data);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
        
        try {
			rs.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	// Metodo que efetua o select a tabela lumi do sensor para ser possivel visualizar na frame
	
		public void selectLumi(){
			
	        String sql;
	        ResultSet rs = null;
	    	        
	        sql = "select * from medicoesluminosidade";
	        try {
				rs = stmt.executeQuery(sql);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
	        
	        try {
				while (rs.next()) {
				    String data = rs.getString("DataHoraMedicao");
				    Integer cell = rs.getInt("ValorMedicaoLuminosidade");
				    Integer id = rs.getInt("IDMedicao");
				    
				    model.addElement("Luminosidade -> " + id + " | " + cell + " | " + data);
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
	        
	        try {
				rs.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

	        list = new JList<>(model);
	        frame.getScrollPaneMySql().setViewportView(list);
		}
}
