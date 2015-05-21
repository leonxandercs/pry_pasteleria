<%@ taglib uri="/struts-tags" prefix="s"%>
<%@taglib uri="/struts-jquery-tags" prefix="sj" %>
<style type="text/css">
input[type=number]{
	width:60px;
	}
</style>
<script>
$(window).load(function(){
	var logueado='false';
	//Cosultamos al servidor si el usuario esta logueado
	$.get("isLogged.action",function(data){
		logueado=data.logged;
	});
	
	//Si el Usuario no esta logueado lo redireccionamos al login
	
	$('#regPedido').click(function(){
		if (logueado=='false')
			window.location.href="logueo.action";
		else{
			alert('Su pedido ah sido registrado');
			window.location.href="seguimiento.action";
		}
	});
});
</script>


<div>
<div class="table-responsive">
<table class="table table-striped table-hover " style="margin-rigth:40px;">
  <thead>
    <tr class="info">
      <th>#</th>
      <th>Codigo</th>
      <th>Producto</th>
      <th>Cantidad</th>
      <th>Precio</th>
      <th>Subtotal</th>
      <th></th>
    </tr>
  </thead>
  <tbody>
      
	<s:iterator value="#session.cart" var="c">
		<tr class="info">
			<td><s:property value="idPedidoCabe"/></td>
		  	<td><s:property value="producto.idProducto"/></td>
		  	<td><s:property value="producto.descripcion"/></td>
		  	<td><input type="number" min=0 value="<s:property value="cantidad"/>"></td>
		  	<td><s:property value="producto.precio"/></td>
		  	<td><s:property value="getSubTotal()"/></td>
		  	<td><a href="#"><span class="glyphicon glyphicon-trash"></span></a></td>
		 </tr>
	</s:iterator>
  
  
  </tbody>  
  <tfoot>
    <tr>
          <td></td>
         <td></td>
          <td></td>
          <td></td>
         <td  class="danger"><strong>Sub Total:</strong></td>
          <td  class="danger"><strong>S/.200.00</strong></td>
    </tr>
  </tfoot>
</table> 
</div>
<!-- ------------------------------------------------------------- -->

<div style="text-align:right;margin-right:80px;">
  <a href="catalogo.action" class="btn btn-primary">Agregar Productos</a>
  <input id="regPedido" type="submit" class="btn btn-success" value="Realizar Pedido"/>
</div>

</div>

<br></br>
<br></br>
<br></br>
