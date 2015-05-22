package com.pasteleria.actions;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;
import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;
import org.codehaus.jackson.map.ObjectMapper;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.pasteleria.bean.OrderDetail;

@ParentPackage(value="cloudedleopard")
public class CarroCompraAction extends ActionSupport{

	private static final long serialVersionUID = 1L;
	 
	private Map<String,Object> session=(Map<String,Object>)ActionContext.getContext().getSession();
	private HttpServletRequest reques=ServletActionContext.getRequest();
	
	private OrderDetail orderDetail;
	private List<OrderDetail> currentOrder=new LinkedList<OrderDetail>();

	
	
	
	
	@SuppressWarnings("unchecked")
	@Action(value="addToCarrito",results={@Result(name=SUCCESS,type="json")})
	public String  add(){
		
	
		try {
			System.out.println("Cantidad: "+orderDetail.getCantidad());
	        System.out.println("Dedicatoria: "+orderDetail.getDedicatoria());
	        System.out.println("Agasajado: "+orderDetail.getNombre_agasajado());
	        System.out.println("Requerimiento: "+orderDetail.getFec_requerimiento());
	        
		        System.out.println("se agrego al Carrito");
		        System.out.println("Producto: "+orderDetail.getProducto().getIdProducto());
		        System.out.println("-"+orderDetail.getProducto().getDescripcion());
		        
		        System.out.println("Imagen: "+orderDetail.getProducto().getImage_resource());
		        
		        System.out.println("Subtotal:"+orderDetail.getCantidad()*orderDetail.getProducto().getPrecio());
		        
		     if ((List<OrderDetail>) session.get("cart")!=null) {
		        	boolean existe=false;
		        	this.currentOrder=(LinkedList<OrderDetail>) session.get("cart");
		        
		        	for (Iterator<OrderDetail> iter= currentOrder.iterator(); iter.hasNext();) {
						OrderDetail obj =iter.next();
						 if((existe=obj.equals(this.orderDetail))){
							 obj.setCantidad(this.orderDetail.getCantidad()+obj.getCantidad());
							 break;
						 }
					}		
		        	
		        	if (!existe) {
						currentOrder.add(orderDetail);
					}
					session.put("cart",currentOrder);
					System.out.println("agregado al carrito");
				
			}else{
				
				currentOrder.add(this.orderDetail);
				session.put("cart",currentOrder);
				System.out.println("primera vez agregado");
			}
	        
	        
        }catch (Exception e) {
			e.printStackTrace();
		}finally{
			
			for (OrderDetail deta : currentOrder) {
				System.out.println("-----------------");
				System.out.println
						(
						deta.getProducto().getIdProducto()+
						"-"+deta.getProducto().getDescripcion()+
						"-"+deta.getCantidad()+
						"-"+deta.getFec_requerimiento()
						);
			}
			
		}
	 
		return SUCCESS;
	}
	
	
	@SuppressWarnings("unchecked")
	@Action(value="removeItemCarrito",results={@Result(name=SUCCESS,type="json")})
	public String remove(){
		
		boolean eliminado=false;
		BufferedReader br;
		try {
			br = new BufferedReader(new InputStreamReader(reques.getInputStream(),"utf-8"));
			String json = "";
			if(br != null){
				json = br.readLine();
			} 
	        ObjectMapper mapper=new ObjectMapper();
	        this.orderDetail=mapper.readValue(json,OrderDetail.class); 
	        this.currentOrder=(LinkedList<OrderDetail>) session.get("cart");
	        
	        eliminado=currentOrder.remove(this.orderDetail);
			System.out.println("Eliminado: "+eliminado+orderDetail.getProducto().getIdProducto());
			
		   }catch (Exception e) {
			e.printStackTrace();
		   }
		return SUCCESS;
	}

	public OrderDetail getOrderDetail() {
		return orderDetail;
	}


	public void setOrderDetail(OrderDetail orderDetail) {
		this.orderDetail = orderDetail;
	}
	
	
}
