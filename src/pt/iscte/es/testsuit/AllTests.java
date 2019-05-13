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
import pt.iscte.es.objetos.Variavel;

/**
 * 
 * @author 
 *
 */
public class AllTests {

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
		
		Connection c2 = login.getConnection(admin, passAdmin);
		assertNotEquals(null, c2);
		AdminAPP ad = new AdminAPP(c2, admin);
		assertNotEquals(null, ad);
	
		//Investigador
		InvestigadorSQL investigadorSQL = new InvestigadorSQL(c, investigador);
		//getCultura
		ArrayList<Cultura> cultura = investigadorSQL.getCultura();
		assert(!cultura.isEmpty());
		//getVariaveis
		ArrayList<Variavel> variavel = investigadorSQL.getVariaveis();
		assert(!variavel.isEmpty());
		//getCulturasSemVariaveis
		ArrayList<Cultura> cultura2 = investigadorSQL.getCulturasSemVariaveis();
		assert(!cultura2.isEmpty());
		//buscaIDCultura
		int id = investigadorSQL.buscaIDCultura("CulturaNova");
		assertEquals(7, id);
		assertEquals("root@localhost", investigadorSQL.buscaEmail());
		assertEquals(7, investigadorSQL.idCultura());
		assertEquals(1, investigadorSQL.buscaIDVariavel("Variavel de Teste"));
		variavel = investigadorSQL.getVariaveisAssociadasCultura(1);
		assertNotEquals(null, variavel);
		variavel = investigadorSQL .getVariavelEspecifica(1);
		assertNotEquals(null, variavel);
		
		//Admin
		AdminSQL cmd = new AdminSQL(c2, admin);
		//getInvestigador
		ArrayList<Investigador> investigador = cmd.getInvestigador();
		assertNotEquals(null, investigador);
		//inserirInvestigador
		int size = investigador.size();
		cmd.inserirInvestigador("emailTeste123@Teste", "Nome Teste", "Categori Teste");
		investigador = cmd.getInvestigador();
		size++;
		assertEquals(size, investigador.size());
		//deleteInvestigador
		cmd.deleteInvestigador("emailTeste123@Teste");
		investigador = cmd.getInvestigador();
		size--;
		assertEquals(size, investigador.size());
		//getVariaveis
		variavel = cmd.getVariaveis();
		assertNotEquals(null, variavel);
		//inserirVariavel
		size = variavel.size();
		cmd.inserirVariavel("VariavelTesteNova");
		size++;
		variavel = cmd.getVariaveis();
		assertEquals(size, variavel.size());
		//deleteVariavel
		cmd.deleteVariavel(variavel.get(variavel.size()-1).getID());
		size--;
		variavel = cmd.getVariaveis();
		assertEquals(size, variavel.size());
	}

}

