package com.pasteleria.bean;

import java.io.Serializable;

/**
 * 
 * @author Pantera
 *
 */

@SuppressWarnings("serial")
public class OrderDetail implements Serializable{
	
	private int idPedidoCabe;
	private Product producto;
	private int cantidad;
	private String dedicatoria;
	private String nombre_agasajado;
	private String fec_requerimiento;
	
	//Sobrescribimos el Metodo Equals
	@Override
	public boolean equals(Object obj) {
		return obj instanceof OrderDetail && this.producto.getIdProducto()==
		 ((OrderDetail)obj).getProducto().getIdProducto();
	}
	
	public double getSubTotal(){
		return this.cantidad*this.producto.getPrecio();
	}
	
	public int getIdPedidoCabe() {
		return idPedidoCabe;
	}
	public void setIdPedidoCabe(int idPedidoCabe) {
		this.idPedidoCabe = idPedidoCabe;
	}
	public Product getProducto() {
		return producto;
	}
	public void setProducto(Product producto) {
		this.producto = producto;
	}
	public int getCantidad() {
		return cantidad;
	}
	public void setCantidad(int cantidad) {
		this.cantidad = cantidad;
	}
	public String getDedicatoria() {
		return dedicatoria;
	}
	public void setDedicatoria(String dedicatoria) {
		this.dedicatoria = dedicatoria;
	}
	public String getNombre_agasajado() {
		return nombre_agasajado;
	}
	public void setNombre_agasajado(String nombre_agasajado) {
		this.nombre_agasajado = nombre_agasajado;
	}
	public String getFec_requerimiento() {
		return fec_requerimiento;
	}
	public void setFec_requerimiento(String fec_requerimiento) {
		this.fec_requerimiento = fec_requerimiento;
	}


}
