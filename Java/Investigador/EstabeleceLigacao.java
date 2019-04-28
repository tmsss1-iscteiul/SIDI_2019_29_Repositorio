package ligacao;

import java.sql.Connection;
import java.sql.DriverManager;

public class EstabeleceLigacao {

	
	public Connection getConnection(String username, String password) {
		try {
			String driver = "com.mysql.jdbc.Driver";
			String url = "jdbc:mysql://localhost:3306/db_mysql_origem";
			Class.forName(driver);
			
			Connection conn = DriverManager.getConnection(url, username, password);
			return conn;
		
		}catch(Exception e) {
			System.out.println(e);
		}
		return null;
	}
	
//	public static void main(String[] args) {
//		getConnection("beatriz", "hey");
//	}
//	
}
