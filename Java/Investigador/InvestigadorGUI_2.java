package ligacao;

import java.awt.EventQueue;
import java.awt.GridLayout;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.awt.event.ItemEvent;
import java.awt.event.ItemListener;
import java.util.ArrayList;

import javax.swing.JFrame;
import javax.swing.JPanel;
import java.awt.BorderLayout;
import javax.swing.JButton;
import javax.swing.JLabel;
import javax.swing.SwingConstants;
import javax.swing.JTextField;
import java.awt.TextArea;
import java.awt.Choice;
import java.awt.TextField;
import java.awt.Button;

public class InvestigadorGUI {

	private JFrame frame;
	private JTextField pcc_NomeCultura;
	private JTextField pcc_DescricaoCultura;
	private TextArea pvc_DescricaoCultura;
	private Choice pvc_ListaCulturas;
	Choice pv_ListaCulturas;
	private ComandosInvestigador comando = new ComandosInvestigador();
	private ItemHandler handler = new ItemHandler();
	private Choice pv_ListaVariaveis;


	/**
	 * Launch the application.
	 */
	public static void main(String[] args) {
		EventQueue.invokeLater(new Runnable() {
			public void run() {
				try {
					InvestigadorGUI window = new InvestigadorGUI();
					window.frame.setVisible(true);

				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		});
	}

	private void adicionaNomeCulturaChoice(Choice boxCultura) {
		try {
			ArrayList<Cultura> culturas = comando.getCultura();
			for(Cultura cultura : culturas ) {
				boxCultura.add(cultura.getNome());
			}

		} catch (Exception e2) {
			e2.printStackTrace();
		}
	}

	public String getNomeCultura() {
		return pcc_NomeCultura.getText();
	}

	public String getDescricaoCultura() {
		return pcc_DescricaoCultura.getText();
	}

	/**
	 * Create the application.
	 */
	public InvestigadorGUI() {
		initialize();
	}

	/**
	 * Initialize the contents of the frame.
	 */
	private void initialize() {
		frame = new JFrame();
		frame.setBounds(100, 100, 980, 530);
		frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);

		// Painel de Botoes Esquerdo
		JPanel buttonsPanel = new JPanel();
		buttonsPanel.setLayout(new GridLayout(4, 1));
		frame.getContentPane().add(buttonsPanel, BorderLayout.WEST);

		JButton btnCriarCultura = new JButton("Criar Cultura");
		buttonsPanel.add(btnCriarCultura);
		JButton btnAtribuirVariavel = new JButton("Atribuir Variavel");
		buttonsPanel.add(btnAtribuirVariavel);
		JButton btnVerCulturas = new JButton("Ver Culturas");
		buttonsPanel.add(btnVerCulturas);
		JButton btnInserirMedida = new JButton("Inserir Medicao");
		buttonsPanel.add(btnInserirMedida);


		// Painel de Norte
		JPanel loginPanel = new JPanel();
		frame.getContentPane().add(loginPanel, BorderLayout.NORTH);

		JButton btnLogout = new JButton("Logout");
		btnLogout.setHorizontalAlignment(SwingConstants.RIGHT);
		loginPanel.add(btnLogout);

		// Painel Centro
		JPanel centerPanel = new JPanel();
		frame.getContentPane().add(centerPanel, BorderLayout.CENTER);





		// Painel Criar Cultura (pcc)
		JPanel criarCulturaPanel = new JPanel();

		JLabel pcc_lbl1 = new JLabel("Nome Cultura:");
		criarCulturaPanel.add(pcc_lbl1);

		pcc_NomeCultura = new JTextField();
		pcc_NomeCultura.setColumns(10);
		criarCulturaPanel.add(pcc_NomeCultura);


		JLabel pcc_lbl2 = new JLabel("Descrição:");
		criarCulturaPanel.add(pcc_lbl2);

		pcc_DescricaoCultura = new JTextField();
		pcc_DescricaoCultura.setColumns(10);
		criarCulturaPanel.add(pcc_DescricaoCultura);

		JButton pcc_ButtonInserirCultura = new JButton("Inserir");
		criarCulturaPanel.add(pcc_ButtonInserirCultura);



		// Painel Ver Culturas (pvc)
		JPanel verCulturasPanel = new JPanel();

		pvc_ListaCulturas = new Choice();
		verCulturasPanel.add(pvc_ListaCulturas);

		pvc_ListaCulturas.addItemListener(handler);
		adicionaNomeCulturaChoice(pvc_ListaCulturas);




		pvc_DescricaoCultura = new TextArea();
		pvc_DescricaoCultura.setEditable(false);
		verCulturasPanel.add(pvc_DescricaoCultura);

		Choice pvc_ListaMedicoes = new Choice();
		verCulturasPanel.add(pvc_ListaMedicoes);

		TextArea pvc_DescricaoMedicao = new TextArea();
		verCulturasPanel.add(pvc_DescricaoMedicao);



		// Painel Atribuir Variavel (pv)
		JPanel atribuirVariavelPanel = new JPanel();

		pv_ListaCulturas = new Choice();
		atribuirVariavelPanel.add(pv_ListaCulturas);
		adicionaNomeCulturaChoice(pv_ListaCulturas);
		pv_ListaCulturas.addItemListener(handler);

		pv_ListaVariaveis = new Choice();
		atribuirVariavelPanel.add(pv_ListaVariaveis);
		pv_ListaVariaveis.addItemListener(handler);

		try {
			for(Variavel variavel : comando.getVariaveis() ) {
				pv_ListaVariaveis.add(variavel.getNome());
			}

		} catch (Exception e2) {
			e2.printStackTrace();
		}


		Button pv_ButtonAtribuirVariavel = new Button("Atribuir");
		atribuirVariavelPanel.add(pv_ButtonAtribuirVariavel);

		/*Atribuir variável botão */
		pv_ButtonAtribuirVariavel.addActionListener(new ActionListener() {
			@Override
			public void actionPerformed(ActionEvent e) {
				String cultura = pv_ListaCulturas.getSelectedItem();
				String variavel = pv_ListaVariaveis.getSelectedItem();
				int idCultura=0;
				int idVariavel=0;
				try {
					idCultura =comando.buscaIDCultura(cultura);
				} catch (Exception e1) {
					System.out.println("Erro IDCultura");
				}
				try {
					idVariavel= comando.buscaIDVariavel(variavel);
				} catch (Exception e1) {
					System.out.println("Erro IDVariavel");
				}
				comando.updateVariavel(idVariavel, idCultura);	
				//					
			}
		});



		// Painel Inserir Medicoes (pm)
		JPanel inserirMedicoesPanel = new JPanel();

		Choice pm_ListaCulturas = new Choice();
		inserirMedicoesPanel.add(pm_ListaCulturas);

		Choice pm_Listavariaveis = new Choice();
		inserirMedicoesPanel.add(pm_Listavariaveis);

		TextField pm_ValorMedicao = new TextField();
		inserirMedicoesPanel.add(pm_ValorMedicao);

		Button pm_ButtonInserirMedicao = new Button("Inserir");
		inserirMedicoesPanel.add(pm_ButtonInserirMedicao);

		//		 Inserir Cultura

		pcc_ButtonInserirCultura.addActionListener(new ActionListener() {
			@Override
			public void actionPerformed(ActionEvent e) {
				try {
					comando.inserirCultura(12, "joao@gmail.com", getNomeCultura(), getDescricaoCultura());
					System.out.println(getDescricaoCultura());
				} catch (Exception e1) {
					// TODO Auto-generated catch block
					e1.printStackTrace();
				}
			}
		});




		// ActionListener botoes esquerda
		btnVerCulturas.addActionListener(new ActionListener() {

			@Override
			public void actionPerformed(ActionEvent e) {
				centerPanel.removeAll();
				centerPanel.repaint();
				centerPanel.revalidate();
				centerPanel.add(verCulturasPanel);
				centerPanel.repaint();
				centerPanel.revalidate();
			}
		});
		btnCriarCultura.addActionListener(new ActionListener() {

			@Override
			public void actionPerformed(ActionEvent e) {
				centerPanel.removeAll();
				centerPanel.repaint();
				centerPanel.revalidate();
				centerPanel.add(criarCulturaPanel);
				centerPanel.repaint();
				centerPanel.revalidate();
			}
		});
		btnAtribuirVariavel.addActionListener(new ActionListener() {

			@Override
			public void actionPerformed(ActionEvent e) {
				centerPanel.removeAll();
				centerPanel.repaint();
				centerPanel.revalidate();
				centerPanel.add(atribuirVariavelPanel);
				centerPanel.repaint();
				centerPanel.revalidate();
			}
		});
		btnInserirMedida.addActionListener(new ActionListener() {

			@Override
			public void actionPerformed(ActionEvent e) {
				centerPanel.removeAll();
				centerPanel.repaint();
				centerPanel.revalidate();
				centerPanel.add(inserirMedicoesPanel);
				centerPanel.repaint();
				centerPanel.revalidate();
			}
		});
	}

	private class ItemHandler implements ItemListener {
		@Override
		public void itemStateChanged(ItemEvent evento) {
			try {
				if(evento.getSource() == pvc_ListaCulturas) {
					for(Cultura cultura : comando.getCultura()) {
						if(pvc_ListaCulturas.getSelectedItem().equals(cultura.getNome())) {
							pvc_DescricaoCultura.setText(cultura.getDescricao());
						}
					}
				}
				//				if(evento.getSource() == pv_ListaVariaveis) {
				//					comando.buscaIDVariavel(pv_ListaVariaveis.getSelectedItem());
				//				}
				//				if(evento.getSource() == pv_ListaCulturas) {
				//					comando.buscaIDCultura(pv_ListaCulturas.getSelectedItem());
				//				}
			} catch (Exception e) {
				e.printStackTrace();
			}
		}

	}
}
