package ligacao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class ComandosInvestigador {
	private EstabeleceLigacao estlig; 

	public void inserirCultura(int id, String mail, String cultura, String descricao) throws Exception {
		try {
			estlig = new EstabeleceLigacao();
			Connection conn =estlig.getConnection("beatriz", "hey");
			PreparedStatement inserir = conn.prepareStatement("INSERT INTO Cultura (IDCultura, Email_Investigador, NomeCultura, DescricaoCultura) VALUES ('"+id+ "', '"+mail+ "','"+cultura+ "', '"+descricao+ "')"); 
			inserir.executeUpdate();
		}catch(Exception e){
			System.out.println(e);
		}finally {
			System.out.println("Insert bem-sucedido");
		}

	}

	public ArrayList<Cultura>  getCultura() throws Exception {
		ArrayList<Cultura> culturas = new ArrayList<>();
		try {
			estlig = new EstabeleceLigacao();
			Connection conn =estlig.getConnection("beatriz", "hey");
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
			Connection conn =estlig.getConnection("beatriz", "hey");
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

	public void updateVariavel(int idVariaveis, int idCultura) {
		estlig = new EstabeleceLigacao();
		Connection conn =estlig.getConnection("beatriz", "hey");
		try {
			PreparedStatement query = conn.prepareStatement("UPDATE variaveismedidas set IDVariavel = '"+idVariaveis+"' WHERE IDCultura_Cultura = '"+idCultura+"')");
			query.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} 


	}
//Ainda não funciona

//	public int buscaIDCultura(String nomeCultura) throws Exception {
//		int id = 0;
//		for (Cultura cultura: getCultura()) {
//			if(!(cultura.getNome().equals(nomeCultura))) {
//				System.out.println("Erro");
//			}
//			id = cultura.getID();
//		}
//		System.out.println(id);
//		return id;
//	}
//	
//	public int buscaIDVariavel(String nomeVariavel) throws Exception {
//		int id = 0;
//		for (Variavel variavel: getVariaveis()) {
//			if(!(variavel.getNome().equals(nomeVariavel))) {
//				System.out.println("Erro");
//			}
//			id = variavel.getID();
//		}
//		System.out.println(id);
//		return id;
//	}

}



