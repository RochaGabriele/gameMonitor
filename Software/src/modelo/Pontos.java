package modelo;

public class Pontos {
	private int id;
	private int valorPontos;
	private int pSet;
	private String tipo;
	private String jogador;
	private int partida;
	private int soma;
	public int getSoma() {
		return soma;
	}
	public void setSoma(int soma) {
		this.soma = soma;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getValorPontos() {
		return valorPontos;
	}
	public void setValorPontos(int valorPontos) {
		this.valorPontos = valorPontos;
	}
	public int getpSet() {
		return pSet;
	}
	public void setpSet(int pSet) {
		this.pSet = pSet;
	}
	public String getTipo() {
		return tipo;
	}
	public void setTipo(String tipo) {
		this.tipo = tipo;
	}
	public String getJogador() {
		return jogador;
	}
	public void setJogador(String jogador) {
		this.jogador = jogador;
	}
	public int getPartida() {
		return partida;
	}
	public void setPartida(int partida) {
		this.partida = partida;
	}
	
}
