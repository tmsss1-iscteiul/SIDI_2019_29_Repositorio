package pt.iscte.es.admin;

import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.sql.Connection;
import java.util.ArrayList;

import javax.swing.JOptionPane;

import pt.iscte.es.login.Login;
import pt.iscte.es.objetos.Investigador;
import pt.iscte.es.objetos.Variavel;

public class AdminAPP {

	private Admin_GUI gui;
	private AdminSQL cmd;

	private ArrayList<Investigador> listaInvestigadores;
	private ArrayList<Variavel> listaVariaveis;

	/*
	 * Para Testar Sem Fazer Login public static void main(String[] args) {
	 * Login l = new Login(); Connection c = l.getConnection("root", "");
	 * AdminAPP a = new AdminAPP(c, "root"); a.start(); }
	 */
	public AdminAPP(Connection conn, String username) {
		gui = new Admin_GUI();
		cmd = new AdminSQL(conn, username);
	}

	public void start() {
		try {
			listaInvestigadores = cmd.getInvestigador();
			listaVariaveis = cmd.getVariaveis();
		} catch (Exception e) {
			e.printStackTrace();
		}
		addButtonsActionListener();
		gui.open();
	}

	private void addButtonsActionListener() {
		// Painel Criar Invetigador
		gui.getBtnCriarInvestigador().addActionListener(new ActionListener() {

			@Override
			public void actionPerformed(ActionEvent e) {
				gui.changePanel("CriarInvestigador");
			}
		});
		gui.getBtn_InserirInvestigador_pni().addActionListener(new ActionListener() {
			@Override
			public void actionPerformed(ActionEvent e) {

				// Falta evitar erros de campos sem ser preechidos.

				String emailInvestigador = gui.getTextField_Email_pni().getText();
				String nomeInvestigador = gui.getTextField_NomeInvestigador_pni().getText();
				String categoriaProfissional = gui.getTextArea_CategoriaProfissional_pni().getText();
				try {
					cmd.inserirInvestigador(emailInvestigador, nomeInvestigador, categoriaProfissional);
					updateInvestigadores();
					gui.getTextField_Email_pni().setText("");
					gui.getTextField_NomeInvestigador_pni().setText("");
					gui.getTextArea_CategoriaProfissional_pni().setText("");
					JOptionPane.showMessageDialog(null, "Investigador criado com sucesso.");
				} catch (Exception e1) {
					e1.printStackTrace();
				}
			}
		});

		// Painel Ver Invetigador
		gui.getBtnVerInvestigadores().addActionListener(new ActionListener() {

			@Override
			public void actionPerformed(ActionEvent e) {
				gui.getComboBox_Email_pvi().removeAllItems();
				for (Investigador investigador : listaInvestigadores) {
					gui.getComboBox_Email_pvi().addItem(investigador.getEmail());
				}
				gui.changePanel("VerInvestigador");
			}
		});
		gui.getComboBox_Email_pvi().addActionListener(new ActionListener() {

			@Override
			public void actionPerformed(ActionEvent e) {
				if (gui.getComboBox_Email_pvi().getSelectedItem() != null) {
					String nome = listaInvestigadores.get(gui.getComboBox_Email_pvi().getSelectedIndex()).getNome();
					String categoria = listaInvestigadores.get(gui.getComboBox_Email_pvi().getSelectedIndex())
							.getCategoriaProfissional();
					gui.getTextField_NomeInvestigador_pvi().setText(nome);
					gui.getTextArea_CategoriaProfissional_pvi().setText(categoria);
				}
			}
		});
		gui.getBtn_AlterarInvestigador_pvi().addActionListener(new ActionListener() {
			@Override
			public void actionPerformed(ActionEvent e) {
				Investigador investigador = listaInvestigadores.get(gui.getComboBox_Email_pvi().getSelectedIndex());
				String nome = gui.getTextField_NomeInvestigador_pvi().getText();
				String categoria = gui.getTextArea_CategoriaProfissional_pvi().getText();
				cmd.updateInvestigador(investigador.getEmail(), nome, categoria);
				updateInvestigadores();
				JOptionPane.showMessageDialog(null, "Investigador alterado com sucesso.");
			}
		});

		gui.getBtn_EliminarInvestigador_pvi().addActionListener(new ActionListener() {
			@Override
			public void actionPerformed(ActionEvent e) {
				String email = listaInvestigadores.get(gui.getComboBox_Email_pvi().getSelectedIndex()).getEmail();
				cmd.deleteInvestigador(email);
				updateInvestigadores();
				gui.changePanel("CriarInvestigador");
				JOptionPane.showMessageDialog(null, "Investigador eliminado com sucesso.");
			}
		});

		// Painel Criar Variavel
		gui.getBtnCriarVariavel().addActionListener(new ActionListener() {

			@Override
			public void actionPerformed(ActionEvent e) {
				gui.changePanel("CriarVariavel");
			}
		});
		gui.getBtn_InserirVariavel_pcv().addActionListener(new ActionListener() {

			@Override
			public void actionPerformed(ActionEvent e) {
				String nomeVariavel = gui.getTextField_NomeVariavel_pcv().getText();
				try {
					cmd.inserirVariavel(nomeVariavel);
					gui.getTextField_NomeVariavel_pcv().setText("");
					updateVariaveis();
					JOptionPane.showMessageDialog(null, "Variavel criada com sucesso.");
				} catch (Exception e1) {
					e1.printStackTrace();
				}
			}
		});

		// Painel Ver Variavel
		gui.getBtnVerVariaveis().addActionListener(new ActionListener() {

			@Override
			public void actionPerformed(ActionEvent e) {
				gui.getComboBox_Variavel_pvv().removeAllItems();
				for (Variavel variavel : listaVariaveis) {
					gui.getComboBox_Variavel_pvv().addItem(variavel.getNome());
				}
				gui.changePanel("VerVariaveis");
			}
		});
		gui.getComboBox_Variavel_pvv().addActionListener(new ActionListener() {

			@Override
			public void actionPerformed(ActionEvent e) {
				if (gui.getComboBox_Variavel_pvv().getSelectedItem() != null) {
					String variavel = gui.getComboBox_Variavel_pvv().getSelectedItem().toString();
					gui.getTextField_Variavel_pvv().setText(variavel);
				}
			}
		});
		gui.getBtn_AlterarVariavel_pvv().addActionListener(new ActionListener() {
			@Override
			public void actionPerformed(ActionEvent e) {
				int id = listaVariaveis.get(gui.getComboBox_Variavel_pvv().getSelectedIndex()).getID();
				String variavelNova = gui.getTextField_Variavel_pvv().getText();
				cmd.updateVariavel(id, variavelNova);
				updateVariaveis();
				gui.changePanel("CriarVariavel");
				JOptionPane.showMessageDialog(null, "Variavel alterada com sucesso.");
			}
		});
		gui.getBtn_EliminarVariavel_pvv().addActionListener(new ActionListener() {
			@Override
			public void actionPerformed(ActionEvent e) {
				int idVariavel = listaVariaveis.get(gui.getComboBox_Variavel_pvv().getSelectedIndex()).getID();
				cmd.deleteVariavel(idVariavel);
				updateVariaveis();
				gui.changePanel("CriarVariavel");
				JOptionPane.showMessageDialog(null, "Variavel eliminada com sucesso.");
			}
		});

		gui.getBtnLogout().addActionListener(new ActionListener() {
			@Override
			public void actionPerformed(ActionEvent e) {
				logout();
			}
		});
	}

	private void updateVariaveis(){
		try {
			listaVariaveis.clear();
			listaVariaveis = cmd.getVariaveis();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	private void updateInvestigadores() {
		listaInvestigadores.clear();
		listaInvestigadores = cmd.getInvestigador();
	}

	private void logout() {
		JOptionPane.showMessageDialog(null, "You have sucessfully logged out!");
		Login login = new Login();
		login.start();
		gui.dispose();
	}

}
