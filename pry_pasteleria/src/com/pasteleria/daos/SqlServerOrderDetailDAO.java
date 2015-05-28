package com.pasteleria.daos;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.pasteleria.bean.Order;
import com.pasteleria.bean.OrderDetail;
import com.pasteleria.factory.SqlServerFactory;
import com.pasteleria.interfaces.OrderDetailDAO;

public class SqlServerOrderDetailDAO implements OrderDetailDAO {

	SqlSessionFactory SQL_SESSION_FACTORY=SqlServerFactory.SQL_SESSION_FACTORY;

	@Override
	public List<OrderDetail> list() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public OrderDetail find(OrderDetail bean) {
		// TODO Auto-generated method stub
		return null;
	}
		
	@Override
	public int create(OrderDetail bean) {
		int salida=0;
		SqlSession session=SQL_SESSION_FACTORY.openSession();
		try {
			salida=session.insert("orderDetailxml.sql_insert",bean);
			session.commit();
			System.out.println(salida);
		} catch (Exception e) {
			session.rollback();
			e.printStackTrace();
		}finally{
			session.close();
		}
		return salida;
	}
	
	
	public int createfromList(String idPedido,List<OrderDetail> details) {
		int salida=0;
		SqlSession session=SQL_SESSION_FACTORY.openSession();
		try {
			
				System.out.println(details.size());
				
				if (details!=null && details.size()>0) {
					
					for (OrderDetail obj :details) {
						
						obj.setPedidoCabe(new Order(idPedido));
						obj.setPrecioUnidad(obj.getProducto().getPrecio());
						salida=session.insert("orderDetailxml.sql_insert",obj);
						
						if(salida<=0){
							session.rollback();
							System.out.println("error en orderDetail");
							return -1;
						}
					}
					
					session.commit();
					
				}else{
					System.out.println("Lista vac�a");
					return 0;
				}
			System.out.println(salida);
			
		} catch (Exception e) {
			session.rollback();
			e.printStackTrace();
		}finally{
			session.close();
		}
		return salida;
	}
	
	
	@Override
	public int update(OrderDetail bean) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int delete(OrderDetail bean) {
		// TODO Auto-generated method stub
		return 0;
	}

}
