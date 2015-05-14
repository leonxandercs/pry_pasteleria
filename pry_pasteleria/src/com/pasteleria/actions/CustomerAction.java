package com.pasteleria.actions;

import java.util.List;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;

import com.opensymphony.xwork2.ActionSupport;
import com.pasteleria.bean.Customer;
import com.pasteleria.services.ServiceCustomer;

@ParentPackage(value="cloudedleopard")
public class CustomerAction extends ActionSupport {
	private static final long serialVersionUID = 1L;

	private List<Customer> clientes;
	private Customer cliente;
	
	@Action(value="listCustomer",results={@Result(name="success",type="json")})
	public String list(){
		clientes=new ServiceCustomer().list();
		return SUCCESS;
	}

	
	public List<Customer> getClientes() {
		return clientes;
	}

	public void setClientes(List<Customer> clientes) {
		this.clientes = clientes;
	}
	
	public Customer getCliente() {
		return cliente;
	}
	
	public void setCliente(Customer cliente) {
		this.cliente = cliente;
	}
	
	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	
}
