package pt.iscte.es.objetos;

/**
 * 
 * @author 
 *
 */
public class Variavel {
	
	private String nome;
	private int id;
	
	/**
	 * Construtor
	 * @param id
	 * @param nome
	 */
	public Variavel(int id, String nome) {
		this.nome = nome;
		this.id = id;
	}

	/**
	 * 
	 * @return
	 */
	public String getNome() {
		return nome;
	}

	/**
	 * 
	 * @return
	 */
	public int getID() {
		return id;
	}

	/**
	 * 
	 */
	@Override
	public String toString() {
		return "Variavel [nome=" + nome + ", id=" + id + "]";
	}

	

}