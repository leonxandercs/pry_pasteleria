package com.pasteleria.daofactory;

public abstract class Factory {
	
	public static final int TIPO_SQLSERVER=0;
	public static final int TIPO_MYSQL=1;
	
	public abstract StatusDAO getStatusDAO();
	
	
	public static Factory  getTipo(int tipo){
		switch (tipo) {
		case TIPO_SQLSERVER:
			return new SqlServerFactory();
		default:
			return  null;
		}
		
	}
	
}
