package com.pasteleria.actions;

import java.util.List;

import org.apache.struts2.convention.annotation.ParentPackage;

import com.opensymphony.xwork2.ActionSupport;
import com.pasteleria.bean.Order;
import com.pasteleria.bean.OrderDetail;

@ParentPackage(value="cloudedleopard")
public class OrderAction  extends ActionSupport{
	private static final long serialVersionUID = 1L;
	
	private Order order;
	private List<OrderDetail> orderDetail;
	
	
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
