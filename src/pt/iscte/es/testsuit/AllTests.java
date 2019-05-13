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

public class AllTests {

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
		ArrayList<Variavel> variavel = cmd.getVariaveis();
		
		//Admin
		AdminSQL cm = new AdminSQL(c2, "admin");
		
	}

}

