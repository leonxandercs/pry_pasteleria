package com.pasteleria.services;

import com.pasteleria.bean.User;
import com.pasteleria.factory.Factory;
import com.pasteleria.interfaces.UserDAO;

public class UserImplement implements UserDAO {
	
	Factory factory=Factory.getTipo(Factory.TIPO_SQLSERVER);
	UserDAO dao=factory.getUserDAO();

	
	@Override
	public User find(String tipo, String login, String pasword) {
		return dao.find(tipo, login, pasword);
	}

}
