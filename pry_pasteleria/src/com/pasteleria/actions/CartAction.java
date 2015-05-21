package com.pasteleria.actions;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.Arrays;
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
import com.pasteleria.bean.Product;
/**
 * 
 * @author Pantera
 *
 */
@ParentPackage(value="cloudedleopard")
public class CartAction extends ActionSupport{
	private static final long serialVersionUID = 1L;
	 
	private Map<String,Object> session=(Map<String,Object>)ActionContext.getContext().getSession();
	//private List<OrderDetail> currentOrder=new ArrayList<OrderDetail>();
	//private Product producto;
	//private OrderDetail detalle;
	private HttpServletRequest reques=ServletActionContext.getRequest();
	private String orderDetail;
	//private int cantidad;
	
	
	
	
	@SuppressWarnings("unchecked")
	@Action(value="addToCart",results={@Result(name=SUCCESS,type="json")})
	public String  add(){
		//if (currentOrder.size()==0) {
		//	currentOrder.add(this.detalle);
		//	session.put("cart",currentOrder);
		//}else{
		 // this.currentOrder=(ArrayList<OrderDetail>) session.get("cart");
		//  currentOrder.add(this.detalle);
		// session.put("cart",currentOrder);
		//}
		BufferedReader br;
		try {
			br = new BufferedReader(new InputStreamReader(reques.getInputStream()));
		String json = "";
        if(br != null){
          
				json = br.readLine();
			} 
        //inicamos Jackson mapper
        ObjectMapper mapper=new ObjectMapper();
        //convertimos el json en producto
        OrderDetail od=mapper.readValue(json,OrderDetail.class);
        //enviar response type json
        
        System.out.println("se agrego al Carrito");
		//System.out.println(producto.getDescripcion()+"-"+producto.getIdProducto() );
        System.out.println("Pedido: "+od.getIdPedidoCabe());
        System.out.println("Producto: "+od.getProducto().getIdProducto()
        		+"-"+od.getProducto().getDescripcion());
        System.out.println("Cantidad: "+od.getCantidad());
        System.out.println("Dedicatoria: "+od.getDedicatoria());
        System.out.println("Agasajado: "+od.getNombre_agasajado());
        System.out.println("Requerimiento: "+od.getFec_requerimiento());
        System.out.println("Subtotal:"+od.getCantidad()*od.getProducto().getPrecio());
        }catch (IOException e) {
			e.printStackTrace();
		}
	 
		return SUCCESS;
	}
	
	
	@SuppressWarnings("unchecked")
	@Action(value="getCart",results={@Result(name=SUCCESS,type="json")})
	public String getCart(){
		/* this.currentOrder=(ArrayList<OrderDetail>) session.get("cart");
		 for (OrderDetail deta : currentOrder) {
			System.out.println
					(
					deta.getProducto().getIdProducto()+
					"-"+deta.getProducto().getDescripcion()+
					"-"+deta.getCantidad()
					);
		}*/
		return SUCCESS;
	}

	/*
	public List<OrderDetail> getCurrentOrder() {
		//return currentOrder;
	}


	public void setCurrentOrder(List<OrderDetail> currentOrder) {
		//this.currentOrder = currentOrder;
	}


	public Product getProducto() {
		return producto;
	}


	public void setProducto(Product producto) {
		this.producto = producto;
	}


	public OrderDetail getDetalle() {
		return detalle;
	}


	public void setDetalle(OrderDetail detalle) {
		//this.detalle = detalle;
	}

*/
	public String getOrderDetail() {
		return orderDetail;
	}


	public void setOrderDetail(String product) {
		this.orderDetail = product;
	}

/*
	public int getCantidad() {
		return cantidad;
	}


	public void setCantidad(int cantidad) {
		//this.cantidad = cantidad;
	}

*/	


	
	
}
