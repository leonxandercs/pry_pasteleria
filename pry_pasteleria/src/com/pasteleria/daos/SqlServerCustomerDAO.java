package com.pasteleria.daos;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.pasteleria.bean.Customer;
import com.pasteleria.factory.SqlServerFactory;
import com.pasteleria.interfaces.CustomerDAO;

public class SqlServerCustomerDAO implements CustomerDAO {
	
	SqlSessionFactory SQL_SESSION_FACTORY=SqlServerFactory.SQL_SESSION_FACTORY;

	@SuppressWarnings("unchecked")
	@Override
	public List<Customer> list() {
		SqlSession session=SQL_SESSION_FACTORY.openSession();
		List<Customer> list=null;
		try {
			list=session.selectList("customerxml.sql_select");
		} catch (Exception e) {
			e.printStackTrace();
		}	
		return list;
	}

	@Override
	public Customer find(Customer bean) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int create(Customer bean) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int update(Customer bean) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int delete(Customer bean) {
		// TODO Auto-generated method stub
		return 0;
	}

}
