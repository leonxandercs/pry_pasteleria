<%@ taglib uri="/struts-tags" prefix="s"%>


<style type="text/css">

        .table>tbody>tr>td, .table>tfoot>tr>td{
    vertical-align: middle;
}

input[type=number]{
	width:60px;
	}
.table{
background-color: white;
}	

@media screen and (max-width: 600px) {
    table#cart tbody td .form-control{
		width:20%;
		display: inline !important;
	}
	.actions .btn{
		width:36%;
		margin:1.5em 0;
	}
	
	.actions .btn-primary{
		float:left;
	}
	.actions .btn-danger{
		float:right;
	}
	
	table#cart thead { display: none; }
	table#cart tbody td { display: block; padding: .6rem; min-width:320px;}
	table#cart tbody tr td:first-child { background: #333; color: #fff; }
	table#cart tbody td:before {
		content: attr(data-th); font-weight: bold;
		display: inline-block; width: 8rem;
	}
	
	
	
	table#cart tfoot td{display:block; }
	table#cart tfoot td .btn{display:block;}
	
}
</style>
<script>


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
	
	 $('#boton').click(function(){
		 alert('hola');
	 });
	 
	 /**/
	 actualizarGrillar();
	
	
	function actualizarGrillar(){

		$.getJSON('listCart.action',function(data){
			
			var lista=data.currentOrder;			
			$('.table tbody').html('');
			
			for (var i = 0; i < lista.length; i++) {
				//declaramos una variable producto
				var detalle=(lista[i]);
				
				//var imagen='<img src="verImagen?imagenName='+detalle.producto.image_resource+'" width="200" alt="134x180"/>';
				var imagen='<img src="verImagen?imagenName='+detalle.producto.image_resource+'"width=100% alt="..." class="img-responsive"/>';
				//almanecamos la info del producto[i] en un JSON
			    var datos={"torta":{
							"idx":i,
							"idProducto":detalle.producto.idProducto,
							"label":detalle.producto.descripcion,
							"imagen":imagen,
							"precio":detalle.producto.precio,
							"cantidad":detalle.cantidad,
							"subTotal":detalle.subTotal,
							"fec_requerimiento":detalle.fec_requerimiento,
							"cobertura":detalle.producto.cobertura.descripcion,
							"masa":detalle.producto.masa.descripcion,
							"relleno":detalle.producto.relleno.descripcion
				           }
			     		 };	
				/*
				var fila='<tr>'+
				'<td>'+datos.torta.idProducto+'</td>'+
				'<td>'+datos.torta.imagen+'</td>'+
				'<td>'+datos.torta.label+'</td>'+
				'<td>'+datos.torta.fec_requerimiento+'</td>'+
				'<td><input type="number" value="'+datos.torta.cantidad+'" min="1" /></td>'+
				'<td>'+datos.torta.precio+'</td>'+
				'<td>'+datos.torta.subTotal+'</td>'+
				"<td><a class='eliminar' href='#'><span class='glyphicon glyphicon-trash'></span></a></td>"+
				'</tr>';
				*/
				
				
				
				var fila='<tr>'+
				'<td data-th="Product">'+
				 '<input type="hidden" value="'+datos.torta.idProducto+'"/>'+
				 '<div class="row">'+
						'<div class="col-sm-4 col-xs-12">'+imagen+'</div>'+
						'<div class="col-sm-8">'+
							'<h4 class="nomargin">Producto '+datos.torta.idProducto+'-'+datos.torta.label+'</h4>'+
							'<p>El pastel de '+datos.torta.label+', tiene como base lo mejor de nuestros '+datos.torta.masa+
							' con una cobertura de '+datos.torta.cobertura+' y un exquisito relleno de '+datos.torta.relleno+'.</p>'+
						'</div>'+
					'</div>'+
				'</td>'+
				'<td data-th="Precio">'+'S/.'+datos.torta.precio+'</td>'+
				'<td data-th="Cantidad">'+
					'<input type="number" class="form-control text-center" value="'+datos.torta.cantidad+'" min="1">'+
				'</td>'+
				'<td data-th="Subtotal" class="text-center">S/.'+datos.torta.subTotal+'</td>'+
				'<td class="actions" data-th="">'+
					'<button class="btn btn-primary btn-sm"><i class="glyphicon glyphicon-edit"></i></button>'+
					'<button class="eliminar btn btn-danger btn-sm"><i class="glyphicon glyphicon-trash"></i></button>	'+							
				'</td>'+
			'</tr>';

			$('.table tbody').append(fila);
			
		    }
			
			
		});
		
	}
	
	/*
    var table=$('#cart').DataTable({
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
                    {"data":"producto.image_resource"},
                    { "data": "producto.descripcion" },
                    { "data": "fec_requerimiento" },
                    { "data": "cantidad" },
                    { "data": "producto.precio" },
                    { "data": "subTotal" }
                ],
            "columnDefs":[
                      {
                    	  "targets": [7], // El objetivo de la columna de posición, desde cero.
                          "data":null, // La inclusión de datos
                          "defaultContent":"<a  class='eliminar' href='#'><span class='glyphicon glyphicon-trash'></span></a>"
                      }
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
		$('#cart').on('click','.eliminar',function(){	
		//$('.row #aeliminar').on('click','.eliminar',function(){
		var id=$(this).parent().parent().children().eq(0).children().eq(0).val();
		//var id=$(this).parent().parent().children().eq(0).html();
		
		 $.ajax({
				url:"removeItemCart.action",
				type:"post",
				datatype:"json",
				data:{idProducto:id},
				success:function(result){
					//table.ajax.reload(null,false);
					actualizarGrillar();
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
	});
	
});


</script>

<!-- ------------------------------------------------------------- -->

<div class="container">

	<table id="cart" class="table table-hover table-condensed">
	  <thead>
	    <tr class="primary">
	      <th style="width:50%">Producto</th>
	      <th style="width:10%">Precio</th>
	      <th style="width:8%">Cantidad</th>
	      <th style="width:22%" class="text-center">Subtotal</th>
	      <th style="width:10%"></th>
	    </tr>
	  </thead>
        
	  <tbody>
	  </tbody> 


	 <tfoot>
		<tr class="visible-xs">
			<td class="text-center"><strong>Total S/.200.00</strong></td>
		</tr>
		<tr>
			<td><a  href="catalogo.action" class="btn btn-primary">Agregar Productos</a></td>
			<td colspan="2" class="hidden-xs"></td>
			<td class="hidden-xs text-center"><strong id="TotalPedido">Total $1.99</strong></td>
			<td><a  id="regPedido"  href="#" class="btn btn-success btn-block"><!--Checkout-->Continuar con Pedido</a></td>
		</tr>
	 </tfoot>
  </table> 
</div>
<!-- 		
  <tfoot>
    <tr>
    	<td></td>
    	<td></td>
         <td></td>
         <td  class="danger"><strong>Sub Total:</strong></td>
          <td  class="danger"><strong>S/.200.00</strong></td>
    </tr>
  </tfoot>
     
</table> 

<div style="text-align:right;margin-right:80px;">
  <a href="catalogo.action" class="btn btn-primary">Agregar Productos</a>
  <input id="regPedido" type="submit" class="btn btn-success" value="Realizar Pedido"/>
</div>
 -->			


<br></br>
<br></br>
<br></br>
