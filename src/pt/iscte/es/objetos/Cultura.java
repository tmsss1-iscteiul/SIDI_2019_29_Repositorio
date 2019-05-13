package pt.iscte.es.objetos;

/**
 * 
 * @author 
 *
 */
public class Cultura {
	private String nome;
	private String descricao;
	private String email_Investigador;
	private int id;
	
	/**
	 * 
	 * @param id
	 * @param email
	 * @param nome
	 * @param descricao
	 */
	public Cultura(int id, String email, String nome, String descricao) {
		this.nome = nome;
		this.descricao = descricao;
		this.email_Investigador = email;
		this.id = id;
	}
	
	/**
	 * 
	 * @return
	 */
	public String getEmailInvestigador() {
		return email_Investigador;
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
	public String getDescricao() {
		return descricao;
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
		return "Cultura [nome=" + nome + ", descricao=" + descricao + "]";
	}
	

}