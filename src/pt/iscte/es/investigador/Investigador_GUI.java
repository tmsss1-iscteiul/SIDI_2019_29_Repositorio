package pt.iscte.es.investigador;

import javax.swing.JFrame;
import javax.swing.JPanel;
import javax.swing.JScrollPane;
import javax.swing.border.EmptyBorder;
import javax.swing.table.DefaultTableModel;
import javax.swing.DefaultListModel;
import javax.swing.JButton;
import javax.swing.JLabel;

import java.awt.Font;
import java.awt.ScrollPane;
import java.awt.Choice;
import java.awt.Color;

import javax.swing.SwingConstants;
import javax.swing.JSeparator;
import javax.swing.JTextField;

import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.awt.event.ItemEvent;
import java.awt.event.ItemListener;

import javax.swing.JTextArea;
import javax.swing.JList;
import javax.swing.JComboBox;
import javax.swing.JTable;
import javax.swing.ListSelectionModel;

public class Investigador_GUI extends JFrame {

	/**
	 * 
	 */
	private static final long serialVersionUID = -2695713581214000006L;

	private JPanel contentPane;

	private JPanel centerPanel;
	private JButton btnCriarCultura;
	private JButton btnVerCulturas;
	private JButton btnAtribuirVariavel;
	private JButton btnInserirMedida;
	private JButton btnVerMedicoes;

	private JPanel criarCulturaPanel;
	private JTextField textField_NomeCultura_pcc;
	private JTextArea textArea_DescricaoCultura_pcc;
	private JButton btn_InserirCultura_pcc;

	private JPanel verCulturasPanel;
	private JComboBox<String> comboBox_Cultura_pvc;
	private JTextField textField_NomeCultura_pvc;
	private JButton btn_AlterarCultura_pvc;

	private JPanel atribuirVariavelPanel;
	private JComboBox<String> comboBox_Cultura_pav;
	private JComboBox<String> comboBox_Variavel_pav;
	private JTextField textField_LimiteSuperior_pav;
	private JTextField textField_LimiteInferior_pav;
	private JButton btn_AtribuirVariavel_pav;

	private JPanel inserirMedicoesPanel;
	private JComboBox<String> comboBox_Cultura_pim;
	private JComboBox<String> comboBox_Variavel_pim;
	private JTextField textField_ValorMedicao_pim;
	private JButton btn_InserirMedicao_pim;

	private JPanel verMedicoesPanel;
	private JTextArea textArea_DescricaoCultura_pvc;
	private JComboBox<String> comboBox_Cultura_pvm;
	private JComboBox<String> comboBox_Variavel_pvm;
	private DefaultTableModel modelTable_pvm;

	private JButton btnLogout;
	private JTable tableMedicoes_pvm;

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
		panel_VerMedicoesMedicoes();

		centerPanel.add(criarCulturaPanel);
		centerPanel.add(verCulturasPanel);
		centerPanel.add(atribuirVariavelPanel);
		centerPanel.add(inserirMedicoesPanel);
		centerPanel.add(verMedicoesPanel);
		verCulturasPanel.setVisible(false);
		atribuirVariavelPanel.setVisible(false);
		inserirMedicoesPanel.setVisible(false);
		verMedicoesPanel.setVisible(false);
		
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

		btnCriarCultura = new JButton("Criar Cultura");
		btnCriarCultura.setBounds(10, 2, 150, 48);
		Left.add(btnCriarCultura);

		btnVerCulturas = new JButton("Ver Culturas");
		btnVerCulturas.setBounds(10, 50, 150, 50);
		Left.add(btnVerCulturas);

		btnAtribuirVariavel = new JButton("Atribuir Variavel");
		btnAtribuirVariavel.setBounds(10, 100, 150, 50);
		Left.add(btnAtribuirVariavel);

		btnInserirMedida = new JButton("Inserir Medi\u00E7\u00F5es");
		btnInserirMedida.setBounds(10, 150, 150, 50);
		Left.add(btnInserirMedida);

		btnVerMedicoes = new JButton("Ver Medi\u00E7\u00F5es");
		btnVerMedicoes.setBounds(10, 200, 150, 50);
		Left.add(btnVerMedicoes);

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

		btnLogout = new JButton("Logout");
		btnLogout.setBounds(235, 5, 80, 30);
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

		textArea_DescricaoCultura_pcc = new JTextArea();
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

		comboBox_Cultura_pvc = new JComboBox<String>();
		comboBox_Cultura_pvc.setBackground(Color.WHITE);
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

		textArea_DescricaoCultura_pvc = new JTextArea();
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

		comboBox_Cultura_pav = new JComboBox<String>();
		comboBox_Cultura_pav.setBackground(Color.WHITE);
		comboBox_Cultura_pav.setBounds(110, 40, 180, 25);
		atribuirVariavelPanel.add(comboBox_Cultura_pav);

		JLabel lblVariavel_pav = new JLabel("Variavel:");
		lblVariavel_pav.setBounds(40, 80, 70, 25);
		atribuirVariavelPanel.add(lblVariavel_pav);

		comboBox_Variavel_pav = new JComboBox<String>();
		comboBox_Variavel_pav.setBackground(Color.WHITE);
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

		comboBox_Cultura_pim = new JComboBox<String>();
		comboBox_Cultura_pim.setBackground(Color.WHITE);
		comboBox_Cultura_pim.setBounds(110, 40, 180, 25);
		inserirMedicoesPanel.add(comboBox_Cultura_pim);

		JLabel lblVariavel_pim = new JLabel("Variavel:");
		lblVariavel_pim.setBounds(40, 80, 70, 25);
		inserirMedicoesPanel.add(lblVariavel_pim);

		comboBox_Variavel_pim = new JComboBox<String>();
		comboBox_Variavel_pim.setBackground(Color.WHITE);
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

	private void panel_VerMedicoesMedicoes() {
		verMedicoesPanel = new JPanel();
		verMedicoesPanel.setBackground(new Color(51, 204, 102));
		verMedicoesPanel.setBounds(0, 0, 380, 250);
		verMedicoesPanel.setLayout(null);

		JLabel lblCultura_pvm = new JLabel("Cultura:");
		lblCultura_pvm.setBounds(10, 10, 55, 25);
		verMedicoesPanel.add(lblCultura_pvm);

		comboBox_Cultura_pvm = new JComboBox<String>();
		comboBox_Cultura_pvm.setToolTipText("Selecione uma Cultura");
		comboBox_Cultura_pvm.setBounds(65, 10, 200, 25);
		verMedicoesPanel.add(comboBox_Cultura_pvm);

		JLabel lblVariavel_pvm = new JLabel("Variavel:");
		lblVariavel_pvm.setBounds(10, 40, 55, 25);
		verMedicoesPanel.add(lblVariavel_pvm);

		comboBox_Variavel_pvm = new JComboBox<String>();
		comboBox_Variavel_pvm.setToolTipText("Selecione uma Variavel");
		comboBox_Variavel_pvm.setBounds(65, 40, 200, 25);
		verMedicoesPanel.add(comboBox_Variavel_pvm);

		String[] colunas = { "Número", "Data Hora", "Valor" };
		modelTable_pvm = new DefaultTableModel(colunas, 0);

		tableMedicoes_pvm = new JTable(modelTable_pvm);
		tableMedicoes_pvm.getColumnModel().getColumn(0).setMaxWidth(80);
		tableMedicoes_pvm.setColumnSelectionAllowed(false);
		tableMedicoes_pvm.setSelectionMode(ListSelectionModel.SINGLE_SELECTION);
		tableMedicoes_pvm.setRowHeight(20);

		JScrollPane scrollTable = new JScrollPane(tableMedicoes_pvm);
		scrollTable.setBounds(10, 70, 355, 140);
		verMedicoesPanel.add(scrollTable);

		/*
		 * Add Table modelTable.addRow(new Object[]{"998",
		 * "2019-03-04 20:23:32", "650.00"});
		 */

		JButton btnEditar_pvm = new JButton("Editar");
		btnEditar_pvm.setBounds(80, 215, 100, 25);
		verMedicoesPanel.add(btnEditar_pvm);

		JButton btnApagar_pvm = new JButton("Apagar");
		btnApagar_pvm.setBounds(200, 215, 100, 25);
		verMedicoesPanel.add(btnApagar_pvm);
	}

	public void changePanel(String panel) {
		criarCulturaPanel.setVisible(false);
		verCulturasPanel.setVisible(false);
		atribuirVariavelPanel.setVisible(false);
		inserirMedicoesPanel.setVisible(false);
		verMedicoesPanel.setVisible(false);
		switch (panel) {
		case "CriarCultura":
			criarCulturaPanel.setVisible(true);
			break;
		case "VerCultura":
			verCulturasPanel.setVisible(true);
			break;
		case "AtribuirVariavel":
			atribuirVariavelPanel.setVisible(true);
			break;
		case "InserirMedicao":
			inserirMedicoesPanel.setVisible(true);
			break;
		case "VerMedicoes":
			verMedicoesPanel.setVisible(true);
			break;
		}
	}

	public JButton getBtnCriarCultura() {
		return btnCriarCultura;
	}

	public JButton getBtnVerCulturas() {
		return btnVerCulturas;
	}

	public JButton getBtnAtribuirVariavel() {
		return btnAtribuirVariavel;
	}

	public JButton getBtnInserirMedida() {
		return btnInserirMedida;
	}

	public JButton getBtnVerMedicoes() {
		return btnVerMedicoes;
	}

	public JTextField getTextField_NomeCultura_pcc() {
		return textField_NomeCultura_pcc;
	}

	public JTextArea getTextArea_DescricaoCultura_pcc() {
		return textArea_DescricaoCultura_pcc;
	}

	public JButton getBtn_InserirCultura_pcc() {
		return btn_InserirCultura_pcc;
	}

	public JTextField getTextField_NomeCultura_pvc() {
		return textField_NomeCultura_pvc;
	}

	public JButton getBtn_AlterarCultura_pvc() {
		return btn_AlterarCultura_pvc;
	}

	public JTextField getTextField_LimiteInferior_pav() {
		return textField_LimiteInferior_pav;
	}

	public JTextField getTextField_LimiteSuperior_pav() {
		return textField_LimiteSuperior_pav;
	}

	public JButton getBtn_AtribuirVariavel_pav() {
		return btn_AtribuirVariavel_pav;
	}

	public JTextField getTextField_ValorMedicao_pim() {
		return textField_ValorMedicao_pim;
	}

	public JButton getBtn_InserirMedicao_pim() {
		return btn_InserirMedicao_pim;
	}

	public JComboBox<String> getComboBox_Cultura_pvc() {
		return comboBox_Cultura_pvc;
	}

	public JTextArea getTextArea_DescricaoCultura_pvc() {
		return textArea_DescricaoCultura_pvc;
	}

	public JComboBox<String> getComboBox_Cultura_pav() {
		return comboBox_Cultura_pav;
	}

	public JComboBox<String> getComboBox_Variavel_pav() {
		return comboBox_Variavel_pav;
	}

	public JComboBox<String> getComboBox_Cultura_pim() {
		return comboBox_Cultura_pim;
	}

	public JComboBox<String> getComboBox_Variavel_pim() {
		return comboBox_Variavel_pim;
	}

	public JComboBox<String> getComboBox_Cultura_pvm() {
		return comboBox_Cultura_pvm;
	}

	public JComboBox<String> getComboBox_Variavel_pvm() {
		return comboBox_Variavel_pvm;
	}

	public DefaultTableModel getModelTable_pvm() {
		return modelTable_pvm;
	}

	public JButton getBtnLogout() {
		return btnLogout;
	}

	public void open() {
		setVisible(true);
	}
}