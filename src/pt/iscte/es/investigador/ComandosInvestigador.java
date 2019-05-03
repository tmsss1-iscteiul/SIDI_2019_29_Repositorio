package pt.iscte.es.investigador;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import pt.iscte.es.main.EstabeleceLigacao;
import pt.iscte.es.objetos.Cultura;
import pt.iscte.es.objetos.Variavel;

public class ComandosInvestigador {
	private EstabeleceLigacao estlig; 
	private String username;
	private String password;
	
	public String getUsername() {
		return username;
	}
	
	public String getPassword() {
		return password;
	}
	
	public void setUsername(String username) {
		this.username = username;
	}
	
	public void setPassword(String password) {
		this.password = password;
	}

	public Connection getConnection() {
		try {
			String driver = "com.mysql.jdbc.Driver";
			String url = "jdbc:mysql://localhost:3306/db_mysql_origem";
			Class.forName(driver);
			
			Connection conn = DriverManager.getConnection(url, username, password);
			System.out.println("Sucesso");
			return conn;
		
		}catch(Exception e) {
			System.out.println(e);
		}
		return null;
	}
	
	public void inserirCultura(int id, String mail, String cultura, String descricao) throws Exception {
		try {
			estlig = new EstabeleceLigacao();
			Connection conn = getConnection();
			PreparedStatement inserir = conn.prepareStatement("INSERT INTO Cultura (IDCultura, Email_Investigador, NomeCultura, DescricaoCultura) VALUES ('"+id+ "', '"+mail+ "','"+cultura+ "', '"+descricao+ "')"); 
			inserir.executeUpdate();
		}catch(Exception e){
			System.out.println(e);
		}finally {
			//System.out.println("Insert bem-sucedido");
		}

	}

	public ArrayList<Cultura>  getCultura() throws Exception {
		ArrayList<Cultura> culturas = new ArrayList<>();
		try {
			estlig = new EstabeleceLigacao();
			Connection conn = getConnection();
			PreparedStatement statement = conn.prepareStatement("SELECT IDCultura, NomeCultura, DescricaoCultura from cultura ");
			ResultSet result = statement.executeQuery();
			while (result.next()) {
				culturas.add(new Cultura (result.getInt("IDCultura"), result.getString("NomeCultura"), result.getString("DescricaoCultura")));

			}
		}catch(Exception e) {
			System.out.println(e);
		}
		return culturas;
	}

	public ArrayList<Variavel>  getVariaveis() throws Exception {
		ArrayList<Variavel> variaveis = new ArrayList<>();
		try {
			estlig = new EstabeleceLigacao();
			Connection conn = getConnection();
			PreparedStatement statement = conn.prepareStatement("SELECT IDVariavel, NomeVariavel from variaveis");
			ResultSet result = statement.executeQuery();
			while (result.next()) {
				variaveis.add(new Variavel(result.getInt("IDVariavel"), result.getString("NomeVariavel")));
			}
		}catch(Exception e) {
			System.out.println(e);
		}
		return variaveis;
	}

	public int insertVariavel(int idVariaveis, int idCultura, double limiteInferior, double limiteSuperior) {
		estlig = new EstabeleceLigacao();
		int x = 0;
		Connection conn = getConnection();
		try {
			PreparedStatement query = conn.prepareStatement("INSERT INTO variaveismedidas(IDVariavel_Variaveis, IDCultura_Cultura, LimiteInferior, LimiteSuperior) values ('"+idVariaveis+"', '"+idCultura+"', '"+limiteInferior+"', '"+limiteSuperior+"');");
			query.executeUpdate();	
			x=1;
		} catch (SQLException e) {
			e.printStackTrace();
			x=0;
		} 
		return x;
	}
	
	public void insertMedicao(int cultura, int variavel, double valor ) throws SQLException {
		estlig = new EstabeleceLigacao();
		Connection conn = getConnection();
		PreparedStatement query = conn.prepareStatement("insert into medicoes(IDVariaveis_VariaveisMedidas, IDCultura_VariaveisMedidas, ValorMedicao) values ('"+variavel+"', '"+cultura+"', '"+valor+"');");
		query.executeUpdate();
	}

	public int buscaIDCultura(String nomeCultura) throws Exception {
		int id = 0;
		for (Cultura cultura: getCultura()) {
			if(cultura.getNome().equals(nomeCultura)) {
				id = cultura.getID();
			}
		}
		System.out.println(id);
		return id;
	}

	public int buscaIDVariavel(String nomeVariavel) throws Exception {
		int id = 0;
		for (Variavel variavel: getVariaveis()) {
			if(variavel.getNome().equals(nomeVariavel)) {
				id = variavel.getID();
			}
		}
		//System.out.println(id);
		return id;
	}
	

	public ArrayList<Variavel> getVariavelEspecifica(int idCultura) {
		ArrayList<Variavel> medicoes = new ArrayList<>();
		try {
			estlig = new EstabeleceLigacao();
			Connection conn = getConnection();
			PreparedStatement statement = conn.prepareStatement("select IDVariavel_Variaveis from variaveismedidas where IDCultura_Cultura="+idCultura+";");
			ResultSet result = statement.executeQuery();
			while (result.next()) {
				for(Variavel v : getVariaveis()) {
					if(v.getID() == result.getInt("IDVariavel_Variaveis")) {
						medicoes.add((v));
					}
				}
			}
		}catch(Exception e) {
			System.out.println(e);
		}
		return medicoes;
	}
	
	
}