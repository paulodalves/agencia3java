package com.destinocerto.model;

public class Viaja {

	private int idViagem;
	private String dataPartida;
	private String dataRetorno;
	private String transporte;
	
	private Usuario usuario;
	private Destino destino;
	
	public int getIdViagem() {
		return idViagem;
	}
	public void setIdViagem(int idViagem) {
		this.idViagem = idViagem;
	}
	public String getDataPartida() {
		return dataPartida;
	}
	public void setDataPartida(String dataPartida) {
		this.dataPartida = dataPartida;
	}
	public String getDataRetorno() {
		return dataRetorno;
	}
	public void setDataRetorno(String dataRetorno) {
		this.dataRetorno = dataRetorno;
	}
	public String getTransporte() {
		return transporte;
	}
	public void setTransporte(String transporte) {
		this.transporte = transporte;
	}
	public Usuario getUsuario() {
		return usuario;
	}
	public void setUsuario(Usuario usuario) {
		this.usuario = usuario;
	}
	public Destino getDestino() {
		return destino;
	}
	public void setDestino(Destino destino) {
		this.destino = destino;
	}
	
	
	
}
