package pt.iscte.es.objetos;

/**
 * 
 * @author 
 *
 */
public class Investigador {

	private String email, nome, categoriaProfissional;
	
	/**
	 * Construtor
	 * @param email
	 * @param nome
	 * @param categoriaProfissional
	 */
	public Investigador(String email, String nome, String categoriaProfissional) {
		this.email = email;
		this.nome = nome;
		this.categoriaProfissional = categoriaProfissional;
	}

	/**
	 * 
	 * @return
	 */
	public String getEmail() {
		return email;
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
	public String getCategoriaProfissional() {
		return categoriaProfissional;
	}
	
}
