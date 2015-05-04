package com.pasteleria.actions;

import java.util.Map;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.pasteleria.service.NavbarImplement;
/**
 * 
 * @author Pantera
 *
 */
@SuppressWarnings("serial")
@ParentPackage(value="cloudedleopard")
public class LinkAction  extends ActionSupport{
	
	private String navbar;
	public Map<String, Object> session=ActionContext.getContext().getSession();
		
	@Action(value="layout",
			results={@Result(name=SUCCESS,type="tiles",location="layout")})
	public String layout(){
		navbar=new NavbarImplement().getNavBarWithRol(1);
		session.put("navbar", this.navbar);
		return SUCCESS;
	}
	
	@Action(value="login",
			results={@Result(name=SUCCESS,type="tiles",location="login")})
	public String login(){
		return SUCCESS;
	}
	
	@Action(value="catalogo",
			results={@Result(name=SUCCESS,type="tiles",location="catalogo")})
	public String catalogo(){
		return SUCCESS;
	}
	
	@Action(value="seguimiento",
			results={@Result(name=SUCCESS,type="tiles",location="seguimiento")})
	public String seguimiento(){
		return SUCCESS;
	}
	
	@Action(value="armar",
			results={@Result(name=SUCCESS,type="tiles",location="armar")})
	public String armar(){
		return SUCCESS;
	}
	
	@Action(value="carrito",
			results={@Result(name=SUCCESS,type="tiles",location="carrito")})
	public String carrito(){
		return SUCCESS;
	}
	
	@Action(value="singup",
			results={@Result(name=SUCCESS,type="tiles",location="singup")})
	public String singup(){
		return SUCCESS;
	}
	
	
	public static String getMenu(){
		return new NavbarImplement().getNavBarWithRol(1);
	}
	
	
	public String getNavbar() {
		return navbar;
	}


	public void setNavbar(String navbar) {
		this.navbar = navbar;
	}

}
