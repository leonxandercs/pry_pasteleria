package com.pasteleria.bean;

import java.io.Serializable;

/**
 * 
 * @author Pantera
 *
 */
@SuppressWarnings("serial")
public class OrderBean implements Serializable {
	
	private int id;
	private String fecha_pedido;
	private int cliente;
	private int estado;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getFecha_pedido() {
		return fecha_pedido;
	}
	public void setFecha_pedido(String fecha_pedido) {
		this.fecha_pedido = fecha_pedido;
	}
	public int getCliente() {
		return cliente;
	}
	public void setCliente(int cliente) {
		this.cliente = cliente;
	}
	public int getEstado() {
		return estado;
	}
	public void setEstado(int estado) {
		this.estado = estado;
	}
	
}
