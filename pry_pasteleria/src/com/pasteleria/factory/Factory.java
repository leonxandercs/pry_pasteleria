package com.pasteleria.factory;

import com.pasteleria.interfaces.CategoryDAO;
import com.pasteleria.interfaces.CoverageDAO;
import com.pasteleria.interfaces.DoughDAO;
import com.pasteleria.interfaces.FillingDAO;
import com.pasteleria.interfaces.NavbarDAO;
import com.pasteleria.interfaces.ProductDAO;
import com.pasteleria.interfaces.StatusDAO;
import com.pasteleria.interfaces.UserDAO;

public abstract class Factory {
	
	public static final int TIPO_SQLSERVER=0;
	public static final int TIPO_MYSQL=1;
	
	public abstract StatusDAO getStatusDAO();
	public abstract NavbarDAO getNavbarDAO();
	public abstract UserDAO getUserDAO();
	public abstract CategoryDAO getCategoryDAO();
	public abstract CoverageDAO  getCoverageDAO();
	public abstract DoughDAO getDoughDAO();
	public abstract FillingDAO getFillingDAO();
	public abstract ProductDAO getProductDAO();
	
	
	public static Factory  getTipo(int tipo){
		switch (tipo) {
		case TIPO_SQLSERVER:
			return new SqlServerFactory();
		default:
			return  null;
		}
		
	}
	
}
