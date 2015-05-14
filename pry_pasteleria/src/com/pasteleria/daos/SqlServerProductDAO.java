package com.pasteleria.daos;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.pasteleria.bean.Product;
import com.pasteleria.factory.SqlServerFactory;
import com.pasteleria.interfaces.ProductDAO;

public class SqlServerProductDAO implements ProductDAO {

	SqlSessionFactory SQL_SESSION_FACTORY=SqlServerFactory.SQL_SESSION_FACTORY;
	
	@SuppressWarnings("unchecked")
	@Override
	public List<Product> list() {
		SqlSession session=SQL_SESSION_FACTORY.openSession();
		List<Product> list=null;
		try {
			list=session.selectList("productxml.sql_select");
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			session.close();
		}	
		return list;
	}

	@Override
	public Product find(Product bean) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int create(Product bean) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int update(Product bean) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int delete(Product bean) {
		// TODO Auto-generated method stub
		return 0;
	}

}
