package com.pasteleria.factory;

import com.pasteleria.daos.SqlServerNavbarDAO;
import com.pasteleria.daos.SqlServerStatusDAO;
import com.pasteleria.interfaces.NavbarDAO;
import com.pasteleria.interfaces.StatusDAO;

public class SqlServerFactory extends Factory {

	@Override
	public StatusDAO getStatusDAO() {
		return new SqlServerStatusDAO();
	}

	@Override
	public NavbarDAO getNavbarDAO() {
		return new SqlServerNavbarDAO();
	}

}
