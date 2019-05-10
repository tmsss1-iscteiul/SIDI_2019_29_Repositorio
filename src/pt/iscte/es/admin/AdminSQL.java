package pt.iscte.es.admin;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import pt.iscte.es.objetos.Investigador;
import pt.iscte.es.objetos.Variavel;

public class AdminSQL {
	private Connection conn;

	public AdminSQL(Connection conn, String username) {
		this.conn = conn;
	}

	public ArrayList<Investigador> getInvestigador() {
		ArrayList<Investigador> investigadores = new ArrayList<>();
		try {
			PreparedStatement statement = conn
					.prepareStatement("SELECT Email, NomeInvestigador, CategoriaProfissional from investigador");
			ResultSet result = statement.executeQuery();
			while (result.next()) {
				investigadores.add(new Investigador(result.getString("Email"), result.getString("NomeInvestigador"),
						result.getString("CategoriaProfissional")));
			}
		} catch (Exception e) {
			System.out.println(e);
		}
		return investigadores;
	}

	public void inserirInvestigador(String emailInvestigador, String nomeInvestigador, String categoriaProfissional) {
		PreparedStatement query;
		try {
			query = conn.prepareStatement(
					"INSERT INTO investigador(Email, NomeInvestigador, CategoriaProfissional) values ('"
							+ emailInvestigador + "', '" + nomeInvestigador + "', '" + categoriaProfissional + "');");
			query.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}

	}

	public void updateInvestigador(String email, String nomeNovo, String categoriaNova) {
		PreparedStatement statement;
		try {
			statement = conn.prepareStatement(
					"UPDATE investigador set NomeInvestigador = ?, CategoriaProfissional = ? where Email = ?;");
			statement.setString(1, nomeNovo);
			statement.setString(2, categoriaNova);
			statement.setString(3, email);
			statement.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	public void deleteInvestigador(String email) {
		PreparedStatement query;
		try {
			query = conn.prepareStatement("DELETE FROM investigador where Email = ?;");
			query.setString(1, email);
			query.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

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

	public void inserirVariavel(String nomeVariavel) {
		PreparedStatement query;
		try {
			int idVariavel = (idVariavelMax() + 1);
			query = conn.prepareStatement("INSERT INTO variaveis(IDVariavel, NomeVariavel) values ('" + idVariavel
					+ "', '" + nomeVariavel + "');");
			query.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	private int idVariavelMax() throws SQLException {
		int x = 0;
		PreparedStatement statement = conn.prepareStatement("SELECT max(IDVariavel) from variaveis");
		ResultSet result = statement.executeQuery();
		while (result.next()) {
			x = result.getInt(1);
		}
		if (x == 0) {
			System.out.println("Erro ao tentar encontrar último ID da tabela cultura");
		}
		return x;
	}

	public void updateVariavel(int id_old, String nome_new) {
		PreparedStatement statement;
		try {
			statement = conn.prepareStatement(
					"UPDATE variaveis set NomeVariavel = ? where IDVariavel = ?;");
			statement.setString(1, nome_new);
			statement.setInt(2, id_old);
			statement.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	public void deleteVariavel(int idVariavel) {
		PreparedStatement query;
		try {
			query = conn.prepareStatement("DELETE FROM variaveis where IDVariavel = ?;");
			query.setInt(1, idVariavel);
			query.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

}
