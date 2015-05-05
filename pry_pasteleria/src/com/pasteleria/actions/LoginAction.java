package com.pasteleria.actions;

import java.util.Map;







import org.apache.struts2.ServletActionContext;
import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;
import org.apache.struts2.dispatcher.SessionMap;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.pasteleria.services.NavbarImplement;

/**
 * 
 * @author Pantera
 *
 */
@SuppressWarnings("serial")
@ParentPackage(value="cloudedleopard")
public class LoginAction  extends ActionSupport{

	private String navbar;
	private String email;
	private String password;
	public Map<String, Object> session=(Map<String, Object>)ActionContext.getContext().getSession();
	
	@Action(value="ValidateUser",
			results={@Result(name=SUCCESS,type="tiles",location="catalogo"),
			@Result(name=ERROR,type="tiles",location="login")
			})
	public String validateUser(){
		if (email.equals("alex_0446@hotmail.com") &&
				password.equals("123456")) {
			this.navbar=new NavbarImplement().getNavBarWithRol(2);
			session.put("navbar", this.navbar);
			addActionMessage("!"+email+": Bienvenido a Tortas Encantadas !");
			return SUCCESS;
		}else if(email.equals("leonxandercs@gmail.com") &&
				password.equals("123456")){
			this.navbar=new NavbarImplement().getNavBarWithRol(3);;
			session.put("navbar", this.navbar);
			addActionMessage("!"+email+": Bienvenido a Tortas Encantadas !");
			return SUCCESS;
		}else{
			addActionError("Credenciales Incorrectas");
			return ERROR;
		}
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
