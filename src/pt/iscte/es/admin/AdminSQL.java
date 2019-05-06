package pt.iscte.es.admin;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import pt.iscte.es.investigador.InvestigadorSQL;
import pt.iscte.es.objetos.Investigador;

public class AdminSQL {
	private InvestigadorSQL cmd = new InvestigadorSQL();

	public void inserirInvestigador(String mail, String nome, String categoriaProfissional) throws Exception {
		try {	
			String random = "ola";
			Connection conn = cmd.getConnection("beatriz", "hey");
			CallableStatement stmt = conn.prepareCall("{call InsertInvestigador(?,?,?,?)}");
			stmt.setString(1, mail);
			stmt.setString(2, random);
			stmt.setString(3, nome);
			stmt.setString(4, categoriaProfissional);
			stmt.execute();
		}catch(Exception e){
			System.out.println(e);
		}
	}
	
	public ArrayList<Investigador>  getInvestigadores() throws Exception {
		ArrayList<Investigador> investigadores = new ArrayList<>();
		try {
			Connection conn = cmd.getConnection("beatriz", "hey");
			PreparedStatement statement = conn.prepareStatement("SELECT Email, NomeInvestigador, CategoriaProfissional from investigador ");
			ResultSet result = statement.executeQuery();
			while (result.next()) {
				investigadores.add(new Investigador (result.getString("Email"), result.getString("NomeInvestigador"), result.getString("CategoriaProfissional")));

			}
		}catch(Exception e) {
			System.out.println(e);
		}
		//System.out.println(username);
		return investigadores;
	}
	
	public void updateInvestigador(String email, String nome, String categoria) throws SQLException {
		Connection conn = cmd.getConnection("beatriz", "hey");
		PreparedStatement statement = conn.prepareStatement("UPDATE investigador set NomeInvestigador = ?, CategoriaProfissional = ? where Email = ?;");
		statement.setString(1, nome);
		statement.setString(2, categoria);
		statement.setString(3, email);
		statement.executeUpdate();
		
	}
	
	public void deleteInvestigador(String email) {
		Connection conn = cmd.getConnection("beatriz", "hey");
		PreparedStatement statement;
		try {
			statement = conn.prepareStatement("DELETE FROM investigador WHERE Email = ?;");
			statement.setString(1, email);
			statement.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	//O ID das variaveis não é AI, criar um field para o ID da variavel 
	public void insertVariavel(String variavel) throws SQLException {
		Connection conn = cmd.getConnection("beatriz", "hey");
		PreparedStatement statement = conn.prepareStatement("INSERT INTO variaveis (IDVariavel, NomeVariavel) values (99, '"+variavel+"');");
		statement.executeUpdate();
	}
	
	public void updateVariavel(String nomeAntigo, String nomeFuturo) {
		Connection conn = cmd.getConnection("beatriz", "hey");
		PreparedStatement statement;
		try {
			statement = conn.prepareStatement("UPDATE variaveis set NomeVariavel = ? where NomeVariavel = ?;");
			statement.setString(1, nomeFuturo);
			statement.setString(2, nomeAntigo);
			statement.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public void deleteVariavel(String variavel) {
		Connection conn = cmd.getConnection("beatriz", "hey");
		PreparedStatement statement;
		try {
			statement = conn.prepareStatement("DELETE FROM variaveis WHERE NomeVariavel = ?;");
			statement.setString(1, variavel);
			statement.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	
}
