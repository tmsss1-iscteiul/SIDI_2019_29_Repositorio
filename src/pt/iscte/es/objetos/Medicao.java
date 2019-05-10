package pt.iscte.es.objetos;

public class Medicao {
	
	private int idCultura, idVariavel, numeroMedicao;
	private double valorMedicao;
	private String data;
	
	public Medicao(int numeroMedicao, int idCultura, int idVariavel, double valorMedicao, String data) {
		this.idCultura = idCultura;
		this.idVariavel = idVariavel;
		this.numeroMedicao = numeroMedicao;
		this.valorMedicao = valorMedicao;
		this.data = data;
	}

	public int getIdCultura() {
		return idCultura;
	}

	public int getIdVariavel() {
		return idVariavel;
	}

	public int getNumeroMedicao() {
		return numeroMedicao;
	}

	public double getValorMedicao() {
		return valorMedicao;
	}

	public String getData() {
		return data;
	}
}
