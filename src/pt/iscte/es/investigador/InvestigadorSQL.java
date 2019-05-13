package pt.iscte.es.investigador;

import java.io.IOException;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;

import javax.swing.JOptionPane;

import pt.iscte.es.objetos.Cultura;
import pt.iscte.es.objetos.Medicao;
import pt.iscte.es.objetos.Variavel;

public class InvestigadorSQL {
	private Connection conn;
	private String username;

	public InvestigadorSQL(Connection conn, String username) {
		this.conn = conn;
		this.username = username;
	}

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

	// Cultura
	public ArrayList<Cultura> getCultura() throws Exception {
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

	public int buscaIDCultura(String nomeCultura) throws Exception {
		int id = 0;
		for (Cultura cultura : getCultura()) {
			if (cultura.getNome().equals(nomeCultura)) {
				id = cultura.getID();
			}
		}
		return id;
	}

	public void inserirCultura(String cultura, String descricao) throws IOException, SQLException {
		String mail = buscaEmail();
		int idCultura = idCultura() + 1;
		PreparedStatement query = conn.prepareStatement(
				"INSERT INTO cultura(IDCultura, Email_Investigador, NomeCultura, DescricaoCultura) values ('"
						+ idCultura + "', '" + mail + "', '" + cultura + "', '" + descricao + "');");
		query.executeUpdate();
	}

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

	// Variavel
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

	public int buscaIDVariavel(String nomeVariavel) throws Exception {
		int id = 0;
		for (Variavel variavel : getVariaveis()) {
			if (variavel.getNome().equals(nomeVariavel)) {
				id = variavel.getID();
			}
		}
		return id;
	}

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

	// Medicao
	public void insertMedicao(int cultura, int variavel, double valor) throws SQLException, IOException {
		//String timeStamp = new SimpleDateFormat("yyyyMMdd_HHmmss").format(Calendar.getInstance().getTime());
		 Timestamp timestamp = new Timestamp(System.currentTimeMillis());
		//int numeroMedicao = getNumeroMedicaoMax() + 1;
		CallableStatement stmt = conn.prepareCall("{call Insert_Medicao_v3(?,?,?,?)}");
		stmt.setDouble(1, valor);
		stmt.setInt(2, variavel);
		stmt.setInt(3, cultura);
		stmt.setTimestamp(4, timestamp);
		stmt.execute();
	}

//	private int getNumeroMedicaoMax() throws SQLException {
//		int x = 0;
//		PreparedStatement statement = conn.prepareStatement("SELECT max(NumeroMedicao) from medicoes");
//		ResultSet result = statement.executeQuery();
//		while (result.next()) {
//			x = result.getInt(1);
//		}
//		if (x == 0) {
//			System.out.println("Erro ao tentar encontrar último ID da tabela cultura");
//		}
//		return x;
//	}
//
//	public ArrayList<Medicao> getMedicoesVariavel(int idCultura, int idVariavel) {
//		ArrayList<Medicao> medicoes = new ArrayList<>();
//		try {
//			PreparedStatement statement = conn.prepareStatement(
//					"SELECT IDVariavel_Variaveis, IDCultura_Cultura from variaveismedidas where IDCultura_Cultura = ?");
//			statement.setInt(1, idCultura);
//			ResultSet result = statement.executeQuery();
//			while (result.next()) {
//				/*
//				medicoes.add(new Medicao(result.getInt(IDVariavel_Variaveis), result.getInt(IDCultura_Cultura),
//						result.getInt(IDVariavel_Variaveis), result.getInt(IDCultura_Cultura),
//						result.getString(IDCultura_Cultura)));
//				 */
//			}
//		} catch (SQLException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
//		
//		return null;
//	}

	public ArrayList<Medicao> getMedicoes() {
		// TODO Auto-generated method stub
		return null;
	}
}