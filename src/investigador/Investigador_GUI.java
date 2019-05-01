package investigador;

import java.awt.EventQueue;

import javax.swing.JFrame;
import javax.swing.JPanel;
import javax.swing.border.EmptyBorder;
import javax.swing.JButton;
import javax.swing.JLabel;
import javax.swing.JOptionPane;

import java.awt.Font;
import java.awt.Color;

import javax.swing.SwingConstants;
import javax.swing.JSeparator;
import javax.swing.JTextField;
import javax.swing.JComboBox;
import javax.swing.DefaultComboBoxModel;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

import javax.swing.JTextArea;

public class Investigador_GUI extends JFrame {

	/**
	 * 
	 */
	private static final long serialVersionUID = -2695713581214000006L;

	private JPanel contentPane;
	private JPanel centerPanel;
	
	private JPanel criarCulturaPanel;
	private JTextField textField_NomeCultura_pcc;
	private JButton btn_InserirCultura_pcc;
	
	private JPanel verCulturasPanel;
	private JTextField textField_NomeCultura_pvc;
	private JButton btn_AlterarCultura_pvc;
	
	private JPanel atribuirVariavelPanel;
	private JTextField textField_LimiteInferior_pav;
	private JTextField textField_LimiteSuperior_pav;
	private JButton btn_AtribuirVariavel_pav;
	
	private JPanel inserirMedicoesPanel;
	private JTextField textField_ValorMedicao_pim;
	private JButton btn_InserirMedicao_pim;
	

	/**
	 * Launch the application.
	 */
	public static void main(String[] args) {
		EventQueue.invokeLater(new Runnable() {
			public void run() {
				try {
					Investigador_GUI frame = new Investigador_GUI();
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
	public Investigador_GUI() {
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

		JLabel lblInvestigador = new JLabel("Investigador");
		lblInvestigador.setHorizontalAlignment(SwingConstants.LEFT);
		lblInvestigador.setBounds(205, 0, 140, 50);
		lblInvestigador.setFont(new Font("Tahoma", Font.PLAIN, 25));
		north.add(lblInvestigador);

		JSeparator separator = new JSeparator();
		separator.setForeground(Color.BLACK);
		separator.setBackground(Color.BLACK);
		separator.setBounds(0, 50, 680, 5);
		contentPane.add(separator);

		// Painel Centro
		centerPanel = new JPanel();
		centerPanel.setBackground(new Color(51, 204, 102));
		centerPanel.setBounds(172, 52, 378, 248);
		centerPanel.setLayout(null);
		contentPane.add(centerPanel);

		panel_CriarCultura();
		panel_VerCulturas();
		panel_AtribuirVariavel();
		panel_InserirMedicoes();
		
		addButtonsActions();

		JSeparator separator_1 = new JSeparator();
		separator_1.setOrientation(SwingConstants.VERTICAL);
		separator_1.setForeground(Color.BLACK);
		separator_1.setBackground(Color.BLACK);
		separator_1.setBounds(170, 50, 5, 250);
		contentPane.add(separator_1);
		
		// Painel Esquerdo (Botoes)
		JPanel Left = new JPanel();
		Left.setBackground(new Color(51, 204, 102));
		Left.setBounds(0, 50, 170, 250);
		Left.setLayout(null);
		contentPane.add(Left);

		JButton btnCriarCultura = new JButton("Criar Cultura");
		btnCriarCultura.setBounds(10, 10, 150, 50);
		btnCriarCultura.addActionListener(new ActionListener() {
			@Override
			public void actionPerformed(ActionEvent e) {
				changePanel(criarCulturaPanel);
			}
		});
		Left.add(btnCriarCultura);
		
		JButton btnVerCulturas = new JButton("Ver Culturas");
		btnVerCulturas.setBounds(10, 70, 150, 50);
		btnVerCulturas.addActionListener(new ActionListener() {
			@Override
			public void actionPerformed(ActionEvent e) {
				changePanel(verCulturasPanel);
			}
		});
		Left.add(btnVerCulturas);
		
		JButton btnAtribuirVariavel = new JButton("Atribuir Variavel");
		btnAtribuirVariavel.setBounds(10, 130, 150, 50);
		btnAtribuirVariavel.addActionListener(new ActionListener() {
			@Override
			public void actionPerformed(ActionEvent e) {
				changePanel(atribuirVariavelPanel);
			}
		});
		Left.add(btnAtribuirVariavel);
		
		JButton btnInserirMedida = new JButton("Inserir Medi\u00E7\u00F5es");
		btnInserirMedida.setBounds(10, 190, 150, 50);
		btnInserirMedida.addActionListener(new ActionListener() {
			@Override
			public void actionPerformed(ActionEvent e) {
				changePanel(inserirMedicoesPanel);
			}
		});
		Left.add(btnInserirMedida);

		JSeparator separator_2 = new JSeparator();
		separator_2.setForeground(Color.BLACK);
		separator_2.setBackground(Color.BLACK);
		separator_2.setBounds(0, 300, 680, 10);
		contentPane.add(separator_2);

		// Painel Sul
		JPanel South = new JPanel();
		South.setBackground(new Color(51, 204, 102));
		South.setBounds(0, 300, 550, 40);
		South.setLayout(null);
		contentPane.add(South);

		JButton btnLogout = new JButton("Logout");
		btnLogout.setBounds(235, 5, 80, 30);
		btnLogout.addActionListener(new ActionListener() {
			@Override
			public void actionPerformed(ActionEvent e) {
				logout();
			}
		});
		South.add(btnLogout);
	}

	private void panel_CriarCultura() {
		criarCulturaPanel = new JPanel();
		criarCulturaPanel.setBackground(new Color(51, 204, 102));
		criarCulturaPanel.setBounds(0, 0, 510, 250);
		criarCulturaPanel.setLayout(null);

		JLabel lblNome_pcc = new JLabel("Nome:");
		lblNome_pcc.setBounds(40, 40, 70, 25);
		criarCulturaPanel.add(lblNome_pcc);

		textField_NomeCultura_pcc = new JTextField();
		textField_NomeCultura_pcc.setBounds(110, 40, 180, 25);
		textField_NomeCultura_pcc.setColumns(10);
		criarCulturaPanel.add(textField_NomeCultura_pcc);

		JLabel lblDescrio_pcc = new JLabel("Descri\u00E7\u00E3o:");
		lblDescrio_pcc.setBounds(40, 75, 70, 25);
		criarCulturaPanel.add(lblDescrio_pcc);

		JTextArea textArea_DescricaoCultura_pcc = new JTextArea();
		textArea_DescricaoCultura_pcc.setBounds(110, 75, 180, 80);
		criarCulturaPanel.add(textArea_DescricaoCultura_pcc);

		btn_InserirCultura_pcc = new JButton("Inserir");
		btn_InserirCultura_pcc.setBounds(110, 180, 100, 25);
		criarCulturaPanel.add(btn_InserirCultura_pcc);
	}

	private void panel_VerCulturas() {
		verCulturasPanel = new JPanel();
		verCulturasPanel.setBackground(new Color(51, 204, 102));
		verCulturasPanel.setBounds(0, 0, 380, 250);
		verCulturasPanel.setLayout(null);

		JLabel lblCultura_pvc = new JLabel("Cultura:");
		lblCultura_pvc.setBounds(40, 40, 70, 25);
		verCulturasPanel.add(lblCultura_pvc);

		JComboBox comboBox_Cultura_pvc = new JComboBox();
		comboBox_Cultura_pvc.setBackground(Color.WHITE);
		comboBox_Cultura_pvc.setModel(new DefaultComboBoxModel(new String[] { "Cultura1", "Cultura2", "Cultura3",
				"Cultura4", "Cultura5", "Cultura6", "Cultura7", "Cultura8", "Cultura9", "Cultura10" }));
		comboBox_Cultura_pvc.setBounds(110, 40, 180, 25);
		verCulturasPanel.add(comboBox_Cultura_pvc);

		JLabel lblNome_pvc = new JLabel("Nome:");
		lblNome_pvc.setBounds(40, 80, 70, 25);
		verCulturasPanel.add(lblNome_pvc);

		textField_NomeCultura_pvc = new JTextField();
		textField_NomeCultura_pvc.setBounds(110, 80, 180, 25);
		textField_NomeCultura_pvc.setColumns(10);
		verCulturasPanel.add(textField_NomeCultura_pvc);

		JLabel lblDescricao_pvc = new JLabel("Descri\u00E7\u00E3o:");
		lblDescricao_pvc.setBounds(40, 120, 100, 25);
		verCulturasPanel.add(lblDescricao_pvc);

		JTextArea textArea_DescricaoCultura_pvc = new JTextArea();
		textArea_DescricaoCultura_pvc.setBounds(110, 120, 180, 80);
		verCulturasPanel.add(textArea_DescricaoCultura_pvc);

		btn_AlterarCultura_pvc = new JButton("Alterar");
		btn_AlterarCultura_pvc.setBounds(110, 215, 100, 25);
		verCulturasPanel.add(btn_AlterarCultura_pvc);
	}

	private void panel_AtribuirVariavel() {
		atribuirVariavelPanel = new JPanel();
		atribuirVariavelPanel.setBackground(new Color(51, 204, 102));
		atribuirVariavelPanel.setBounds(0, 0, 380, 250);
		atribuirVariavelPanel.setLayout(null);

		JLabel lblCultura_pav = new JLabel("Cultura:");
		lblCultura_pav.setBounds(40, 40, 70, 25);
		atribuirVariavelPanel.add(lblCultura_pav);

		JComboBox comboBox_Cultura_pav = new JComboBox();
		comboBox_Cultura_pav.setBackground(Color.WHITE);
		comboBox_Cultura_pav.setModel(new DefaultComboBoxModel(new String[] { "Cultura1", "Cultura2", "Cultura3",
				"Cultura4", "Cultura5", "Cultura6", "Cultura7", "Cultura8", "Cultura9", "Cultura10" }));
		comboBox_Cultura_pav.setBounds(110, 40, 180, 25);
		atribuirVariavelPanel.add(comboBox_Cultura_pav);

		JLabel lblVariavel_pav = new JLabel("Variavel:");
		lblVariavel_pav.setBounds(40, 80, 70, 25);
		atribuirVariavelPanel.add(lblVariavel_pav);

		JComboBox comboBox_Variavel_pav = new JComboBox();
		comboBox_Variavel_pav.setBackground(Color.WHITE);
		comboBox_Variavel_pav.setModel(new DefaultComboBoxModel(new String[] { "Variavel1", "Variavel2", "Variavel3",
				"Variavel4", "Variavel5", "Variavel6", "Variavel7", "Variavel8", "Variavel9", "Variavel10" }));
		comboBox_Variavel_pav.setBounds(110, 80, 180, 25);
		atribuirVariavelPanel.add(comboBox_Variavel_pav);

		JLabel lblLimiteInferior_pav = new JLabel("Limite Inferior:");
		lblLimiteInferior_pav.setBounds(40, 120, 100, 25);
		atribuirVariavelPanel.add(lblLimiteInferior_pav);

		textField_LimiteInferior_pav = new JTextField();
		textField_LimiteInferior_pav.setBounds(150, 120, 40, 25);
		textField_LimiteInferior_pav.setColumns(10);
		atribuirVariavelPanel.add(textField_LimiteInferior_pav);

		JLabel lblLimiteSuperior_pav = new JLabel("Limite Superior:");
		lblLimiteSuperior_pav.setBounds(40, 160, 100, 25);
		atribuirVariavelPanel.add(lblLimiteSuperior_pav);

		textField_LimiteSuperior_pav = new JTextField();
		textField_LimiteSuperior_pav.setBounds(150, 160, 40, 25);
		textField_LimiteSuperior_pav.setColumns(10);
		atribuirVariavelPanel.add(textField_LimiteSuperior_pav);

		btn_AtribuirVariavel_pav = new JButton("Atribuir");
		btn_AtribuirVariavel_pav.setBounds(110, 200, 100, 25);
		atribuirVariavelPanel.add(btn_AtribuirVariavel_pav);
	}

	private void panel_InserirMedicoes() {
		inserirMedicoesPanel = new JPanel();
		inserirMedicoesPanel.setBackground(new Color(51, 204, 102));
		inserirMedicoesPanel.setBounds(0, 0, 380, 250);
		inserirMedicoesPanel.setLayout(null);

		JLabel lblCultura_pim = new JLabel("Cultura:");
		lblCultura_pim.setBounds(40, 40, 70, 25);
		inserirMedicoesPanel.add(lblCultura_pim);

		JComboBox comboBox_Cultura_pim = new JComboBox();
		comboBox_Cultura_pim.setBackground(Color.WHITE);
		comboBox_Cultura_pim.setModel(new DefaultComboBoxModel(new String[] { "Cultura1", "Cultura2", "Cultura3",
				"Cultura4", "Cultura5", "Cultura6", "Cultura7", "Cultura8", "Cultura9", "Cultura10" }));
		comboBox_Cultura_pim.setBounds(110, 40, 180, 25);
		inserirMedicoesPanel.add(comboBox_Cultura_pim);

		JLabel lblVariavel_pim = new JLabel("Variavel:");
		lblVariavel_pim.setBounds(40, 80, 70, 25);
		inserirMedicoesPanel.add(lblVariavel_pim);

		JComboBox comboBox_Variavel_pim = new JComboBox();
		comboBox_Variavel_pim.setBackground(Color.WHITE);
		comboBox_Variavel_pim.setModel(new DefaultComboBoxModel(new String[] { "Variavel1", "Variavel2", "Variavel3",
				"Variavel4", "Variavel5", "Variavel6", "Variavel7", "Variavel8", "Variavel9", "Variavel10" }));
		comboBox_Variavel_pim.setBounds(110, 80, 180, 25);
		inserirMedicoesPanel.add(comboBox_Variavel_pim);

		JLabel lblValorMedicao_pim = new JLabel("Valor Medi\u00E7\u00E3o:");
		lblValorMedicao_pim.setBounds(40, 120, 100, 25);
		inserirMedicoesPanel.add(lblValorMedicao_pim);

		textField_ValorMedicao_pim = new JTextField();
		textField_ValorMedicao_pim.setBounds(150, 120, 40, 25);
		textField_ValorMedicao_pim.setColumns(10);
		inserirMedicoesPanel.add(textField_ValorMedicao_pim);

		btn_InserirMedicao_pim = new JButton("Inserir");
		btn_InserirMedicao_pim.setBounds(110, 170, 100, 25);
		inserirMedicoesPanel.add(btn_InserirMedicao_pim);
	}

	private void changePanel(JPanel panel) {
		centerPanel.removeAll();
		centerPanel.repaint();
		centerPanel.revalidate();
		centerPanel.add(panel);
		centerPanel.repaint();
		centerPanel.revalidate();
	}
	
	private void addButtonsActions() {
		btn_InserirCultura_pcc.addActionListener(new ActionListener() {
			@Override
			public void actionPerformed(ActionEvent e) {
				JOptionPane.showMessageDialog(null, "Cultura inserida com sucesso.");
			}
		});
		
		btn_AlterarCultura_pvc.addActionListener(new ActionListener() {
			@Override
			public void actionPerformed(ActionEvent e) {
				JOptionPane.showMessageDialog(null, "Cultura alterada com sucesso.");
			}
		});
		
		btn_AtribuirVariavel_pav.addActionListener(new ActionListener() {
			@Override
			public void actionPerformed(ActionEvent e) {
				JOptionPane.showMessageDialog(null, "Variavel atribuida com sucesso a cultura.");
			}
		});
		
		btn_InserirMedicao_pim.addActionListener(new ActionListener() {
			@Override
			public void actionPerformed(ActionEvent e) {
				JOptionPane.showMessageDialog(null, "Medi��o inserida com sucesso.");
			}
		});
	}
	
	private void logout() {
		JOptionPane.showMessageDialog(contentPane, "You have sucessfully logged out!");
		login.Login_GUI login = new login.Login_GUI();
		login.setVisible(true);
		dispose();
	}
}
