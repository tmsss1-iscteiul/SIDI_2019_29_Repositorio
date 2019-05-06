package pt.iscte.es.objetos;

public class Investigador {
	private String email;
	private String nome;
	private String categoriaProfissional;
	
	public Investigador(String email, String nome, String categoriaProfissional) {
		super();
		this.email = email;
		this.nome = nome;
		this.categoriaProfissional = categoriaProfissional;
	}

	public String getEmail() {
		return email;
	}

	public String getNome() {
		return nome;
	}

	public String getCategoriaProfissional() {
		return categoriaProfissional;
	}

	@Override
	public String toString() {
		return "Investigador [email=" + email + ", nome=" + nome + ", categoriaProfissional=" + categoriaProfissional
				+ "]";
	}
}
