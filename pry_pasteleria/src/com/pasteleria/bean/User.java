package com.pasteleria.bean;

import java.io.Serializable;
/**
 * @author Pantera
 */
@SuppressWarnings("serial")
public class User implements Serializable{
	
	private int id;
	private String nombre;
	private String ape_pa;
	private String ape_ma;
	private String fec_nac;
	private String dni;
	private String sexo;
	private String estado_civil;
	private String telefono;
	private String celular;
	private String email;
	private String username;
	private String password;
	private int rol;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getNombre() {
		return nombre;
	}
	public void setNombre(String nombre) {
		this.nombre = nombre;
	}
	public String getApe_pa() {
		return ape_pa;
	}
	public void setApe_pa(String ape_pa) {
		this.ape_pa = ape_pa;
	}
	public String getApe_ma() {
		return ape_ma;
	}
	public void setApe_ma(String ape_ma) {
		this.ape_ma = ape_ma;
	}
	public String getFec_nac() {
		return fec_nac;
	}
	public void setFec_nac(String fec_nac) {
		this.fec_nac = fec_nac;
	}
	public String getDni() {
		return dni;
	}
	public void setDni(String dni) {
		this.dni = dni;
	}
	public String getSexo() {
		return sexo;
	}
	public void setSexo(String sexo) {
		this.sexo = sexo;
	}
	public String getEstado_civil() {
		return estado_civil;
	}
	public void setEstado_civil(String estado_civil) {
		this.estado_civil = estado_civil;
	}
	public String getTelefono() {
		return telefono;
	}
	public void setTelefono(String telefono) {
		this.telefono = telefono;
	}
	public String getCelular() {
		return celular;
	}
	public void setCelular(String celular) {
		this.celular = celular;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public int getRol() {
		return rol;
	}
	public void setRol(int rol) {
		this.rol = rol;
	}
		

}
