package com.pasteleria.bean;

import java.io.Serializable;
/**
 * @author Pantera
 */
@SuppressWarnings("serial")
public class ClientBean  extends UserBean  implements Serializable {

	private String fec_registro;
	private String categoria;
	
	public ClientBean() {
		super();
	}

	public String getFec_registro() {
		return fec_registro;
	}

	public void setFec_registro(String fec_registro) {
		this.fec_registro = fec_registro;
	}

	public String getCategoria() {
		return categoria;
	}

	public void setCategoria(String categoria) {
		this.categoria = categoria;
	}
		
	
}
