package pt.iscte.sid.frames;

import java.awt.EventQueue;

import javax.swing.JFrame;
import javax.swing.JPanel;
import java.awt.BorderLayout;
import javax.swing.JButton;
import javax.swing.JTextField;
import javax.swing.JLabel;
import java.awt.Font;
import javax.swing.SwingConstants;

import pt.iscte.sid.core.Servidor;

import java.awt.event.MouseAdapter;
import java.awt.event.MouseEvent;

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
					new ServerWindow();
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
		frmJanelaDeControlo.setVisible(true);
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
		
		JButton btnStart = new JButton("Start");
		btnStart.addMouseListener(new MouseAdapter() {
			@Override
			public void mouseClicked(MouseEvent e) {
				EventQueue.invokeLater(new Runnable() {
					
					@Override
					public void run() {
						try {
							new Servidor();
						}catch (Exception e) {
							e.printStackTrace();
						}
						
					}
				});
			}
		});
		btnStart.setFont(new Font("Tahoma", Font.PLAIN, 14));
		btnStart.setBounds(244, 98, 102, 32);
		panel.add(btnStart);
		
		JButton btnModificarTempo = new JButton("Modificar Tempo");
		btnModificarTempo.addMouseListener(new MouseAdapter() {
			@Override
			public void mouseClicked(MouseEvent e) {
				
			}
		});
		btnModificarTempo.setBounds(314, 42, 127, 32);
		panel.add(btnModificarTempo);
		
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
		lblNewLabel.setHorizontalAlignment(SwingConstants.CENTER);
		lblNewLabel.setFont(new Font("Tahoma", Font.PLAIN, 13));
		lblNewLabel.setBounds(47, 97, 112, 32);
		panel.add(lblNewLabel);
		
		JButton btnStop = new JButton("Stop");
		btnStop.addMouseListener(new MouseAdapter() {
			@Override
			public void mouseClicked(MouseEvent e) {
				
			}
		});
		btnStop.setFont(new Font("Tahoma", Font.PLAIN, 14));
		btnStop.setBounds(380, 98, 102, 32);
		panel.add(btnStop);
	}
}
