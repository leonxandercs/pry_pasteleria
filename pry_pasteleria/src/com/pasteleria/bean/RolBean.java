package com.pasteleria.bean;

import java.io.Serializable;
/**
 * @author Pantera
 */
@SuppressWarnings("serial")
public class RolBean  implements Serializable{
	
	private int idRol;
	private String descripcion;
	
	public int getIdRol() {
		return idRol;
	}
	public void setIdRol(int idRol) {
		this.idRol = idRol;
	}
	public String getDescripcion() {
		return descripcion;
	}
	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}
	
	

}
