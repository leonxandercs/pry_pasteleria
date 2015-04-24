package com.pasteleria.actions;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Result;

import com.opensymphony.xwork2.ActionSupport;

@SuppressWarnings("serial")
public class TestAction extends ActionSupport{

	private String mensaje;
	
	@Action(value="Greet",
			results={@Result(name="success",location="/index.jsp")})
	public String accion(){
		this.mensaje="Hellow World";
		return SUCCESS;
	}

	public String getMensaje() {
		return mensaje;
	}

	public void setMensaje(String mensaje) {
		this.mensaje = mensaje;
	}
	
}
