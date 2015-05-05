package com.pasteleria.util;

import com.pasteleria.bean.Client;
import com.pasteleria.bean.Employed;

/**
 * @author Pantera
 */
public class Tester {

	
	
	public static void main(String[] args) {
		
		Client client=new Client();
		client.setNombre("alexander");
		client.setApe_pa("chavez");
		client.setApe_ma("simbron");
		client.setFec_nac("10-10-91");
		client.setFec_registro("01-01-15");
		client.setUsername("achavez");
		client.setPassword("leonxandercs");
		client.setCategoria("Premium");
		
		System.out.println(client.getNombre());
		System.out.println(client.getApe_pa());
		System.out.println(client.getCelular());
		System.out.println(client.getCategoria());
		System.out.println(client.getUsername());
		System.out.println(client.getPassword());
		
		System.out.println("------------------");
		
		Employed emp=new Employed();
		emp.setNombre("Leo Alexander");
		emp.setApe_pa("Chavez");
		emp.setFec_ingreso("27-04-15");
		emp.setSueldo(2000.00);
		
		
		System.out.println(client.getNombre());
		System.out.println(emp.getApe_pa());
		System.out.println(emp.getFec_ingreso());
		System.out.println(emp.getSueldo());
		
	}
	
	
}
