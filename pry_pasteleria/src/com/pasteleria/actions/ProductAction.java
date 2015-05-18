package com.pasteleria.actions;

import java.io.File;
import java.util.List;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;

import com.opensymphony.xwork2.ActionSupport;
import com.pasteleria.bean.Product;
import com.pasteleria.services.ServiceProduct;
import com.pasteleria.util.SaveFile;

@ParentPackage(value="cloudedleopard")
public class ProductAction extends ActionSupport {
	private static final long serialVersionUID = 1L;

	private List<Product> productos;
	private Product producto;
	private File archivo;
	private String archivoContentType;
	private String archivoFileName;
	
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
	
	@Action(value="saveProduct",results={@Result(name="success",type="redirectAction",location="mproduct")})
	public String save(){
		if (producto.getIdProducto()==0)
			new ServiceProduct().create(producto);
		else
			new ServiceProduct().update(producto);
		
		return SUCCESS;
	}
	
	
	@Action(value="cargarProduct",results={@Result(name=SUCCESS,type="redirectAction",location="mproduct")})
	public String cargar(){
		
		boolean uploaded=new SaveFile().save(this.archivo,this.archivoFileName);
		this.producto.setImage_resource(archivoFileName);
		
		if (producto.getIdProducto()==0)
			new ServiceProduct().create(this.producto);
		else
			new ServiceProduct().update(this.producto);
		
		
		System.out.println("uploaded: "+uploaded);
		System.out.println(this.archivoContentType);
		
		return SUCCESS;
	}
	
	
	@Action(value="deleteProduct",results={@Result(name="success",type="redirectAction",location="mproduct")})
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

	public File getArchivo() {
		return archivo;
	}

	public void setArchivo(File archivo) {
		this.archivo = archivo;
	}

	public String getArchivoContentType() {
		return archivoContentType;
	}

	public void setArchivoContentType(String archivoContentType) {
		this.archivoContentType = archivoContentType;
	}

	public String getArchivoFileName() {
		return archivoFileName;
	}

	public void setArchivoFileName(String archivoFileName) {
		this.archivoFileName = archivoFileName;
	}

	
}
