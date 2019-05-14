package pt.iscte.es.testsuit;

import static org.junit.Assert.*;

import java.sql.Connection;
import java.util.ArrayList;

import org.junit.Test;

import pt.iscte.es.admin.AdminAPP;
import pt.iscte.es.admin.AdminSQL;
import pt.iscte.es.investigador.InvestigadorAPP;
import pt.iscte.es.investigador.InvestigadorSQL;
import pt.iscte.es.login.Login;
import pt.iscte.es.objetos.Cultura;
import pt.iscte.es.objetos.Investigador;
import pt.iscte.es.objetos.Variavel;

/**
 * 
 * @author 
 *
 */
public class AllTests {
	
	private String investigador = "root";
	private String investigadorPass = "";
	private String admin = "";
	private String adminPass = "";
	

	/**
	 * Classe de Testes
	 * @throws Exception
	 */
	@Test
	public void test() throws Exception {
		Login login = new Login();
		Connection c = login.getConnection(investigador, investigadorPass);
		assertNotEquals(null, c);
		InvestigadorAPP in = new InvestigadorAPP(c, investigador);
		assertNotEquals(null, in);
		
		Connection c2 = login.getConnection(admin, adminPass);
		assertNotEquals(null, c2);
		AdminAPP ad = new AdminAPP(c2, admin);
		assertNotEquals(null, ad);
	
		//Investigador
		InvestigadorSQL cmd = new InvestigadorSQL(c, investigador);
		//getCultura
		ArrayList<Cultura> cultura = cmd.getCultura();
		assert(!cultura.isEmpty());
		//inserirCultura
		/*
		int size = cultura.size();
		cmd.inserirCultura("CulturaTeste12345", "CulturaDescricao");
		size++;
		cultura = cmd.getCultura();
		assertEquals(size, cultura.size());
		*/
		//getVariaveis
		ArrayList<Variavel> variavel = cmd.getVariaveis();
		assert(!variavel.isEmpty());
		//getCulturasSemVariaveis
		ArrayList<Cultura> cultura2 = cmd.getCulturasSemVariaveis();
		assert(!cultura2.isEmpty());
		//buscaIDCultura
		Cultura culturaAux = cultura.get(cultura.size()-1);
		assertEquals(culturaAux.getID(), cmd.buscaIDCultura(culturaAux.getNome()));
		assertEquals(culturaAux.getEmailInvestigador(), cmd.buscaEmail());
		assertEquals(culturaAux.getID(), cmd.idCultura());
		//buscaIDVariavel
		Variavel variavelAux = variavel.get(variavel.size()-1);
		assertEquals(variavelAux.getID(), cmd.buscaIDVariavel(variavelAux.getNome()));
		variavel = cmd.getVariaveisAssociadasCultura(1);
		assertNotEquals(null, variavel);
		variavel = cmd .getVariavelEspecifica(1);
		assertNotEquals(null, variavel);
		
		//Admin
		AdminSQL adminSQL = new AdminSQL(c2, admin);
		//getInvestigador
		ArrayList<Investigador> investigador = adminSQL.getInvestigador();
		assertNotEquals(null, investigador);
		//inserirInvestigador
		int size2 = investigador.size();
		adminSQL.inserirInvestigador("emailTeste123@Teste", "Nome Teste", "Categori Teste");
		investigador = adminSQL.getInvestigador();
		size2++;
		assertEquals(size2, investigador.size());
		//deleteInvestigador
		adminSQL.deleteInvestigador("emailTeste123@Teste");
		investigador = adminSQL.getInvestigador();
		size2--;
		assertEquals(size2, investigador.size());
		//getVariaveis
		variavel = adminSQL.getVariaveis();
		assertNotEquals(null, variavel);
		//inserirVariavel
		size2 = variavel.size();
		adminSQL.inserirVariavel("VariavelTesteNova");
		size2++;
		variavel = adminSQL.getVariaveis();
		assertEquals(size2, variavel.size());
		//deleteVariavel
		adminSQL.deleteVariavel(variavel.get(variavel.size()-1).getID());
		size2--;
		variavel = adminSQL.getVariaveis();
		assertEquals(size2, variavel.size());
	}

}

