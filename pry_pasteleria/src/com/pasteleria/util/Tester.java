package com.pasteleria.util;

import com.pasteleria.bean.Client;
import com.pasteleria.bean.Employed;
import com.pasteleria.bean.User;
import com.pasteleria.services.ServiceUser;

/**
 * @author Pantera
 */
public class Tester {

	
	
	public static void main(String[] args) {
		ServiceUser i=new ServiceUser();
		Client o=(Client) i.find("janiszapataq@gmail.com", "123456");
		if (o!=null) {
			System.out.println(o.getIdUsuario());
			System.out.println(o.getNombre());
			System.out.println(o.getRol().getIdRol());
			System.out.println(o.getRol().getDescripcion());
			//System.out.println(o.getFecha_registro());
			//System.out.println(o.getFecha_ingreso());
		}else
		System.out.println("Usuario no encontrado");

		
	}
	
	
}
