package com.pasteleria.service;

import java.util.List;

import com.pasteleria.bean.NavbarBean;
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
	public List<NavbarBean> getNavbarChildren(int father) {
		return dao.getNavbarChildren(father);
	}
	
	public static void main(String[] args) {
		
		List<NavbarBean> list=new NavbarImplement().getNavbar(1);
		for (NavbarBean temp : list) {
			System.out.println(temp.getIdMenu());
			System.out.println(temp.getDescripcion());
		}
		
	}
}
