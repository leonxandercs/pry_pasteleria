package com.pasteleria.bean;

import java.io.Serializable;
import java.util.List;

/**
 * 
 * @author Pantera
 *
 */
@SuppressWarnings("serial")
public class Order implements Serializable {
	
	private int idPedidoCabe;
	private List<OrderDetail> detallePedido;
	private String fecha_pedido;
	private Customer cliente;
	private Status estado;
	
	public int getIdPedidoCabe() {
		return idPedidoCabe;
	}
	public void setIdPedidoCabe(int idPedidoCabe) {
		this.idPedidoCabe = idPedidoCabe;
	}
	public List<OrderDetail> getDetallePedido() {
		return detallePedido;
	}
	public void setDetallePedido(List<OrderDetail> detallePedido) {
		this.detallePedido = detallePedido;
	}
	public String getFecha_pedido() {
		return fecha_pedido;
	}
	public void setFecha_pedido(String fecha_pedido) {
		this.fecha_pedido = fecha_pedido;
	}
	public Customer getCliente() {
		return cliente;
	}
	public void setCliente(Customer cliente) {
		this.cliente = cliente;
	}
	public Status getEstado() {
		return estado;
	}
	public void setEstado(Status estado) {
		this.estado = estado;
	}
	
	
	
}
