package com.pasteleria.util;

import java.util.Iterator;
import java.util.List;

import com.pasteleria.bean.Coverage;
import com.pasteleria.bean.User;
import com.pasteleria.factory.Factory;
import com.pasteleria.interfaces.CoverageDAO;
import com.pasteleria.services.ServiceUser;

public class Test {

	
	public static void main(String[] args) {
	//	User user=new ServiceUser().find("leonxandercs@gmail.com","123456");
		//System.out.println(user.getNombre());
	Factory fabrica=Factory.getTipo(Factory.TIPO_SQLSERVER);
	CoverageDAO dao=fabrica.getCoverageDAO();
	
	List<Coverage>lista=dao.list();
	Iterator<Coverage> it=lista.iterator();
	while (it.hasNext()) {
		Coverage c=it.next();
		System.out.println(c.getDescripcion());
	}
	}
	
}
