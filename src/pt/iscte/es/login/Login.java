package pt.iscte.es.login;

import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.io.FileNotFoundException;
import java.io.UnsupportedEncodingException;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.swing.JOptionPane;

import pt.iscte.es.admin.AdminAPP;
import pt.iscte.es.admin.Admin_GUI;
import pt.iscte.es.investigador.InvestigadorAPP;

/**
 * 
 * @author jfnfs
 *
 */
public class Login {

	private Login_GUI gui;

	private String username;
	private String password;
	private Connection conn;

	/**
	 * 
	 */
	public Login() {
		gui = new Login_GUI();
	}

	/**
	 * 
	 */
	public void start() {
		addButtonActionListener();
		gui.open();
	}

	/**
	 * Realiza o Login
	 * @throws FileNotFoundException
	 * @throws UnsupportedEncodingException
	 */
	private void login() throws FileNotFoundException, UnsupportedEncodingException {
		conn = getConnection(username, password);
		
		if (conn != null && isInvestigador(conn)) {
			JOptionPane.showMessageDialog(null, "You have sucessfully logged in!");
			InvestigadorAPP investigador = new InvestigadorAPP(conn, username);
			investigador.start();
			gui.dispose();

		} else if (conn != null && !isInvestigador(conn)) {
			JOptionPane.showMessageDialog(null, "You have sucessfully logged in!");
			AdminAPP admin = new AdminAPP(conn, username);
			admin.start();
			gui.dispose();
		} else {
			JOptionPane.showMessageDialog(null, "Username or Password Invalid!");
		}
	}

	/**
	 * Obtem conecção
	 * @param username
	 * @param password
	 * @return
	 */
	public Connection getConnection(String username, String password) {
		try {
			String driver = "com.mysql.jdbc.Driver";
			String url = "jdbc:mysql://localhost:3306/db_mysql_origem";
			Class.forName(driver);
			conn = DriverManager.getConnection(url, username, password);
			return conn;
		} catch (Exception e) {
			System.out.println(e);
		}
		return null;
	}
	
	/**
	 * 
	 * @param conn
	 * @return
	 */
	private boolean isInvestigador(Connection conn){
		try {
			PreparedStatement statement;
			statement = conn.prepareStatement("SELECT Email FROM investigador WHERE Email LIKE ?");
			statement.setString(1, username + "@" + "%");
			ResultSet result = statement.executeQuery();
			if(result.next())
				return true;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}

	/**
	 * 
	 */
	private void addButtonActionListener() {
		gui.getBtn_login().addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				try {
					username = gui.getUser();
					password = gui.getPassword();
					login();
				} catch (FileNotFoundException e1) {
					e1.printStackTrace();
				} catch (UnsupportedEncodingException e1) {
					e1.printStackTrace();
				}
			}
		});
	}

}
