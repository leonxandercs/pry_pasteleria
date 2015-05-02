package com.pasteleria.daos;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

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

	@SuppressWarnings("unchecked")
	@Override
	public List<NavbarBean> getNavbarChildren(int rol,int father) {
		
		SqlSession session=FACTORY.openSession();
		List<NavbarBean> list=null;
		try {
			Map<String, Integer> map=new HashMap<String,Integer>();
			map.put("rol", rol);
			map.put("father",father);
			
			list=session.selectList("navbarxml.sql_select_children",map);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return list;
	}
	
	@Override
	public String getNavBarWithRol(int rol){
		StringBuilder sb=new StringBuilder("<ul>");
		
		for (NavbarBean menuBean :getNavbar(rol)) {
			
			if (menuBean.getUrl().equals("#") && menuBean.getPadre()==0) {
				sb.append("<li>"+menuBean.getDescripcion()+"</li>");
				List<NavbarBean> submenu=getNavbarChildren(rol,menuBean.getIdMenu());
				if (submenu.size()>0) {
					sb.append("<ul>");
					for (NavbarBean menuBean2 : submenu) {
						sb.append("<li><a href="+menuBean2.getUrl()+">"+menuBean2.getDescripcion()+"</a></li>");
					}
					sb.append("</ul>");
				}
			}else {
				sb.append("<li><a href="+menuBean.getUrl()+">"+menuBean.getDescripcion()+"</a></li>");
			}
			
		}
		sb.append("</ul>");		
		return String.valueOf(sb);
	}
}
