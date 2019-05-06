package pt.iscte.es.admin;

import java.awt.Choice;
import java.awt.Color;
import java.awt.EventQueue;
import java.awt.Font;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.awt.event.ItemEvent;
import java.awt.event.ItemListener;
import java.sql.SQLException;

import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JOptionPane;
import javax.swing.JPanel;
import javax.swing.JSeparator;
import javax.swing.JTextArea;
import javax.swing.JTextField;
import javax.swing.SwingConstants;
import javax.swing.border.EmptyBorder;

import pt.iscte.es.investigador.InvestigadorSQL;
import pt.iscte.es.login.Login_GUI;
import pt.iscte.es.objetos.Investigador;
import pt.iscte.es.objetos.Variavel;

public class Admin_GUI extends JFrame {

	/**
	 * 
	 */
	private static final long serialVersionUID = -3454571435777501202L;

	private JPanel contentPane;
	private JPanel centerPanel;

	private JPanel criarInvestigadorPanel;
	private JTextField textField_NomeInvestigador_pni;
	private JTextField textField_Email_pni;
	private JButton btn_InserirInvestigador_pni;
	private JTextArea textArea_CategoriaProfissional_pni;

	private JPanel verInvestigadoresPanel;
	private JTextField textField_NomeInvestigador_pvi;
	private JButton btn_AlterarInvestigador_pvi;
	private JButton btnEliminarInvestigador_pvi;

	private JPanel criarVariavelPanel;
	private JTextField textField_NomeVariavel_pcv;
	private JButton btn_InserirVariavel_pcv;

	private JPanel verVariaveisPanel;
	private JTextField textField_Variavel_pvv;
	private JButton btn_AlterarVariavel_pvv;
	private JButton btn_EliminarVariavel_pvv;
	private AdminSQL admin = new AdminSQL();

	private Choice comboBox_Email_pvi;
	private JTextArea textArea_CategoriaProfissional_pvi;
	private ItemHandler handler = new ItemHandler();
	private Choice comboBox_Variavel_pvv;
	private InvestigadorSQL cmd = new InvestigadorSQL();

	/**
	 * Launch the application.
	 */
	public static void main(String[] args) {
		EventQueue.invokeLater(new Runnable() {
			public void run() {
				try {
					Admin_GUI frame = new Admin_GUI();
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
	public Admin_GUI() {
		setTitle("SID 18/19");
		setResizable(false);
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		setBounds(100, 100, 555, 375);
		contentPane = new JPanel();
		contentPane.setBorder(new EmptyBorder(5, 5, 5, 5));
		contentPane.setLayout(null);
		setContentPane(contentPane);

		//Painel Norte
		JPanel north = new JPanel();
		north.setBackground(new Color(51, 204, 102));
		north.setBounds(0, 0, 550, 50);
		north.setLayout(null);
		contentPane.add(north);

		JLabel lblInvestigador = new JLabel("Administrador");
		lblInvestigador.setHorizontalAlignment(SwingConstants.LEFT);
		lblInvestigador.setBounds(195, 0, 160, 50);
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

		panel_CriarInvestigador();
		panel_VerInvestigador();
		panel_CriarVariavel();
		panel_VerVariavel();

		addButtonsActions();

		JSeparator separator_1 = new JSeparator();
		separator_1.setOrientation(SwingConstants.VERTICAL);
		separator_1.setForeground(Color.BLACK);
		separator_1.setBackground(Color.BLACK);
		separator_1.setBounds(170, 50, 5, 250);
		contentPane.add(separator_1);

		// Painel Esquerdo Botoes.
		JPanel Left = new JPanel();
		Left.setBackground(new Color(51, 204, 102));
		Left.setBounds(0, 50, 170, 250);
		Left.setLayout(null);
		contentPane.add(Left);

		JButton btnCriarInvestigador = new JButton("Novo Investigador");
		btnCriarInvestigador.setBounds(10, 10, 150, 50);
		btnCriarInvestigador.addActionListener(new ActionListener() {
			@Override
			public void actionPerformed(ActionEvent e) {
				changePanel(criarInvestigadorPanel);
			}
		});
		Left.add(btnCriarInvestigador);

		JButton btnVerInvestigadores = new JButton("Ver Investigadores");
		btnVerInvestigadores.setBounds(10, 70, 150, 50);
		btnVerInvestigadores.addActionListener(new ActionListener() {
			@Override
			public void actionPerformed(ActionEvent e) {
				changePanel(verInvestigadoresPanel);
			}
		});
		Left.add(btnVerInvestigadores);

		JButton btnCriarVariavel = new JButton("Nova Variavel");
		btnCriarVariavel.setBounds(10, 130, 150, 50);
		btnCriarVariavel.addActionListener(new ActionListener() {
			@Override
			public void actionPerformed(ActionEvent e) {
				changePanel(criarVariavelPanel);
			}
		});
		Left.add(btnCriarVariavel);

		JButton btnVerVariaveis = new JButton("Ver Variaveis");
		btnVerVariaveis.setBounds(10, 190, 150, 50);
		btnVerVariaveis.addActionListener(new ActionListener() {
			@Override
			public void actionPerformed(ActionEvent e) {
				changePanel(verVariaveisPanel);
			}
		});
		Left.add(btnVerVariaveis);

		JSeparator separator_2 = new JSeparator();
		separator_2.setForeground(Color.BLACK);
		separator_2.setBackground(Color.BLACK);
		separator_2.setBounds(0, 300, 680, 10);
		contentPane.add(separator_2);

		//Painel sul
		JPanel South = new JPanel();
		South.setBackground(new Color(51, 204, 102));
		South.setBounds(0, 300, 550, 40);
		South.setLayout(null);
		contentPane.add(South);

		JButton btnLogout = new JButton("Logout");
		btnLogout.setBounds(235, 10, 80, 25);
		btnLogout.addActionListener(new ActionListener() {
			@Override
			public void actionPerformed(ActionEvent e) {
				logout();
			}
		});
		South.add(btnLogout);
	}

	private void panel_CriarInvestigador() {
		criarInvestigadorPanel = new JPanel();
		criarInvestigadorPanel.setBackground(new Color(51, 204, 102));
		criarInvestigadorPanel.setBounds(0, 0, 380, 250);
		criarInvestigadorPanel.setLayout(null);

		JLabel lblEmail = new JLabel("Email:");
		lblEmail.setBounds(20, 20, 70, 25);
		criarInvestigadorPanel.add(lblEmail);

		textField_Email_pni = new JTextField();
		textField_Email_pni.setBounds(110, 20, 230, 25);
		textField_Email_pni.setColumns(10);
		criarInvestigadorPanel.add(textField_Email_pni);

		JLabel lblNome_pcc = new JLabel("Nome:");
		lblNome_pcc.setBounds(20, 60, 70, 25);
		criarInvestigadorPanel.add(lblNome_pcc);

		textField_NomeInvestigador_pni = new JTextField();
		textField_NomeInvestigador_pni.setBounds(110, 60, 230, 25);
		textField_NomeInvestigador_pni.setColumns(10);
		criarInvestigadorPanel.add(textField_NomeInvestigador_pni);

		JLabel lblDescrio_pni = new JLabel("Categoria Profissional:");
		lblDescrio_pni.setBounds(20, 100, 130, 25);
		criarInvestigadorPanel.add(lblDescrio_pni);

		textArea_CategoriaProfissional_pni = new JTextArea();
		textArea_CategoriaProfissional_pni.setBounds(160, 100, 180, 80);
		criarInvestigadorPanel.add(textArea_CategoriaProfissional_pni);

		btn_InserirInvestigador_pni = new JButton("Inserir");
		btn_InserirInvestigador_pni.setBounds(110, 195, 100, 25);
		criarInvestigadorPanel.add(btn_InserirInvestigador_pni);
	}

	private void panel_VerInvestigador() {
		verInvestigadoresPanel = new JPanel();
		verInvestigadoresPanel.setBackground(new Color(51, 204, 102));
		verInvestigadoresPanel.setBounds(0, 0, 380, 250);
		verInvestigadoresPanel.setLayout(null);

		JLabel lblEmail_pvi = new JLabel("Email:");
		lblEmail_pvi.setBounds(20, 20, 70, 25);
		verInvestigadoresPanel.add(lblEmail_pvi);

		comboBox_Email_pvi = new Choice();
		try {
			for(Investigador inv : admin.getInvestigadores()) {
				comboBox_Email_pvi.add(inv.getEmail());
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		comboBox_Email_pvi.addItemListener(handler);
		comboBox_Email_pvi.setBounds(110, 20, 230, 25);
		verInvestigadoresPanel.add(comboBox_Email_pvi);

		JLabel lblNome_pvi = new JLabel("Nome:");
		lblNome_pvi.setBounds(20, 60, 70, 25);
		verInvestigadoresPanel.add(lblNome_pvi);

		textField_NomeInvestigador_pvi = new JTextField();
		textField_NomeInvestigador_pvi.setBounds(110, 60, 230, 25);
		textField_NomeInvestigador_pvi.setColumns(10);
		verInvestigadoresPanel.add(textField_NomeInvestigador_pvi);

		JLabel lblCategoria_pvi = new JLabel("Categoria Profissional:");
		lblCategoria_pvi.setBounds(20, 100, 130, 25);
		verInvestigadoresPanel.add(lblCategoria_pvi);

		textArea_CategoriaProfissional_pvi = new JTextArea();
		textArea_CategoriaProfissional_pvi.setBounds(160, 100, 180, 80);
		verInvestigadoresPanel.add(textArea_CategoriaProfissional_pvi);

		btn_AlterarInvestigador_pvi = new JButton("Alterar");
		btn_AlterarInvestigador_pvi.setBounds(110, 195, 100, 25);
		verInvestigadoresPanel.add(btn_AlterarInvestigador_pvi);

		btnEliminarInvestigador_pvi = new JButton("Eliminar");
		btnEliminarInvestigador_pvi.setBounds(240, 195, 100, 25);
		verInvestigadoresPanel.add(btnEliminarInvestigador_pvi);
	}

	private void panel_CriarVariavel() {
		criarVariavelPanel = new JPanel();
		criarVariavelPanel.setBackground(new Color(51, 204, 102));
		criarVariavelPanel.setBounds(0, 0, 380, 250);
		criarVariavelPanel.setLayout(null);

		JLabel lblNome_pcv = new JLabel("Nome:");
		lblNome_pcv.setBounds(40, 40, 70, 25);
		criarVariavelPanel.add(lblNome_pcv);

		textField_NomeVariavel_pcv = new JTextField();
		textField_NomeVariavel_pcv.setBounds(110, 40, 180, 25);
		textField_NomeVariavel_pcv.setColumns(10);
		criarVariavelPanel.add(textField_NomeVariavel_pcv);

		btn_InserirVariavel_pcv = new JButton("Inserir");
		btn_InserirVariavel_pcv.setBounds(110, 90, 100, 25);
		criarVariavelPanel.add(btn_InserirVariavel_pcv);
	}

	private void panel_VerVariavel() {
		verVariaveisPanel = new JPanel();
		verVariaveisPanel.setBackground(new Color(51, 204, 102));
		verVariaveisPanel.setBounds(0, 0, 380, 250);
		verVariaveisPanel.setLayout(null);

		JLabel lblVariavel_pvv = new JLabel("Variavel");
		lblVariavel_pvv.setBounds(40, 40, 70, 25);
		verVariaveisPanel.add(lblVariavel_pvv);

		comboBox_Variavel_pvv = new Choice();
		comboBox_Variavel_pvv.setBackground(Color.WHITE);
		comboBox_Variavel_pvv.addItemListener(handler);

		try {
			for(Variavel variavel : cmd.getVariaveis()) {
				comboBox_Variavel_pvv.add(variavel.getNome());	
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		comboBox_Variavel_pvv.setBounds(110, 40, 180, 25);
		verVariaveisPanel.add(comboBox_Variavel_pvv);

		JLabel lblNome_pvv = new JLabel("Nome:");
		lblNome_pvv.setBounds(40, 80, 70, 25);
		verVariaveisPanel.add(lblNome_pvv);

		textField_Variavel_pvv = new JTextField();
		textField_Variavel_pvv.setBounds(110, 80, 180, 25);
		textField_Variavel_pvv.setColumns(10);
		verVariaveisPanel.add(textField_Variavel_pvv);

		btn_AlterarVariavel_pvv = new JButton("Alterar");
		btn_AlterarVariavel_pvv.setBounds(110, 140, 100, 25);
		verVariaveisPanel.add(btn_AlterarVariavel_pvv);

		btn_EliminarVariavel_pvv = new JButton("Eliminar");
		btn_EliminarVariavel_pvv.setBounds(222, 140, 100, 25);
		verVariaveisPanel.add(btn_EliminarVariavel_pvv);
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
		btn_InserirInvestigador_pni.addActionListener(new ActionListener() {
			@Override
			public void actionPerformed(ActionEvent e) {
				String mail = textField_Email_pni.getText();
				String nome = textField_NomeInvestigador_pni.getText();
				String categoriaProfissional = textArea_CategoriaProfissional_pni.getText();
				try {
					admin.inserirInvestigador(mail, nome, categoriaProfissional);
					JOptionPane.showMessageDialog(null, "Investigador criado com sucesso.");
				} catch (Exception e1) {
					e1.printStackTrace();
				}
			}
		});

		btn_AlterarInvestigador_pvi.addActionListener(new ActionListener() {
			@Override
			public void actionPerformed(ActionEvent e) {
				try {
					admin.updateInvestigador(comboBox_Email_pvi.getSelectedItem(), textField_NomeInvestigador_pvi.getText(), textArea_CategoriaProfissional_pvi.getText());
				} catch (SQLException e1) {
					// TODO Auto-generated catch block
					e1.printStackTrace();
				}
				JOptionPane.showMessageDialog(null, "Investigador alterado com sucesso.");
			}
		});

		btnEliminarInvestigador_pvi.addActionListener(new ActionListener() {
			@Override
			public void actionPerformed(ActionEvent e) {
				admin.deleteInvestigador(comboBox_Email_pvi.getSelectedItem());
				JOptionPane.showMessageDialog(null, "Investigador eliminado com sucesso.");
			}
		});

		btn_InserirVariavel_pcv.addActionListener(new ActionListener() {
			@Override
			public void actionPerformed(ActionEvent e) {
				try {
					admin.insertVariavel(textField_NomeVariavel_pcv.getText());
				} catch (SQLException e1) {
					// TODO Auto-generated catch block
					e1.printStackTrace();
				}
				JOptionPane.showMessageDialog(null, "Variavel criada com sucesso.");
			}
		});
		btn_AlterarVariavel_pvv.addActionListener(new ActionListener() {
			@Override
			public void actionPerformed(ActionEvent e) {
				admin.updateVariavel(comboBox_Variavel_pvv.getSelectedItem(), textField_Variavel_pvv.getText());
				JOptionPane.showMessageDialog(null, "Variavel alterada com sucesso.");
			}
		});
		btn_EliminarVariavel_pvv.addActionListener(new ActionListener() {
			@Override
			public void actionPerformed(ActionEvent e) {
				admin.deleteVariavel(comboBox_Variavel_pvv.getSelectedItem());
				JOptionPane.showMessageDialog(null, "Variavel eliminada com sucesso.");
			}
		});
	}

	private void logout() {
		JOptionPane.showMessageDialog(null, "You have sucessfully logged out!");
		Login_GUI login = new Login_GUI();
		login.setVisible(true);
		dispose();
	}

	private class ItemHandler implements ItemListener {
		@Override
		public void itemStateChanged(ItemEvent evento) {
			try {
				if(evento.getSource() == comboBox_Email_pvi) {
					for(Investigador inv : admin.getInvestigadores()) {
						if(comboBox_Email_pvi.getSelectedItem().equals(inv.getEmail())) {
							textField_NomeInvestigador_pvi.setText(inv.getNome());
							textArea_CategoriaProfissional_pvi.setText(inv.getCategoriaProfissional());	
						}
					}
				}
				if(evento.getSource() == comboBox_Variavel_pvv) {
					for(Variavel variavel : cmd.getVariaveis()) {
						if(comboBox_Variavel_pvv.getSelectedItem().equals(variavel.getNome())) {
							textField_Variavel_pvv.setText(variavel.getNome());
						}
					}
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
		}

	}

}
