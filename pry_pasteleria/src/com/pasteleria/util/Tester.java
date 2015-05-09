package com.pasteleria.util;

import com.pasteleria.bean.User;
import com.pasteleria.services.UserImplement;

/**
 * @author Pantera
 */
public class Tester {

	
	
	public static void main(String[] args) {
		UserImplement i=new UserImplement();
		User o=i.find("E","leonxandercs@gmail.com", "123456");
		System.out.println(o.getIdUsuario());
		System.out.println(o.getNombre());
		System.out.println(o.getRol().getDescripcion());
		System.out.println(o.getRol().getIdRol());

		
	}
	
	
}
