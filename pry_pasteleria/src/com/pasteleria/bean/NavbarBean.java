package com.pasteleria.bean;

import java.io.Serializable;
/**  
 * @author Pantera 
 */
@SuppressWarnings("serial")
public class NavbarBean implements Serializable{

private int idmenu;
private String url;
private int padre;
private String perfil;
private String descripcion;
private String icono;

public int getIdmenu() {
	return idmenu;
}
public void setIdmenu(int idmenu) {
	this.idmenu = idmenu;
}
public String getUrl() {
	return url;
}
public void setUrl(String url) {
	this.url = url;
}
public int getPadre() {
	return padre;
}
public void setPadre(int padre) {
	this.padre = padre;
}
public String getPerfil() {
	return perfil;
}
public void setPerfil(String perfil) {
	this.perfil = perfil;
}
public String getDescripcion() {
	return descripcion;
}
public void setDescripcion(String descripcion) {
	this.descripcion = descripcion;
}
public String getIcono() {
	return icono;
}
public void setIcono(String icono) {
	this.icono = icono;
}



}
