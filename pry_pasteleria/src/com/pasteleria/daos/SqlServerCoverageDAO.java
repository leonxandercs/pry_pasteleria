package com.pasteleria.daos;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.pasteleria.bean.Coverage;
import com.pasteleria.factory.SqlServerFactory;
import com.pasteleria.interfaces.CoverageDAO;

public class SqlServerCoverageDAO implements CoverageDAO {
	
	SqlSessionFactory SQL_SESSION_FACTORY=SqlServerFactory.SQL_SESSION_FACTORY;

	@SuppressWarnings("unchecked")
	@Override
	public List<Coverage> list() {
		SqlSession session=SQL_SESSION_FACTORY.openSession();
		List<Coverage> list=null;
		try {
			list=session.selectList("coveragexml.sql_select");
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			session.close();
		}	
		return list;
	}

	@Override
	public Coverage find(Coverage bean) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int create(Coverage bean) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int update(Coverage bean) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int delete(Coverage bean) {
		// TODO Auto-generated method stub
		return 0;
	}

}
