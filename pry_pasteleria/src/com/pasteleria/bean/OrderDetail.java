package com.pasteleria.bean;

import java.io.Serializable;

/**
 * 
 * @author Pantera
 *
 */

@SuppressWarnings("serial")
public class OrderDetail implements Serializable{
	
	private int idpedido;
	private int idproducto;
	private int cantidad;
	private String dedicatoria;
	private String nombre_agasajado;
	private String fec_requerimiento;
	public int getIdpedido() {
		return idpedido;
	}
	public void setIdpedido(int idpedido) {
		this.idpedido = idpedido;
	}
	public int getIdproducto() {
		return idproducto;
	}
	public void setIdproducto(int idproducto) {
		this.idproducto = idproducto;
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
