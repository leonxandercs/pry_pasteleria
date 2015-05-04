package com.pasteleria.service;

import java.util.List;

import com.pasteleria.bean.NavbarBean;
import com.pasteleria.daos.SqlServerNavbarDAO;
import com.pasteleria.factory.Factory;
import com.pasteleria.interfaces.NavbarDAO;
/**
 * 
 * @author Pantera
 *
 */
public class NavbarImplement implements NavbarDAO{
	
	Factory factory=Factory.getTipo(Factory.TIPO_SQLSERVER);
	NavbarDAO dao=factory.getNavbarDAO();
	
	
	@Override
	public List<NavbarBean> getNavbar(int rol) {
		return dao.getNavbar(rol);
	}

	@Override
	public List<NavbarBean> getNavbarChildren(int rol,int father) {
		return dao.getNavbarChildren(rol,father);
	}
	
	@Override
	public String getNavBarWithRol(int rol) {
		return dao.getNavBarWithRol(rol);
	}

	
}
