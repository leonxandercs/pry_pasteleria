package com.pasteleria.factory;

import java.io.Reader;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import com.pasteleria.daos.SqlServerNavbarDAO;
import com.pasteleria.daos.SqlServerStatusDAO;
import com.pasteleria.interfaces.NavbarDAO;
import com.pasteleria.interfaces.StatusDAO;
/**
 * 
 * @author Pantera
 *
 */
public class SqlServerFactory extends Factory {
	
	static SqlSessionFactory sqlsessionFactory=null;
	
	static
	{
		try 
		{
			Reader reader = Resources.getResourceAsReader("com/pasteleria/resources/mybatis-config.xml");
			sqlsessionFactory = new SqlSessionFactoryBuilder().build(reader);
		} 
		catch (Exception e) 
		{
			e.printStackTrace();
		}	
	}
	
	/* Constante.de.SqlSessionFactory.para.reutilizarla.en.los.Daos*/
	public static final SqlSessionFactory SQL_SESSION_FACTORY=sqlsessionFactory;


	
	
	@Override
	public StatusDAO getStatusDAO() {
		return new SqlServerStatusDAO();
	}

	@Override
	public NavbarDAO getNavbarDAO() {
		return new SqlServerNavbarDAO();
	}

}
