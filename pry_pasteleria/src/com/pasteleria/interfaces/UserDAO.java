package com.pasteleria.interfaces;


import com.pasteleria.bean.User;

public interface UserDAO {

	public User find(String tipo,String login,String pasword);
	
}
