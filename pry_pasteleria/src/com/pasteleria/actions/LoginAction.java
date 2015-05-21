package com.pasteleria.actions;


import java.util.Map;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.pasteleria.bean.User;
import com.pasteleria.services.ServiceNavbar;
import com.pasteleria.services.ServiceUser;

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
	private String logged;
	
	public Map<String, Object> session=(Map<String, Object>)ActionContext.getContext().getSession();
	
	@Action(value="ValidateUser",
			results={@Result(name=SUCCESS,type="tiles",location="catalogo"),
			@Result(name=ERROR,type="tiles",location="login"),
			@Result(name="orderPending",type="tiles",location="carrito")
			})
	public String validateUser()
	{
		User user=new ServiceUser().find(email, password);
		
		if (user!=null)
		{
			this.navbar=new ServiceNavbar().getNavBarWithRol(user.getRol().getIdRol());
			session.put("navbar", this.navbar);
			session.put("user", user);
			addActionMessage(user.getNombre());
			
			if (session.get("cart")!=null) {
				return "orderPending";
			}
			
			return SUCCESS;
		}
		else
		{
			addActionError("Credenciales Incorrectas");
			return ERROR;
		}
		
	}
	
	@Action(value="isLogged",results={@Result(name=SUCCESS,type="json")})
	public String isLogged(){
		if (session.get("user")!=null)
			this.logged="true";
		else
			this.logged="false";
			System.out.println(logged);
		return SUCCESS;
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

	public String getLogged() {
		return logged;
	}

	public void setLogged(String logged) {
		this.logged = logged;
	}

	public void setNavbar(String navbar) {
		this.navbar = navbar;
	}

	
	
}
