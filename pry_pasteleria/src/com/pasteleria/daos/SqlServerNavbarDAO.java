package com.pasteleria.daos;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.pasteleria.bean.NavbarBean;
import com.pasteleria.factory.SqlServerFactory;
import com.pasteleria.interfaces.NavbarDAO;
/**
 * 
 * @author Pantera
 *
 */
public class SqlServerNavbarDAO implements NavbarDAO {
	
	SqlSession session=SqlServerFactory.SQL_SESSION_FACTORY.openSession();

	@Override
	public List<NavbarBean> getNavbar(int rol) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<NavbarBean> getNavbarChildren(int father) {
		// TODO Auto-generated method stub
		return null;
	}

}
