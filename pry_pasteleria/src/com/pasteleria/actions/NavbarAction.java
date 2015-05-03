package com.pasteleria.actions;

import com.opensymphony.xwork2.ActionSupport;
import com.pasteleria.service.NavbarImplement;

@SuppressWarnings("serial")
public class NavbarAction  extends ActionSupport{
	
	private String navbar;

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
