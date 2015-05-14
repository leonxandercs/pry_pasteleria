package com.pasteleria.util;

import java.util.Iterator;
import java.util.List;

import com.pasteleria.bean.Category;
import com.pasteleria.bean.Coverage;
import com.pasteleria.bean.Dough;
import com.pasteleria.bean.Filling;
import com.pasteleria.bean.User;
import com.pasteleria.services.ServiceCategory;
import com.pasteleria.services.ServiceCoverage;
import com.pasteleria.services.ServiceDough;
import com.pasteleria.services.ServiceFilling;
import com.pasteleria.services.ServiceUser;

public class Test {

	
	public static void main(String[] args) {
	User user=new ServiceUser().find("leonxandercs@gmail.com","123456");
	System.out.println(user.getNombre());
	System.out.println("-------------------------------");
	List<Category>lista=new ServiceCategory().list();
	Iterator<Category> it=lista.iterator();
	long inicio=System.currentTimeMillis();
	while (it.hasNext()) {
		Category c=it.next();
		System.out.println(c.getDescripcion());
	}
	System.out.println((System.currentTimeMillis()-inicio));	
	
	System.out.println("-------------------------------");
	List<Coverage>lista1=new ServiceCoverage().list();
	Iterator<Coverage> it0=lista1.iterator();
	while (it0.hasNext()) {
		Coverage c=it0.next();
		System.out.println(c.getDescripcion());
	}
	System.out.println((System.currentTimeMillis()-inicio));	
	
	System.out.println("-------------------------------");
	List<Dough>lista2=new ServiceDough().list();
	Iterator<Dough> it1=lista2.iterator();
	while (it1.hasNext()) {
		Dough c=it1.next();
		System.out.println(c.getDescripcion());
	}
	System.out.println((System.currentTimeMillis()-inicio));
	
	
	System.out.println("-------------------------------");
	List<Filling>lista3=new ServiceFilling().list();
	Iterator<Filling> it3=lista3.iterator();
	while (it3.hasNext()) {
		Filling c=it3.next();
		System.out.println(c.getDescripcion());
	}
	System.out.println((System.currentTimeMillis()-inicio));
	
	
	
	}


	
}
