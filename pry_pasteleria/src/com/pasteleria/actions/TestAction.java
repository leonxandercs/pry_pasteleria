package com.pasteleria.actions;

import java.util.List;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Result;

import com.opensymphony.xwork2.ActionSupport;
import com.pasteleria.bean.StatusBean;
import com.pasteleria.factory.Factory;
import com.pasteleria.interfaces.StatusDAO;

@SuppressWarnings("serial")
public class TestAction extends ActionSupport {

	private String mensaje;
	private List<StatusBean> estados;

	@Action(value = "Greet", results = { @Result(name = "success", location = "/test.jsp") })
	public String accion() {
		return SUCCESS;
	}

	@Action(value = "ListStatus", results = { @Result(name = "success", location = "/test.jsp") })
	public String getListStatus() {
		Factory factory = Factory.getTipo(Factory.TIPO_SQLSERVER);
		StatusDAO dao = factory.getStatusDAO();
		estados = dao.list();
		return SUCCESS;
	}

	public String getMensaje() {
		return mensaje;
	}

	public void setMensaje(String mensaje) {
		this.mensaje = mensaje;
	}

	public List<StatusBean> getEstados() {
		return estados;
	}

	public void setEstados(List<StatusBean> estados) {
		this.estados = estados;
	}

}
