package pt.iscte.es.login;

import java.awt.Color;
import java.awt.Font;

import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JPanel;
import javax.swing.JPasswordField;
import javax.swing.JSeparator;
import javax.swing.JTextField;
import javax.swing.SwingConstants;
import javax.swing.border.EmptyBorder;

public class Login_GUI extends JFrame {

	/**
	 * 
	 */
	private static final long serialVersionUID = 7834484870361900848L;

	private JPanel contentPane;
	private JButton btn_login;
	private JTextField user;
	private JTextField password;
	
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

		btn_login = new JButton("Login");
		btn_login.setBounds(225, 150, 100, 25);
		center.add(btn_login);
	}

	public JButton getBtn_login() {
		return btn_login;
	}

	public String getUser() {
		return user.getText();
	}

	public String getPassword() {
		return password.getText();
	}

	public void open() {
		setVisible(true);
	}
	
}