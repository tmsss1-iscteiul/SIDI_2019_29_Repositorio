package pt.iscte.es.objetos;

/**
 * 
 * @author 
 *
 */
public class Medicao {
	
	private int idCultura, idVariavel, numeroMedicao;
	private double valorMedicao;
	private String data;
	
	/**
	 * Construtor
	 * @param numeroMedicao
	 * @param idCultura
	 * @param idVariavel
	 * @param valorMedicao
	 * @param data
	 */
	public Medicao(int numeroMedicao, int idCultura, int idVariavel, double valorMedicao, String data) {
		this.idCultura = idCultura;
		this.idVariavel = idVariavel;
		this.numeroMedicao = numeroMedicao;
		this.valorMedicao = valorMedicao;
		this.data = data;
	}

	/**
	 * 
	 * @return
	 */
	public int getIdCultura() {
		return idCultura;
	}

	/**
	 * 
	 * @return
	 */
	public int getIdVariavel() {
		return idVariavel;
	}

	/**
	 * 
	 * @return
	 */
	public int getNumeroMedicao() {
		return numeroMedicao;
	}

	/**
	 * 
	 * @return
	 */
	public double getValorMedicao() {
		return valorMedicao;
	}

	/**
	 * 
	 * @return
	 */
	public String getData() {
		return data;
	}
}
