package com.pasteleria.bean;

import java.io.Serializable;
/**
 * @author Pantera
 */
@SuppressWarnings("serial")
public class Customer  extends User  implements Serializable {

	private String fecha_registro;
	//private String categoria;
	
	public Customer() {
		super();
	}

	public String getFecha_registro() {
		return fecha_registro;
	}

	public void setFecha_registro(String fecha_registro) {
		this.fecha_registro = fecha_registro;
	}
	
}
