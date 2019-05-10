package pt.iscte.es.objetos;

public class Cultura {
	private String nome;
	private String descricao;
	private String email_Investigador;
	private int id;
	
	public Cultura(int id, String email, String nome, String descricao) {
		this.nome = nome;
		this.descricao = descricao;
		this.email_Investigador = email;
		this.id = id;
	}
	
	public String getEmailInvestigador() {
		return email_Investigador;
	}
	
	public String getNome() {
		return nome;
	}

	public String getDescricao() {
		return descricao;
	}

	public int getID() {
		return id;
	}



	@Override
	public String toString() {
		return "Cultura [nome=" + nome + ", descricao=" + descricao + "]";
	}
	

}