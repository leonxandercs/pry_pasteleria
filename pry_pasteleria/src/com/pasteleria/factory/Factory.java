package com.pasteleria.factory;

import com.pasteleria.interfaces.NavbarDAO;
import com.pasteleria.interfaces.StatusDAO;

public abstract class Factory {
	
	public static final int TIPO_SQLSERVER=0;
	public static final int TIPO_MYSQL=1;
	
	public abstract StatusDAO getStatusDAO();
	public abstract NavbarDAO getNavbarDAO();
	
	
	public static Factory  getTipo(int tipo){
		switch (tipo) {
		case TIPO_SQLSERVER:
			return new SqlServerFactory();
		default:
			return  null;
		}
		
	}
	
}
