package com.pasteleria.actions;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Result;

import com.opensymphony.xwork2.ActionSupport;
import com.pasteleria.service.NavbarImplement;

@SuppressWarnings("serial")
public class NavbarAction  extends ActionSupport{
	
	private String navbar;

	
	@Action(value="Navbar",results={@Result(name="success",location="/templates/menu.jsp")})
	public String getMenuParent() throws Exception {
		navbar=new NavbarImplement().getNavBarWithRol(1);
		return SUCCESS;
	}
	
	public String menu(){
		navbar=new NavbarImplement().getNavBarWithRol(1);
		return SUCCESS;
	}
	
	public String getNavbar() {
		return navbar;
	}


	public void setNavbar(String navbar) {
		this.navbar = navbar;
	}

}
