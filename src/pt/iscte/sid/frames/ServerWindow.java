package pt.iscte.sid.frames;

import java.awt.EventQueue;

import javax.swing.JFrame;
import javax.swing.JPanel;
import java.awt.BorderLayout;
import javax.swing.JButton;
import javax.swing.JTextField;
import javax.swing.JLabel;
import java.awt.Font;

public class ServerWindow {

	private JFrame frmJanelaDeControlo;
	private JTextField txtTempoParaMigrao;

	/**
	 * Launch the application.
	 */
	public static void main(String[] args) {
		EventQueue.invokeLater(new Runnable() {
			public void run() {
				try {
					ServerWindow window = new ServerWindow();
					window.frmJanelaDeControlo.setVisible(true);
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		});
	}

	/**
	 * Create the application.
	 */
	public ServerWindow() {
		initialize();
	}

	/**
	 * Initialize the contents of the frame.
	 */
	private void initialize() {
		frmJanelaDeControlo = new JFrame();
		frmJanelaDeControlo.setTitle("Janela de Controlo");
		frmJanelaDeControlo.setBounds(100, 100, 508, 189);
		frmJanelaDeControlo.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		
		JPanel panel = new JPanel();
		frmJanelaDeControlo.getContentPane().add(panel, BorderLayout.CENTER);
		panel.setLayout(null);
		
		JButton btnNewButton = new JButton("New button");
		btnNewButton.setBounds(376, 98, 102, 32);
		panel.add(btnNewButton);
		
		JButton button = new JButton("New button");
		button.setBounds(244, 98, 102, 32);
		panel.add(button);
		
		JButton button_1 = new JButton("New button");
		button_1.setBounds(314, 42, 102, 32);
		panel.add(button_1);
		
		txtTempoParaMigrao = new JTextField();
		txtTempoParaMigrao.setText(" Tempo para migra\u00E7\u00E3o Mongo - MySQL");
		txtTempoParaMigrao.setBounds(29, 42, 264, 32);
		panel.add(txtTempoParaMigrao);
		txtTempoParaMigrao.setColumns(10);
		
		JLabel lblTempoDefault = new JLabel("Tempo default: 30 seg");
		lblTempoDefault.setEnabled(false);
		lblTempoDefault.setBounds(10, 11, 162, 20);
		panel.add(lblTempoDefault);
		
		JLabel lblNewLabel = new JLabel("Server Stoped!");
		lblNewLabel.setFont(new Font("Tahoma", Font.PLAIN, 13));
		lblNewLabel.setBounds(47, 97, 112, 32);
		panel.add(lblNewLabel);
	}
}
