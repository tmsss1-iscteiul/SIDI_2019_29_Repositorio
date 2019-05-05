package pt.iscte.sidfinal.functionalities;

import java.awt.BorderLayout;
import java.awt.Dimension;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JPanel;
import javax.swing.JScrollPane;
import javax.swing.JTextArea;
import javax.swing.JTextField;
import javax.swing.WindowConstants;

public class Frame {

	private JFrame frame = new JFrame("SID");

	/* TextAreas do Paho (mensagens recebidas), MongoTL (mensagens enviadas para a coleção templumi),
	MongoDB */
	
	private JTextArea textAreaPaho;
	private JTextArea textAreaMongoTL;
	private JTextArea textAreaMySql;
	
	// ScrollPane de todas as textAreas para maior facilidade de visualização
	
	private JScrollPane scrollPanePaho;
	private JScrollPane scrollPaneMongoTL;
	private JScrollPane scrollPaneMySql;
	
	// Elementos para utilizar Paho, textField para escrever topic pretendido e botão para confirmar e subscrever o topico
	
	private JTextField topicText;
	private JButton subscribeButton;
	
	/* Elementos para utilizar Sybase, textField para escrever ip do servidor MySql e botão para confirmar,
	textField para inserir frequencia pretendida (em segundos) e o botão para confirmar */
	 	
	private JTextField ipText;
	private JButton ipButton;
	private JTextField frequencyTextMySql;
	private JButton frequencyButtonMySql;
	
	/* Elementos para utilizar MongoDB, textField para escrever o host do servidor MongoDB e botão para confirmar,
	textField para inserir frequencia pretendida (em segundos) e o botão para confirmar */
	
	private JTextField hostText;
	private JButton hostButton;
	private JTextField frequencyTextMongo;
	private JButton frequencyButtonMongo;
	
	// Tempos em milisegundos para a migração
	
	private int timerMySql = 20000;
	private int timerMongo = 0000;
	
	// Metodo que vai iniciar a frame
	
	public void init(){
		
		frame.setDefaultCloseOperation(WindowConstants.EXIT_ON_CLOSE);
		
		JPanel panel = new JPanel();
		
		panel.setLayout(new BorderLayout());
		frame.add(panel);
		
		panelPaho(panel);
		panelMongo(panel);
		panelMySql(panel);	
		
		frame.setVisible(true);
		frame.setSize(908, 515);
	}
	
	// Painel Paho

	private void panelPaho(JPanel panel) {
		
		JPanel panelPaho = new JPanel();
		panel.add(panelPaho, BorderLayout.WEST);
		
		JPanel panelSecun = new JPanel();
		panelSecun.setLayout(new BorderLayout());
		panelPaho.add(panelSecun);
		JPanel panelSecunCenter = new JPanel();
		panelSecun.add(panelSecunCenter, BorderLayout.CENTER);
		
		JLabel paho = new JLabel("Paho");
		
		JLabel topic = new JLabel("Topic: ");
		topicText = new JTextField("foo");
		topicText.setPreferredSize(new Dimension(200, 28));
		subscribeButton = new JButton("Subscribe");
		
		textAreaPaho = new JTextArea();
		textAreaPaho.setEditable(false);
		scrollPanePaho = new JScrollPane(textAreaPaho);
		scrollPanePaho.setPreferredSize(new Dimension(480, 175));
		
		panelSecun.add(paho, BorderLayout.NORTH);
		panelSecun.add(scrollPanePaho, BorderLayout.SOUTH);
		panelSecunCenter.add(topic);
		panelSecunCenter.add(topicText);
		panelSecunCenter.add(subscribeButton);
	}
	
	// Painel MongoDB
	
	private void panelMongo(JPanel panel) {

		JPanel panelMongo = new JPanel();
		panel.add(panelMongo, BorderLayout.SOUTH);
		
		JPanel panelSecun = new JPanel();
		panelSecun.setLayout(new BorderLayout());
		panelMongo.add(panelSecun);
		JPanel panelSecunCenter = new JPanel();
		panelSecun.add(panelSecunCenter, BorderLayout.CENTER);
		
		JLabel mongo = new JLabel("Mongo");
		
		JLabel host = new JLabel("Host: ");
		hostText = new JTextField("localhost");
		hostText.setPreferredSize(new Dimension(125, 28));
		hostButton = new JButton("Connect");
		JLabel frequency = new JLabel("Frequency: ");
		frequencyTextMongo = new JTextField(String.valueOf(timerMongo/1000));
		frequencyTextMongo.setPreferredSize(new Dimension(50, 28));
		frequencyButtonMongo = new JButton("Set");
		
		frequencyButtonMongo.addActionListener(new ActionListener() {
			
			@Override
			public void actionPerformed(ActionEvent e) {
				timerMongo = Integer.parseInt(frequencyTextMongo.getText()) * 1000;
				
			}
		});
		
		textAreaMongoTL = new JTextArea();
		textAreaMongoTL.setEditable(false);
		scrollPaneMongoTL = new JScrollPane(textAreaMongoTL);
		scrollPaneMongoTL.setPreferredSize(new Dimension(883, 175));
		
		panelSecun.add(mongo, BorderLayout.NORTH);
		panelSecun.add(scrollPaneMongoTL, BorderLayout.SOUTH);
		
		JPanel textArea = new JPanel();
		textArea.setLayout(new BorderLayout());
		panelSecun.add(textArea, BorderLayout.SOUTH);
		textArea.add(scrollPaneMongoTL, BorderLayout.CENTER);
		panelSecunCenter.add(host);
		panelSecunCenter.add(hostText);
		panelSecunCenter.add(hostButton);
		panelSecunCenter.add(frequency);
		panelSecunCenter.add(frequencyTextMongo);
		panelSecunCenter.add(frequencyButtonMongo);
	}

	// Painel MySql
	
	private void panelMySql(JPanel panel) {
		
		JPanel panelSybase = new JPanel();
		panel.add(panelSybase, BorderLayout.CENTER);
		
		JPanel panelSecun = new JPanel();
		panelSecun.setLayout(new BorderLayout());
		panelSybase.add(panelSecun);
		JPanel panelSecunCenter = new JPanel();
		panelSecun.add(panelSecunCenter, BorderLayout.CENTER);
		
		JLabel MySql = new JLabel("MySql");
		
		JLabel ipLabel = new JLabel("IP: ");
		ipText = new JTextField("localhost");
		ipText.setPreferredSize(new Dimension(125, 28));
		ipButton = new JButton("OK");
		JLabel frequency = new JLabel("Frequency: ");
		frequencyTextMySql = new JTextField(String.valueOf(timerMySql/1000));
		frequencyTextMySql.setPreferredSize(new Dimension(50, 28));
		frequencyButtonMySql = new JButton("Set");
		
		frequencyButtonMySql.addActionListener(new ActionListener() {
			
			@Override
			public void actionPerformed(ActionEvent e) {
				timerMySql = Integer.parseInt(frequencyTextMySql.getText()) * 1000;
			}
		});
	
		textAreaMySql = new JTextArea();
		textAreaMySql.setEditable(false);
		scrollPaneMySql = new JScrollPane(textAreaMySql);
		scrollPaneMySql.setPreferredSize(new Dimension(395, 175));
		panelSybase.add(scrollPaneMySql);
		
		panelSecun.add(MySql, BorderLayout.NORTH);
		panelSecun.add(scrollPaneMySql, BorderLayout.SOUTH);
		panelSecunCenter.add(ipLabel);
		panelSecunCenter.add(ipText);
		panelSecunCenter.add(ipButton);
		panelSecunCenter.add(frequency);
		panelSecunCenter.add(frequencyTextMySql);
		panelSecunCenter.add(frequencyButtonMySql);
	}
	
	public JScrollPane getScrollPanePaho(){
		return scrollPanePaho;
	}
	
	public JScrollPane getScrollPaneMongoTL(){
		return scrollPaneMongoTL;
	}
	
	public JScrollPane getScrollPaneMySql(){
		return scrollPaneMySql;
	}
	
	public JTextField getTopicText(){
		return topicText;
	}
	
	public JButton getSubscribeButton(){
		return subscribeButton;
	}
	
	public JTextField getIPText(){
		return ipText;
	}
	
	public JButton getIPButtonMySql(){
		return ipButton;
	}

	public JTextField getFrequencyTextMySql() {
		return frequencyTextMySql;
	}

	public JButton getFrequencyButtonMySql() {
		return frequencyButtonMySql;
	}

	public JTextField getHostText() {
		return hostText;
	}

	public JButton getHostButton() {
		return hostButton;
	}

	public JTextField getFrequencyTextMongo() {
		return frequencyTextMongo;
	}

	public JButton getFrequencyButtonMongo() {
		return frequencyButtonMongo;
	}	
	
	public int getTimerMySql(){
		return timerMySql;
	}
	
	public int getTimerMongo(){
		return timerMongo;
	}
}