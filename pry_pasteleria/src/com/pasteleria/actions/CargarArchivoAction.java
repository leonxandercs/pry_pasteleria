package com.pasteleria.actions;


import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.InputStream;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.io.FileUtils;
import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;
import org.apache.struts2.interceptor.ServletRequestAware;

import com.opensymphony.xwork2.ActionSupport;
import com.pasteleria.util.ByteArrayImage;
import com.pasteleria.util.SaveFile;

@ParentPackage(value="cloudedleopard")
public class CargarArchivoAction extends ActionSupport implements ServletRequestAware{
	private static final long serialVersionUID = 1L;
	
	private File archivo;
	private String archivoContentType;
	private String archivoFileName;
	
	private String imagenProducto;
	private InputStream imagen;
	
	private HttpServletRequest httpServletRequest;
	
	@Action(value="cargar",results={@Result(name=SUCCESS,type="json")})
	public String cargar(){
		
		boolean b=new SaveFile().save(this.archivo,this.archivoFileName);
			
		System.out.println(this.archivoContentType);
		
	
		return SUCCESS;
	}
	
	
	@Action(value = "verImagenProducto",results = {
			@Result(params={"inputName","imagen"},name = "success", type="stream") })
	public String imagenProducto() throws Exception {
		try {
			
			byte[] bytes=new ByteArrayImage().setImageToArrayBytes(this.imagenProducto);
			imagen= new ByteArrayInputStream(bytes);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return SUCCESS;
	}
	
	
	
	@Override
	public void setServletRequest(HttpServletRequest arg0) {
		this.httpServletRequest=arg0;
		
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

	public String getImagenProducto() {
		return imagenProducto;
	}


	public void setImagenProducto(String imagenProducto) {
		this.imagenProducto = imagenProducto;
	}


	public InputStream getImagen() {
		return imagen;
	}


	public void setImagen(InputStream imagen) {
		this.imagen = imagen;
	}


	
	
	
}
