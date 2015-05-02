package com.pasteleria.daos;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.pasteleria.bean.NavbarBean;
import com.pasteleria.factory.SqlServerFactory;
import com.pasteleria.interfaces.NavbarDAO;
/**
 * 
 * @author Pantera
 *
 */
public class SqlServerNavbarDAO implements NavbarDAO {
	
	SqlSessionFactory FACTORY=SqlServerFactory.SQL_SESSION_FACTORY;


	@SuppressWarnings("unchecked")
	@Override
	public List<NavbarBean> getNavbar(int rol) {
		
		SqlSession session=FACTORY.openSession();
		List<NavbarBean> list=null;
		try {
			list=session.selectList("navbarxml.sql_select_fathers",rol);
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			session.close();
		}
		return list;
	}

	@Override
	public List<NavbarBean> getNavbarChildren(int father) {
		// TODO Auto-generated method stub
		return null;
	}

}
