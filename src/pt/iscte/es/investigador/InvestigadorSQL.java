package pt.iscte.es.investigador;

import java.io.IOException;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.ArrayList;

import javax.swing.JOptionPane;

import pt.iscte.es.objetos.Cultura;
import pt.iscte.es.objetos.Medicao;
import pt.iscte.es.objetos.Variavel;

/**
 * 
 * @author jfnfs
 *
 */
public class InvestigadorSQL {
	private Connection conn;
	private String username;

	/**
	 * Construtor
	 * 
	 * @param conn
	 * @param username
	 */
	public InvestigadorSQL(Connection conn, String username) {
		this.conn = conn;
		this.username = username;
	}

	/**
	 * Devolve email do investigador presente na Base de Dados
	 * 
	 * @return
	 * @throws IOException
	 * @throws SQLException
	 */
	public String buscaEmail() throws IOException, SQLException {
		String mail = "";
		PreparedStatement statement = conn.prepareStatement("SELECT Email FROM investigador WHERE Email LIKE ?");
		statement.setString(1, username + "@" + "%");
		ResultSet result = statement.executeQuery();
		while (result.next()) {
			mail = result.getString(1);
		}
		if (mail.equals("")) {
			System.out.println("Erro ao tentar encontrar o e-mail do Investigador");
		}
		return mail;
	}

	/**
	 * Devolve Culturas na Base de Dados
	 * 
	 * @return
	 * @throws Exception
	 */
	public ArrayList<Cultura> getCultura() {
		ArrayList<Cultura> culturas = new ArrayList<>();
		try {
			PreparedStatement statement = conn.prepareStatement(
					"SELECT IDCultura, Email_Investigador, NomeCultura, DescricaoCultura from cultura WHERE Email_Investigador = ? ");
			statement.setString(1, buscaEmail());
			ResultSet result = statement.executeQuery();
			while (result.next()) {
				culturas.add(new Cultura(result.getInt("IDCultura"), result.getString("Email_Investigador"),
						result.getString("NomeCultura"), result.getString("DescricaoCultura")));
			}
		} catch (Exception e) {
			System.out.println(e);
		}
		return culturas;
	}

	/**
	 * Devolve Culturas sem Variaveis
	 * 
	 * @return
	 * @throws Exception
	 */
	public ArrayList<Cultura> getCulturasSemVariaveis() throws Exception {
		ArrayList<Cultura> culturas = new ArrayList<>();
		PreparedStatement statement = conn.prepareStatement(
				"SELECT IDCultura from cultura where IDCultura not in (select IDCultura_Cultura from variaveismedidas )");
		ResultSet result = statement.executeQuery();
		while (result.next()) {
			for (Cultura cultura : getCultura()) {
				if (cultura.getID() == result.getInt("IDCultura"))
					culturas.add(cultura);

			}
		}
		return culturas;
	}

	/**
	 * Devolve o ID da Cultura
	 * 
	 * @param nomeCultura
	 * @return
	 * @throws Exception
	 */
	public int buscaIDCultura(String nomeCultura) throws Exception {
		int id = 0;
		for (Cultura cultura : getCultura()) {
			if (cultura.getNome().equals(nomeCultura)) {
				id = cultura.getID();
			}
		}
		return id;
	}

	/**
	 * Insere uma nova Cultura
	 * 
	 * @param cultura
	 * @param descricao
	 * @throws IOException
	 * @throws SQLException
	 */
	public void inserirCultura(String cultura, String descricao) throws IOException, SQLException {
		String mail = buscaEmail();
		int idCultura = idCultura() + 1;
		PreparedStatement query = conn.prepareStatement(
				"INSERT INTO cultura(IDCultura, Email_Investigador, NomeCultura, DescricaoCultura) values ('"
						+ idCultura + "', '" + mail + "', '" + cultura + "', '" + descricao + "');");
		query.executeUpdate();
	}

	/**
	 * Devovle o ultimo id Cultura
	 * 
	 * @return
	 * @throws IOException
	 * @throws SQLException
	 */
	public int idCultura() throws IOException, SQLException {
		int x = 0;
		PreparedStatement statement = conn.prepareStatement("SELECT max(IDCultura) from cultura");
		ResultSet result = statement.executeQuery();
		while (result.next()) {
			x = result.getInt(1);
		}
		if (x == 0) {
			System.out.println("Erro ao tentar encontrar último ID da tabela cultura");
		}
		return x;
	}

	/**
	 * Actualiza a Cultura
	 * 
	 * @param nomeAntigo
	 * @param nomeFuturo
	 * @param descricao
	 */
	public void updateCultura(String nomeAntigo, String nomeFuturo, String descricao) {
		PreparedStatement statement;
		try {
			statement = conn.prepareStatement(
					"UPDATE cultura set NomeCultura = ?, DescricaoCultura = ? where NomeCultura = ?;");
			statement.setString(1, nomeFuturo);
			statement.setString(2, descricao);
			statement.setString(3, nomeAntigo);
			statement.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	/**
	 * Remove Cultura
	 * @param idCultura
	 */
	public void removeCultura(int idCultura){
		PreparedStatement query;
		try {
			query = conn.prepareStatement("DELETE FROM cultura where IDCultura = ?;");
			query.setInt(1, idCultura);
			query.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	/**
	 * Devolve lista de Variaveis
	 * 
	 * @return
	 * @throws Exception
	 */
	public ArrayList<Variavel> getVariaveis() throws Exception {
		ArrayList<Variavel> variaveis = new ArrayList<>();
		try {
			PreparedStatement statement = conn.prepareStatement("SELECT IDVariavel, NomeVariavel from variaveis");
			ResultSet result = statement.executeQuery();
			while (result.next()) {
				variaveis.add(new Variavel(result.getInt("IDVariavel"), result.getString("NomeVariavel")));
			}
		} catch (Exception e) {
			System.out.println(e);
		}
		return variaveis;
	}

	/**
	 * Devolve lista de Variaveis para determinada Cultura
	 * 
	 * @param idCultura
	 * @return
	 * @throws Exception
	 */
	public ArrayList<Variavel> getVariaveisAssociadasCultura(int idCultura) throws Exception {
		ArrayList<Variavel> variaveis = new ArrayList<>();
		PreparedStatement statement = conn.prepareStatement(
				"SELECT IDVariavel_Variaveis, IDCultura_Cultura from variaveismedidas where IDCultura_Cultura = ?");
		statement.setInt(1, idCultura);
		ResultSet result = statement.executeQuery();
		while (result.next()) {
			for (Variavel v : getVariaveis()) {
				if (v.getID() == result.getInt("IDVariavel_Variaveis")) {
					variaveis.add(v);

				}
			}
		}
		return variaveis;
	}

	/**
	 * Devolve Variaveis para Cultura especifica
	 * 
	 * @param idCultura
	 * @return
	 */
	public ArrayList<Variavel> getVariavelEspecifica(int idCultura) {
		ArrayList<Variavel> medicoes = new ArrayList<>();
		try {
			PreparedStatement statement = conn.prepareStatement(
					"select IDVariavel_Variaveis from variaveismedidas where IDCultura_Cultura=" + idCultura + ";");
			ResultSet result = statement.executeQuery();
			while (result.next()) {
				for (Variavel v : getVariaveis()) {
					if (v.getID() == result.getInt("IDVariavel_Variaveis")) {
						medicoes.add((v));
					}
				}
			}
		} catch (Exception e) {
			System.out.println(e);
		}
		return medicoes;
	}

	/**
	 * Devolve Id da Variavel
	 * 
	 * @param nomeVariavel
	 * @return
	 * @throws Exception
	 */
	public int buscaIDVariavel(String nomeVariavel) throws Exception {
		int id = 0;
		for (Variavel variavel : getVariaveis()) {
			if (variavel.getNome().equals(nomeVariavel)) {
				id = variavel.getID();
			}
		}
		return id;
	}

	/**
	 * Insere Variavel
	 * 
	 * @param idVariaveis
	 * @param idCultura
	 * @param limiteInferior
	 * @param limiteSuperior
	 * @return
	 * @throws IOException
	 */
	public int insertVariavel(int idVariaveis, int idCultura, double limiteInferior, double limiteSuperior)
			throws IOException {
		int x = 0;
		try {
			PreparedStatement query = conn.prepareStatement(
					"INSERT INTO variaveismedidas(IDVariavel_Variaveis, IDCultura_Cultura, LimiteInferior, LimiteSuperior) values ('"
							+ idVariaveis + "', '" + idCultura + "', '" + limiteInferior + "', '" + limiteSuperior
							+ "');");
			query.executeUpdate();
			x = 1;
		} catch (SQLException e) {
			x = 0;
			JOptionPane.showMessageDialog(null, "Variavel já está atribuída a Cultura.");
		}
		return x;
	}

	/**
	 * Insere Medição nova
	 * 
	 * @param cultura
	 * @param variavel
	 * @param valor
	 * @throws SQLException
	 * @throws IOException
	 */
	public void insertMedicao(int ID_cultura, int ID_variavel, double valor) throws SQLException, IOException {
		Timestamp timestamp = new Timestamp(System.currentTimeMillis());
		CallableStatement stmt = conn.prepareCall("{call Insert_Medicao_v3(?,?,?,?)}");
		stmt.setDouble(1, valor);
		stmt.setInt(2, ID_variavel);
		stmt.setInt(3, ID_cultura);
		stmt.setTimestamp(4, timestamp);
		stmt.execute();
		System.out.println("" + ID_cultura);
		System.out.println("" + ID_variavel);
		System.out.println("" + valor);
		System.out.println("" + timestamp);
	}

	public ArrayList<Medicao> getMedicoes(int ID_Cultura) {
		ArrayList<Medicao> medicoes = new ArrayList<>();
		try {
			PreparedStatement statement = conn.prepareStatement(
					"SELECT NumeroMedicao, ValorMedicao, DataHoraMedicao, IDVariaveis_VariaveisMedidas from medicoes where IDCultura_VariaveisMedidas = ?");
			statement.setInt(1, ID_Cultura);
			ResultSet result = statement.executeQuery();
			while (result.next()) {
				medicoes.add(new Medicao(result.getInt("NumeroMedicao"), ID_Cultura,
						result.getInt("IDVariaveis_VariaveisMedidas"), result.getDouble("ValorMedicao"),
						result.getString("DataHoraMedicao")));
			}
			return medicoes;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}

	public void removerMedicao(int numeroMedicao) {
		PreparedStatement statement;
		try {
			statement = conn.prepareStatement("DELETE FROM medicoes where NumeroMedicao = ?;");
			statement.setInt(1, numeroMedicao);
			statement.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
}