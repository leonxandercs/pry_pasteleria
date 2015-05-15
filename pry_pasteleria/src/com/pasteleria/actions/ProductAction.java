package com.pasteleria.actions;

import java.util.List;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;

import com.opensymphony.xwork2.ActionSupport;
import com.pasteleria.bean.Product;
import com.pasteleria.services.ServiceProduct;

@ParentPackage(value="cloudedleopard")
public class ProductAction extends ActionSupport {
	private static final long serialVersionUID = 1L;

	private List<Product> productos;
	private Product producto;
	
	@Action(value="listProduct",results={@Result(name="success",type="json")})
	public String list(){
		productos=new ServiceProduct().list();
		return SUCCESS;
	}
	
	@Action(value="findProduct",results={@Result(name="success",type="json")})
	public String find(){
		producto=new ServiceProduct().find(producto);
		return SUCCESS;
	}
	
	@Action(value="saveProduct",results={@Result(name="success",type="json")})
	public String save(){
		if (producto.getIdProducto()==0)
			new ServiceProduct().create(producto);
		else
			new ServiceProduct().update(producto);
		
		return SUCCESS;
	}
	
	@Action(value="deleteProduct",results={@Result(name="success",type="json")})
	public String delete(){
		new ServiceProduct().delete(producto);
		return SUCCESS;
	}

	public List<Product> getProductos() {
		return productos;
	}

	public void setProductos(List<Product> productos) {
		this.productos = productos;
	}

	public Product getProducto() {
		return producto;
	}

	public void setProducto(Product producto) {
		this.producto = producto;
	}


}
