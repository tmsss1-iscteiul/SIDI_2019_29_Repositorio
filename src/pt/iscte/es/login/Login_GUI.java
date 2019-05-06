package pt.iscte.es.login;

import java.awt.Color;
import java.awt.EventQueue;
import java.awt.Font;

import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JOptionPane;
import javax.swing.JPanel;
import javax.swing.JPasswordField;
import javax.swing.JSeparator;
import javax.swing.JTextField;
import javax.swing.SwingConstants;
import javax.swing.border.EmptyBorder;

import pt.iscte.es.investigador.InvestigadorSQL;
import pt.iscte.es.investigador.Investigador_GUI;

import java.awt.event.ActionListener;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.awt.event.ActionEvent;

public class Login_GUI extends JFrame {

	/**
	 * 
	 */
	private static final long serialVersionUID = 7834484870361900848L;

	private JPanel contentPane;
	private JTextField user;
	private JTextField password;
	private String username;
	private String pass;
	private InvestigadorSQL cmd = new InvestigadorSQL();


	/**
	 * Launch the application.
	 */
	public static void main(String[] args) {
		EventQueue.invokeLater(new Runnable() {
			public void run() {
				try {
					Login_GUI frame = new Login_GUI();
					frame.setVisible(true);
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		});
	}

	/**
	 * Create the frame.
	 */
	public Login_GUI() {
		setTitle("SID 18/19");
		setResizable(false);
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		setBounds(100, 100, 555, 375);
		contentPane = new JPanel();
		contentPane.setBorder(new EmptyBorder(5, 5, 5, 5));
		contentPane.setLayout(null);
		setContentPane(contentPane);

		JPanel north = new JPanel();
		north.setBackground(new Color(51, 204, 102));
		north.setBounds(0, 0, 550, 50);
		north.setLayout(null);
		contentPane.add(north);

		JLabel lblLogin = new JLabel("SID 18/19");
		lblLogin.setHorizontalAlignment(SwingConstants.LEFT);
		lblLogin.setBounds(205, 0, 140, 50);
		lblLogin.setFont(new Font("Tahoma", Font.PLAIN, 25));
		north.add(lblLogin);

		JSeparator separator = new JSeparator();
		separator.setForeground(Color.BLACK);
		separator.setBackground(Color.BLACK);
		separator.setBounds(0, 50, 680, 5);
		contentPane.add(separator);

		JPanel center = new JPanel();
		center.setBackground(new Color(51, 204, 102));
		center.setBounds(0, 50, 550, 300);
		center.setLayout(null);
		contentPane.add(center);

		JLabel lblUsername = new JLabel("Username:");
		lblUsername.setBounds(150, 40, 70, 25);
		center.add(lblUsername);

		user = new JTextField();
		user.setBounds(220, 40, 180, 25);
		user.setColumns(10);
		center.add(user);

		JLabel lblPassword = new JLabel("Password:");
		lblPassword.setBounds(150, 95, 70, 25);
		center.add(lblPassword);

		password = new JPasswordField();
		password.setBounds(220, 95, 180, 25);
		password.setColumns(10);
		center.add(password);

		JButton btn_login = new JButton("Login");
		btn_login.setBounds(225, 150, 100, 25);
		center.add(btn_login);

		btn_login.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				try {
					login(user, password);
				} catch (FileNotFoundException e1) {
					// TODO Auto-generated catch block
					e1.printStackTrace();
				} catch (UnsupportedEncodingException e1) {
					// TODO Auto-generated catch block
					e1.printStackTrace();
				}
			}

		});
	}

	private void login(JTextField user, JTextField password) throws FileNotFoundException, UnsupportedEncodingException {
		username = user.getText();
		pass = password.getText();
		cmd.setUsername(username);
		cmd.setPassword(pass);
		if (cmd.getConnection(username, pass) != null) {	
			escreveFicheiro(username, pass);
			JOptionPane.showMessageDialog(null ,"You have sucessfully logged in!");
			Investigador_GUI loggedin = new Investigador_GUI();
			loggedin.setVisible(true);
			dispose();
		}else if (user.getText().equals("admin") && password.getText().equals("qwert")){
			JOptionPane.showMessageDialog(null ,"You have sucessfully logged in!");
			pt.iscte.es.admin.Admin_GUI loggedin = new pt.iscte.es.admin.Admin_GUI();
			loggedin.setVisible(true);
			dispose();
		}
		else
			JOptionPane.showMessageDialog(null,"Username or Password Invalid!");
	}

	private void escreveFicheiro(String username, String password) throws FileNotFoundException, UnsupportedEncodingException {
		PrintWriter writer = new PrintWriter("info.txt", "UTF-8");
		writer.println(username + " " + password);
		writer.close();
	}

	public void apagaFicheiro(String nome) {
		File file = new File("C:\\Users\\Acer\\git\\SIDI_2019_29_Repositorio\\info.txt");
		if(file.exists()) {
			file.delete();
		} else {
			System.out.println("Sem nenhum ficheiro para apagar!");	
		}
	}
}
