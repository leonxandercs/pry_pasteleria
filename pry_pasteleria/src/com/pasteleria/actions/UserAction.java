package com.pasteleria.actions;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;

import com.opensymphony.xwork2.ActionSupport;

/**
 * 
 * @author Pantera
 *
 */
@SuppressWarnings("serial")
@ParentPackage(value="cloudedleopard")
public class UserAction  extends ActionSupport{
	
	private String navbar=LinkAction.getMenu();
	private String email;
	private String password;
	
	@Action(value="ValidateUser",
			results={@Result(name=SUCCESS,type="tiles",location="catalogo"),
			@Result(name=ERROR,type="tiles",location="login")
			})
	public String validateUser(){
		if (email.equals("alex_0446@hotmail.com") &&
				password.equals("123456")) {
			addActionMessage("! Bienvenido a Tortas Encantadas !");
			return SUCCESS;
		}
		addActionError("Credenciales Incorrectas");
		return ERROR;
	}
	
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}

	public String getNavbar() {
		return navbar;
	}

	public void setNavbar(String navbar) {
		this.navbar = navbar;
	}
	
	
}
