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
		Connection c = login.getConnection("root", "");
		assertNotEquals(null, c);
		InvestigadorAPP in = new InvestigadorAPP(c, "root");
		assertNotEquals(null, in);
		
		Connection c2 = login.getConnection("admin", "12345");
		assertNotEquals(null, c2);
		AdminAPP ad = new AdminAPP(c2, "admin");
		assertNotEquals(null, ad);
	
		//Investigador
		InvestigadorSQL cmd = new InvestigadorSQL(c, "root");
		ArrayList<Cultura> cultura = cmd.getCultura();
		assert(!cultura.isEmpty());
		ArrayList<Variavel> variavel = cmd.getVariaveis();
		assert(!variavel.isEmpty());
		ArrayList<Cultura> cultura2 = cmd.getCulturasSemVariaveis();
		assert(!cultura2.isEmpty());
		int id = cmd.buscaIDCultura("CulturaNova");
		assertEquals(7, id);
		assertEquals("root@localhost", cmd.buscaEmail());
		assertEquals(7, cmd.idCultura());
		assertEquals(1, cmd.buscaIDVariavel("Variavel de Teste"));
		variavel = cmd.getVariaveisAssociadasCultura(1);
		assertNotEquals(null, variavel);
		variavel = cmd .getVariavelEspecifica(1);
		assertNotEquals(null, variavel);
		
		//Admin
		AdminSQL cm = new AdminSQL(c2, "admin");
		
	}

}

