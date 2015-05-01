package com.pasteleria.service;

import java.util.List;

import com.pasteleria.bean.StatusBean;
import com.pasteleria.factory.Factory;
import com.pasteleria.interfaces.StatusDAO;
/**
 * 
 * @author Pantera
 *
 */
public class StatusImplement implements StatusDAO{
	
	Factory factory=Factory.getTipo(Factory.TIPO_SQLSERVER);
	StatusDAO dao=factory.getStatusDAO();

	@Override
	public List<StatusBean> list() {
		return dao.list();
	}

}
