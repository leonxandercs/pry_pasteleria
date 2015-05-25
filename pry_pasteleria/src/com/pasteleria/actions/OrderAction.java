package com.pasteleria.actions;

import java.util.List;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.pasteleria.bean.Order;
import com.pasteleria.bean.OrderDetail;

@ParentPackage(value="cloudedleopard")
public class OrderAction  extends ActionSupport{
	private static final long serialVersionUID = 1L;
	
	private Order order;
	private List<OrderDetail> orderDetail;
	
	@Action(value="registerOrder",results={@Result(name=SUCCESS,type="json")})
	public String registerOrder(){
		
		System.out.println("register Order was invoked");
		
		for (OrderDetail od : orderDetail) {
			System.out.println("ID: "+od.getProducto().getIdProducto()+"-"+"Producto: "+
			od.getProducto().getDescripcion()+"-Agasajado: "+od.getNombre_agasajado());
		}
		
		ActionContext.getContext().getSession().remove("cart");
		return SUCCESS;
	}
	
	
	public Order getOrder() {
		return order;
	}
	public void setOrder(Order order) {
		this.order = order;
	}
	public List<OrderDetail> getOrderDetail() {
		return orderDetail;
	}
	public void setOrderDetail(List<OrderDetail> orderDetail) {
		this.orderDetail = orderDetail;
	}
	
}
