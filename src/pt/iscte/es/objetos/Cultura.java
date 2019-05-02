package pt.iscte.es.objetos;

public class Cultura {
	private String nome;
	private String descricao;
	private int id;
	
	public Cultura(int id, String nome, String descricao) {
		this.nome = nome;
		this.descricao = descricao;
		this.id = id;
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
