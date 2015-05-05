package com.pasteleria.bean;

import java.io.Serializable;

/**
 * 
 * @author Pantera
 *
 */
@SuppressWarnings("serial")
public class Product implements Serializable {

	private int id;
	private String descripcion;
	private int stock;
	private double precio;
	private String image_resource;
	private int categoria;
	
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getDescripcion() {
		return descripcion;
	}
	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}
	public int getStock() {
		return stock;
	}
	public void setStock(int stock) {
		this.stock = stock;
	}
	public double getPrecio() {
		return precio;
	}
	public void setPrecio(double precio) {
		this.precio = precio;
	}
	public String getImage_resource() {
		return image_resource;
	}
	public void setImage_resource(String image_resource) {
		this.image_resource = image_resource;
	}
	public int getCategoria() {
		return categoria;
	}
	public void setCategoria(int categoria) {
		this.categoria = categoria;
	}

}

