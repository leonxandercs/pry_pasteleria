<%@ taglib uri="/struts-tags" prefix="s"%>
<%@taglib uri="/struts-jquery-tags" prefix="sj" %>
<style type="text/css">
input[type=number]{
	width:60px;
	}
</style>
<script>
var eliminar;

$(document).ready(function(){
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
	
	actualizarGrillar();
			
	function actualizarGrillar(){
		
		$.getJSON('listCart.action',function(data){
			
			var lista=data.currentOrder;			
			$('.table tbody').html('');
			
			for (var i = 0; i < lista.length; i++) {
				//declaramos una variable producto
				var detalle=(lista[i]);
				
				var imagen='<img src="verImagen?imagenName='+detalle.producto.image_resource+'" width="200" alt="134x180"/>';
				//almanecamos la info del producto[i] en un JSON
			    var datos={"torta":{
							"idx":i,
							"idProducto":detalle.producto.idProducto,
							"label":(detalle.producto.descripcion).toUpperCase(),
							"imagen":imagen,
							"precio":detalle.producto.precio,
							"cantidad":detalle.cantidad,
							"subTotal":detalle.subTotal,
							"fec_requerimiento":detalle.fec_requerimiento
				           }
			     		 };	
				
				var fila='<tr class="info">'+
				'<td>'+datos.torta.idProducto+'</td>'+
				'<td>'+datos.torta.imagen+'</td>'+
				'<td>'+datos.torta.label+'</td>'+
				'<td>'+datos.torta.fec_requerimiento+'</td>'+
				'<td><input type="number" value="'+datos.torta.cantidad+'" min="1" /></td>'+
				'<td>'+datos.torta.precio+'</td>'+
				'<td>'+datos.torta.subTotal+'</td>'+
				"<td><a class='eliminar' href='javascript:eliminar()'><span class='glyphicon glyphicon-trash'></span></a></td>"+
				'</tr>';
				
				$('.table tbody').append(fila);
		
			    }
			
			
		});
		
	}
	

	eliminar=function(){
		var id=$('.eliminar').parent().parent().children().eq(0).html();
		//var id=$(this).parent().parent().children().eq(0).html();
		 /*var dato=new Object();
		 dato.producto={idProducto:id};*/
		 $.ajax({
				url:"removeItemCart.action",
				type:"post",
				datatype:"json",
				data:{idProducto:id},
				success:function(result){
					$.growl(
							{
								title:" <strong> Producto</strong> ",
								message:"eliminado",
								icon:"glyphicon glyphicon-thumbs-up"
							},{
								type:'info'
							}
						  );
				}
		 	});
		 actualizarGrillar();
	};
	
	
	/*
    var table=$('#example').DataTable({
        "processing": true,
        "ajax": {
        	"url":"listCart.action",
        	 "dataSrc":"currentOrder"
        	},
            "bPaginate": false,
            "bFilter": false,
            "bInfo":false,
	        "columns": [
                    { "data": "producto.idProducto" },
                    { "data": "producto.descripcion" },
                    { "data": "fec_requerimiento" },
                    { "data": "cantidad" },
                    { "data": "producto.precio" },
                    { "data": "subTotal" }                    
                ]
       , "language": {
           "zeroRecords": "No se hallaron Registros ",
           "infoEmpty": "No hay Registros disponibles",
           "loadingRecords": "Cargando...",    
           "processing":     "Procesando..."
       },
        responsive:true
        
    });
	*/	
});


</script>



<table id="example" class="table table-responsive table-striped table-bordered table-hover" cellspacing="0" width="100%">
  <thead>
    <tr class="info">
      <th>Codigo</th>
      <th>Imagen</th>
      <th>Producto</th>
      <th>Fecha Requerimiento</th>
      <th>Cantidad</th>
      <th>Precio</th>
      <th>Subtotal</th>
      <th>Accion</th>
    </tr>
  </thead>
        
  <tbody>
<!-- 	
	<s:iterator value="#session.cart" var="c">
		<tr class="info">
			<td><s:property value="idPedidoCabe"/></td>
		  	<td><s:property value="producto.idProducto"/></td>
		  	<td><s:property value="producto.descripcion"/></td>
		  	<td><s:property value="fec_requerimiento"/></td>
		  	<td><input type="number" min=0 value="<s:property value="cantidad"/>"></td>
		  	<td><s:property value="producto.precio"/></td>
		  	<td><s:property value="getSubTotal()"/></td>
		  	<td><a class="eliminar" href="#"><span class="glyphicon glyphicon-trash"></span></a></td>
		 </tr>
	</s:iterator>
-->	

  </tbody> 

  <tfoot>
    <tr>
    	<td></td>
    	<td></td>
         <td></td>
         <td></td>
          <td></td>
          <td></td>
         <td  class="danger"><strong>Sub Total:</strong></td>
          <td  class="danger"><strong>S/.200.00</strong></td>
    </tr>
  </tfoot>
     
</table> 
<!-- ------------------------------------------------------------- -->

<div style="text-align:right;margin-right:80px;">
  <a href="catalogo.action" class="btn btn-primary">Agregar Productos</a>
  <input id="regPedido" type="submit" class="btn btn-success" value="Realizar Pedido"/>
</div>



<br></br>
<br></br>
<br></br>
