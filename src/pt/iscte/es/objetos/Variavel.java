package pt.iscte.es.objetos;

public class Variavel {
	
	private String nome;
	private int id;
	
	public Variavel(int id, String nome) {
		this.nome = nome;
		this.id = id;
	}

	public String getNome() {
		return nome;
	}


	public int getID() {
		return id;
	}


	@Override
	public String toString() {
		return "Variavel [nome=" + nome + ", id=" + id + "]";
	}

	

}