package com.pasteleria.daofactory;

public class SqlServerFactory extends Factory {

	@Override
	public StatusDAO getStatusDAO() {
		return new SqlServerStatusDAO();
	}

}
