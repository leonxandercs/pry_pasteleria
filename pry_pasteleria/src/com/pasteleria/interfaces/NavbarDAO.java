package com.pasteleria.interfaces;

import java.util.List;

import com.pasteleria.bean.NavbarBean;

/**
 * 
 * @author Pantera
 *
 */
public interface NavbarDAO {

	List<NavbarBean> getNavbar(int rol);
	List<NavbarBean> getNavbarChildren(int rol,int father);
	String getNavBarWithRol(int rol);
	
}
