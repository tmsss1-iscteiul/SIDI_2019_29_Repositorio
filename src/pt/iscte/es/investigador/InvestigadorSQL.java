package pt.iscte.es.investigador;

import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;



import pt.iscte.es.objetos.Cultura;
import pt.iscte.es.objetos.Variavel;

public class InvestigadorSQL {
	private String username;
	private String password;

	public void readConfig(String fName) throws IOException {
		BufferedReader brTest = new BufferedReader(new FileReader(fName));
		String linha = brTest .readLine();
		String [] info = linha.split(" ");
		username = info[0];
		password = info[1];
		brTest.close();
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public Connection getConnection(String username, String password) {
		try {
			String driver = "com.mysql.jdbc.Driver";
			String url = "jdbc:mysql://localhost:3306/db_mysql_origem";
			Class.forName(driver);

			Connection conn = DriverManager.getConnection(url, username, password);
			return conn;

		}catch(Exception e) {
			System.out.println(e);
		}
		return null;
	}

	public Connection estabeleceLigacao() throws IOException {
		readConfig("info.txt");
		Connection conn = getConnection(username, password);
		return conn;
	}

	public int idCultura() throws IOException, SQLException {
		int x = 0;
		Connection conn = estabeleceLigacao();
		PreparedStatement statement = conn.prepareStatement("SELECT max(IDCultura) from cultura");
		ResultSet result = statement.executeQuery();
		while (result.next()) {
			x = result.getInt(1);
		}
		if( x == 0 ) {
			System.out.println("Erro ao tentar encontrar último ID da tabela cultura");
		}
		return x;

	}

	public String buscaEmail () throws IOException, SQLException  { 
		Connection conn = estabeleceLigacao();
		String mail ="";
		PreparedStatement statement = conn.prepareStatement("SELECT Email FROM investigador WHERE Email LIKE ?");
		statement.setString(1, username + "@" + "%");
		ResultSet result = statement.executeQuery();
		while (result.next()) {
			mail = result.getString(1);
		}
		if(mail.equals("")) {
			System.out.println("Erro ao tentar encontrar o e-mail do Investigador");
		}
		return mail;
	}

	public void inserirCultura(String cultura, String descricao) throws IOException, SQLException {	
		Connection conn = estabeleceLigacao();
		String mail= buscaEmail();
		int idCultura = idCultura() +1;
		PreparedStatement query = conn.prepareStatement("INSERT INTO cultura(IDCultura, Email_Investigador, NomeCultura, DescricaoCultura) values ('"+idCultura+"', '"+mail+"', '"+cultura+"', '"+descricao+"');");
		query.executeUpdate();
	}

	public ArrayList<Cultura>  getCultura() throws Exception {
		ArrayList<Cultura> culturas = new ArrayList<>();
		try {
			Connection conn = estabeleceLigacao();
			System.out.println(buscaEmail());
			PreparedStatement statement = conn.prepareStatement("SELECT IDCultura, NomeCultura, DescricaoCultura from cultura WHERE Email_Investigador = ? ");
			statement.setString(1, buscaEmail());
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
			Connection conn = estabeleceLigacao();
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

	public ArrayList<Variavel> getVariaveisAssociadasCultura(int idCultura) throws Exception {
		ArrayList<Variavel> variaveis = new ArrayList<>();
		Connection conn = estabeleceLigacao();
		PreparedStatement statement = conn.prepareStatement("SELECT IDVariavel_Variaveis, IDCultura_Cultura from variaveismedidas where IDCultura_Cultura = ?");
		statement.setInt(1, idCultura);
		ResultSet result = statement.executeQuery();
		while(result.next()) {
			for (Variavel v : getVariaveis()) {
				if(v.getID() == result.getInt("IDVariavel_Variaveis")) {
					variaveis.add(v);
				}
			}
		}
		return variaveis;
	}

	public int insertVariavel(int idVariaveis, int idCultura, double limiteInferior, double limiteSuperior) throws IOException {
		int x = 0;
		Connection conn = estabeleceLigacao();
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

	public void insertMedicao(int cultura, int variavel, double valor ) throws SQLException, IOException {
		Connection conn = estabeleceLigacao();
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
			Connection conn = estabeleceLigacao();
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

	public void updateCultura(String nomeAntigo, String nomeFuturo, String descricao) {
		Connection conn = getConnection(username, password);
		PreparedStatement statement;
		try {
			statement = conn.prepareStatement("UPDATE cultura set NomeCultura = ?, DescricaoCultura = ? where NomeCultura = ?;");
			statement.setString(1, nomeFuturo);
			statement.setString(2, descricao);
			statement.setString(3, nomeAntigo);
			statement.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}


}