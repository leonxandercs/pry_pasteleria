package com.pasteleria.daos;

import java.io.Reader;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import sun.reflect.ReflectionFactory.GetReflectionFactoryAction;

import com.pasteleria.bean.StatusBean;
import com.pasteleria.interfaces.StatusDAO;

public class SqlServerStatusDAO implements StatusDAO {
	
	SqlSessionFactory FACTORY=null;
	
	{
		try 
		{
			Reader reader=Resources.getResourceAsReader("mybatis-config.xml");
			FACTORY=new SqlSessionFactoryBuilder().build(reader);
		} 
		catch (Exception e) {
			e.printStackTrace();
		}
		
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<StatusBean> list() {
		
		SqlSession session=FACTORY.openSession();
		List<StatusBean> list=null;
		try 
		{
			list=(List<StatusBean>)session.selectList("statusxml.sql_select");
		} 
		catch (Exception e) 
		{
			e.printStackTrace();
		}
		finally
		{
			session.close();
		}
		return list;
	}

}
