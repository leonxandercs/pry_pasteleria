package com.pasteleria.actions;

import java.io.BufferedReader;
import java.io.File;




import java.io.FileReader;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.io.FileUtils;
import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;
import org.apache.struts2.interceptor.ServletRequestAware;

import com.opensymphony.xwork2.ActionSupport;

@ParentPackage(value="cloudedleopard")
public class CargarArchivoAction extends ActionSupport implements ServletRequestAware{
	
	private File archivo;
	private String archivoContentType;
	private String archivoFileName;
	private String datos="";
	private HttpServletRequest httpServletRequest;
	
	@Action(value="cargar",results={@Result(name=SUCCESS,type="json")})
	public String cargar(){
		
		try {
			String ruta=httpServletRequest.getSession().getServletContext().getRealPath("/img/");
			File fichero=new File(ruta);
			File path=new File("C:/Files/");
			
			
			if (fichero.exists()==false) {
				fichero = new File(ruta);
				fichero.mkdirs();
				fichero=new File(ruta);
           	 	File file=new File(fichero,this.archivoFileName);
           	 	FileUtils.copyFile(this.archivo,file);
			}
			else{
				File file = new File(fichero,this.archivoFileName);
				FileUtils.copyFile(this.archivo,file);
			}
			
			if (path.exists()==false) {
				path = new File("C:\\Files\\");
           	 	path.mkdirs();
           	 	path=new File("C:/Files/");
           	 	File file=new File(path,this.archivoFileName);
           	 	FileUtils.copyFile(this.archivo,file);
			}
			else{
				File uploadedFile = new File(path,this.archivoFileName);
				FileUtils.copyFile(this.archivo,uploadedFile);
			}
			
		 	
			
			System.out.println(ruta);
			System.out.println(this.archivoFileName);
			System.out.println(this.archivoContentType);
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return SUCCESS;
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


	public String getDatos() {
		return datos;
	}


	public void setDatos(String datos) {
		this.datos = datos;
	}


	@Override
	public void setServletRequest(HttpServletRequest arg0) {
		this.httpServletRequest=arg0;
		
	}

}
