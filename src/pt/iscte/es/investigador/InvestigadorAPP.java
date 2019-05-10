package pt.iscte.es.investigador;

import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.swing.JOptionPane;

import pt.iscte.es.login.Login;
import pt.iscte.es.objetos.Cultura;
import pt.iscte.es.objetos.Medicao;
import pt.iscte.es.objetos.Variavel;

public class InvestigadorAPP {

	private Investigador_GUI gui;
	private InvestigadorSQL cmd;

	private ArrayList<Cultura> listaCulturas;
	private ArrayList<Variavel> listaVariaveis;
	private ArrayList<Medicao> medicoes;

	/* Para Testar Sem Fazer Login
	public static void main(String[] args) {
		Login l = new Login();
		Connection c = l.getConnection("root", "");
		InvestigadorAPP i = new InvestigadorAPP(c, "root");
		i.start();
	}
	 */
	public InvestigadorAPP(Connection conn, String username) {
		gui = new Investigador_GUI();
		cmd = new InvestigadorSQL(conn, username);
	}

	public void start() {
		try {
			listaCulturas = cmd.getCultura();
			listaVariaveis = cmd.getVariaveis();
		} catch (Exception e) {
			e.printStackTrace();
		}
		addButtonsActionListener();
		gui.open();
	}

	private void addButtonsActionListener() {
		// Painel Inserir Cultura
		gui.getBtnCriarCultura().addActionListener(new ActionListener() {
			@Override
			public void actionPerformed(ActionEvent e) {
				gui.changePanel("CriarCultura");
			}
		});

		gui.getBtn_InserirCultura_pcc().addActionListener(new ActionListener() {
			@Override
			public void actionPerformed(ActionEvent e) {
				String nomeCultura = gui.getTextField_NomeCultura_pcc().getText();
				String descricaoCultura = gui.getTextArea_DescricaoCultura_pcc().getText();
				try {
					cmd.inserirCultura(nomeCultura, descricaoCultura);
					updateListaCulturas();
					gui.getTextField_NomeCultura_pcc().setText("");
					gui.getTextArea_DescricaoCultura_pcc().setText("");
					JOptionPane.showMessageDialog(null, "Cultura inserida com sucesso.");
				} catch (Exception e1) {
					e1.printStackTrace();
				}
			}
		});

		// Painel Ver Cultura
		gui.getBtnVerCulturas().addActionListener(new ActionListener() {
			@Override
			public void actionPerformed(ActionEvent e) {
				try {
					gui.getComboBox_Cultura_pvc().removeAllItems();
					for (Cultura cultura : listaCulturas) {
						gui.getComboBox_Cultura_pvc().addItem(cultura.getNome());
					}
				} catch (Exception e1) {
					e1.printStackTrace();
				}
				gui.changePanel("VerCultura");
			}
		});
		gui.getComboBox_Cultura_pvc().addActionListener(new ActionListener() {

			@Override
			public void actionPerformed(ActionEvent e) {
				if (gui.getComboBox_Cultura_pvc().getSelectedItem() != null) {
					String cultura = gui.getComboBox_Cultura_pvc().getSelectedItem().toString();
					String descricao = listaCulturas.get(gui.getComboBox_Cultura_pvc().getSelectedIndex())
							.getDescricao();
					gui.getTextField_NomeCultura_pvc().setText(cultura);
					gui.getTextArea_DescricaoCultura_pvc().setText(descricao);
				}
			}
		});

		gui.getBtn_AlterarCultura_pvc().addActionListener(new ActionListener() {
			@Override
			public void actionPerformed(ActionEvent e) {
				try {
					String nomeAntigo = gui.getComboBox_Cultura_pvc().getSelectedItem().toString();
					String nomeNovo = gui.getTextField_NomeCultura_pvc().getText();
					String descricao = gui.getTextArea_DescricaoCultura_pvc().getText();
					cmd.updateCultura(nomeAntigo, nomeNovo, descricao);
					updateListaCulturas();
					gui.changePanel("CriarCultura");
					JOptionPane.showMessageDialog(null, "Cultura alterada com sucesso.");
				} catch (Exception e1) {
					e1.printStackTrace();
				}
			}
		});

		// Painel Atribuir Variavel
		gui.getBtnAtribuirVariavel().addActionListener(new ActionListener() {
			@Override
			public void actionPerformed(ActionEvent e) {
				try {
					gui.getComboBox_Cultura_pav().removeAllItems();
					for (Cultura cultura : listaCulturas) {
						gui.getComboBox_Cultura_pav().addItem(cultura.getNome());
					}
					gui.getComboBox_Variavel_pav().removeAllItems();
					for (Variavel variavel : listaVariaveis) {
						gui.getComboBox_Variavel_pav().addItem(variavel.getNome());
					}
				} catch (Exception e1) {
					e1.printStackTrace();
				}
				gui.changePanel("AtribuirVariavel");
			}
		});
		gui.getBtn_AtribuirVariavel_pav().addActionListener(new ActionListener() {
			@Override
			public void actionPerformed(ActionEvent e) {
				try {
					if (gui.getComboBox_Cultura_pav().getSelectedItem() != null
							&& gui.getComboBox_Variavel_pav().getSelectedItem() != null) {
						int idCultura = cmd.buscaIDCultura(gui.getComboBox_Cultura_pav().getSelectedItem().toString());
						int idVariavel = cmd
								.buscaIDVariavel(gui.getComboBox_Variavel_pav().getSelectedItem().toString());
						double valorLimiteInf = Double.parseDouble(gui.getTextField_LimiteInferior_pav().getText());
						double valorLimiteSup = Double.parseDouble(gui.getTextField_LimiteSuperior_pav().getText());
						if (cmd.insertVariavel(idVariavel, idCultura, valorLimiteInf, valorLimiteSup) == 1) {
							JOptionPane.showMessageDialog(null, "Variavel atribuída com sucesso a cultura.");
							gui.getTextField_LimiteInferior_pav().setText("");
							gui.getTextField_LimiteSuperior_pav().setText("");
						}
					} else {
						JOptionPane.showMessageDialog(null, "Variavel não atribuída.");
					}
				} catch (Exception e1) {
					System.out.println("here");
					e1.printStackTrace();
				}
			}
		});

		// Painel Inserir Medição
		gui.getBtnInserirMedida().addActionListener(new ActionListener() {
			@Override
			public void actionPerformed(ActionEvent e) {
				gui.getComboBox_Cultura_pim().removeAllItems();
				for (Cultura cultura : listaCulturas) {
					gui.getComboBox_Cultura_pim().addItem(cultura.getNome());
				}
				gui.changePanel("InserirMedicao");
			}
		});
		gui.getComboBox_Cultura_pim().addActionListener(new ActionListener() {

			@Override
			public void actionPerformed(ActionEvent e) {
				try {
					if (gui.getComboBox_Cultura_pim().getSelectedItem() != null) {
						int index = gui.getComboBox_Cultura_pim().getSelectedIndex();
						ArrayList<Variavel> listaAuxVariavel = cmd
								.getVariaveisAssociadasCultura(listaCulturas.get(index).getID());
						gui.getComboBox_Variavel_pim().removeAllItems();
						for (Variavel variavel : listaAuxVariavel) {
							gui.getComboBox_Variavel_pim().addItem(variavel.getNome());
						}
					}
				} catch (Exception e1) {
					e1.printStackTrace();
				}
			}
		});
		gui.getBtn_InserirMedicao_pim().addActionListener(new ActionListener() {
			@Override
			public void actionPerformed(ActionEvent e) {
				double valorMedicao = Double.parseDouble(gui.getTextField_ValorMedicao_pim().getText());
				try {
					if (gui.getComboBox_Cultura_pim().getSelectedItem() != null) {
						int idCultura = cmd.buscaIDCultura(gui.getComboBox_Cultura_pim().getSelectedItem().toString());
						int idVariavel = cmd
								.buscaIDVariavel(gui.getComboBox_Variavel_pim().getSelectedItem().toString());
						cmd.insertMedicao(idCultura, idVariavel, valorMedicao);
						gui.getTextField_ValorMedicao_pim().setText("");
						JOptionPane.showMessageDialog(null, "Medição inserida com sucesso.");
					}
				} catch (SQLException e1) {
					e1.printStackTrace();
				} catch (Exception e1) {
					e1.printStackTrace();
				}
			}
		});

		// Painel Ver Medicoes
		gui.getBtnVerMedicoes().addActionListener(new ActionListener() {
			@Override
			public void actionPerformed(ActionEvent e) {
				gui.getComboBox_Cultura_pvm().removeAllItems();
				for (Cultura cultura : listaCulturas) {
					gui.getComboBox_Cultura_pvm().addItem(cultura.getNome());
				}
				gui.changePanel("VerMedicoes");
			}
		});
		gui.getComboBox_Cultura_pvm().addActionListener(new ActionListener() {

			@Override
			public void actionPerformed(ActionEvent e) {
				try {
					if (gui.getComboBox_Cultura_pvm().getSelectedItem() != null) {
						int index = gui.getComboBox_Cultura_pvm().getSelectedIndex();
						ArrayList<Variavel> listaAuxVariavel2 = cmd
								.getVariaveisAssociadasCultura(listaCulturas.get(index).getID());
						gui.getComboBox_Variavel_pvm().removeAllItems();
						for (Variavel variavel : listaAuxVariavel2) {
							gui.getComboBox_Variavel_pvm().addItem(variavel.getNome());
						}
						if (!listaAuxVariavel2.isEmpty())
							gui.getComboBox_Variavel_pvm().addItem("Todas Variaveis");
					}
				} catch (Exception e1) {
					e1.printStackTrace();
				}
			}
		});
		gui.getComboBox_Variavel_pvm().addActionListener(new ActionListener() {
			
			@Override
			public void actionPerformed(ActionEvent e) {
				if(gui.getComboBox_Variavel_pvm().getSelectedItem()!=null){
					
				}
			}
		});
		gui.getBtnLogout().addActionListener(new ActionListener() {
			@Override
			public void actionPerformed(ActionEvent e) {
				logout();
			}
		});
	}

	private void updateListaCulturas() throws Exception {
		listaCulturas.clear();
		listaCulturas = cmd.getCultura();
	}
	
	private void updateMedicoes() throws Exception {
		medicoes.clear();
		medicoes = cmd.getMedicoes();
	}

	private void logout() {
		JOptionPane.showMessageDialog(null, "You have sucessfully logged out!");
		Login login = new Login();
		login.start();
		gui.dispose();
	}

}
