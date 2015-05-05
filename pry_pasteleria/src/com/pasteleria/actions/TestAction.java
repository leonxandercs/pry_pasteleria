package com.pasteleria.actions;

import java.util.List;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Result;

import com.opensymphony.xwork2.ActionSupport;
import com.pasteleria.bean.Status;
import com.pasteleria.services.StatusImplement;

@SuppressWarnings("serial")
public class TestAction extends ActionSupport {

	private String mensaje;
	private List<Status> estados;

	@Action(value = "ListStatus", results = { @Result(name = "success", location = "/dashboard/test.jsp") })
	public String getListStatus() {
		StatusImplement statusImplement=new StatusImplement();
		estados =statusImplement.list();
		mensaje="Hellow Panther";
		return SUCCESS;
	}

	public String getMensaje() {
		return mensaje;
	}

	public void setMensaje(String mensaje) {
		this.mensaje = mensaje;
	}

	public List<Status> getEstados() {
		return estados;
	}

	public void setEstados(List<Status> estados) {
		this.estados = estados;
	}

}
