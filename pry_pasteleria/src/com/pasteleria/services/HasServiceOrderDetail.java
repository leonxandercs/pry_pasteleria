package com.pasteleria.services;

import java.util.List;

import com.pasteleria.bean.OrderDetail;

public class HasServiceOrderDetail implements ServiceOrderDetail {

	@Override
	public List<OrderDetail> list() {
		return dao.list();
	}

	@Override
	public OrderDetail find(OrderDetail bean) {
		return dao.find(bean);
	}

	@Override
	public int create(OrderDetail bean) {
		return dao.create(bean);
	}

	@Override
	public int update(OrderDetail bean) {
		return dao.update(bean);
	}

	@Override
	public int delete(OrderDetail bean) {
		return dao.delete(bean);
	}

	@Override
	public int createfromList(String idPedido, List<OrderDetail> details) {
		return dao.createfromList(idPedido, details);
	}

}
