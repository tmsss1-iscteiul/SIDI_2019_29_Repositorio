package pt.iscte.es.objetos;

public class Investigador {

	private String email, nome, categoriaProfissional;

	public Investigador(String email, String nome, String categoriaProfissional) {
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
	
}
