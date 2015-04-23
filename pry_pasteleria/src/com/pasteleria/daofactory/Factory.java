package com.pasteleria.daofactory;

public abstract class Factory {
	
	public static final int TIPO_MYSQL=0;
	public static final int TIPO_SQL=1;
	
//public abstract UserDAO getUserDAO();
	
	public static Factory  getTipo(int tipo){
		switch (tipo) {
		case TIPO_MYSQL:
			return null;
		default:
			return  null;
		}
		
	}
	
}
