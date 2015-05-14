package com.pasteleria.actions;

import java.util.List;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;

import com.opensymphony.xwork2.ActionSupport;
import com.pasteleria.bean.Rol;
import com.pasteleria.services.HasServiceRol;

@ParentPackage(value="cloudedleopard")
public class RolAction extends ActionSupport{
	private static final long serialVersionUID = 1L;

	private List<Rol> roles;
	private Rol rol;
	
	@Action(value="listRol",results={@Result(name="success",type="json")})
	public String list(){
		roles=new HasServiceRol().list();
		return SUCCESS;
	}
	
	public List<Rol> getRoles() {
		return roles;
	}

	public void setRoles(List<Rol> roles) {
		this.roles = roles;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	public Rol getRol() {
		return rol;
	}

	public void setRol(Rol rol) {
		this.rol = rol;
	}	
	
}
