package com.pasteleria.bean;

import java.io.Serializable;

@SuppressWarnings("serial")
public class Employed extends User implements Serializable{

	private String fec_ingreso;
	private String fec_salida;
	private Double sueldo;
	
	
	public Employed() {
		super();
	}
	
	public String getFec_ingreso() {
		return fec_ingreso;
	}
	public void setFec_ingreso(String fec_ingreso) {
		this.fec_ingreso = fec_ingreso;
	}
	public String getFec_salida() {
		return fec_salida;
	}
	public void setFec_salida(String fec_salida) {
		this.fec_salida = fec_salida;
	}
	public Double getSueldo() {
		return sueldo;
	}
	public void setSueldo(Double sueldo) {
		this.sueldo = sueldo;
	}
	
	
	
}
