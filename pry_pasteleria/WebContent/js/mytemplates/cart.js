/**
 * Archivo Javascript que se ejecuta al cargar el carrito de Compras
 */
$(document).ready(function(){
	
	var lista;
	var datos=[];
		
	
	$('#cartDetail tbody').html('');
	
	 $('#setptwo').hide();
	 
	 $('#continuarSteptwo').click(function(){
	     loadDetailFields();
		 $('#stepone').fadeOut(1000);
		 $('#setptwo').fadeIn(3000);
		 
	});
	
	 $('#volver').click(function(){
		 $('#setptwo').hide();
		 $('#stepone').fadeIn();
		 
	});
	 
	function loadDetailFields(){
		var k=0;
		for (var i = 0; i < lista.length; i++) {
			
			for (var j = 0; j < datos[i].torta.cantidad; j++) {
				$('#cartDetail tbody').append(addFieldDetail(i,k));
				k++;
			}
			
		}
	}
	
	function addFieldDetail(i,j){
		
		return '<tr>'+
		'<td>'+datos[i].torta.idProducto+'</td>'+
	    '<td>'+datos[i].torta.label+'</td>'+
	    
	    '<td style="display:none;">'+
		'<div class="form-group has-feedback">'+
	    '<input type="text" class="form-control" name="orderDetail['+j+'].producto.idProducto value="'+datos[i].torta.idProducto+'">'+
	    '<span	class="glyphicon glyphicon-ok form-control-feedback"></span>'+
		'</div>'+
		'</td>'+
	    
	    '<td>'+
		'<div class="form-group has-feedback">'+
	    '<input type="text" class="form-control" name="orderDetail['+j+'].nombre_agasajado">'+
	    '<span	class="glyphicon glyphicon-ok form-control-feedback"></span>'+
		'</div>'+
		'</td>'+
	    
	    '<td>'+
		'<div class="form-group has-feedback">'+
		'<input type="text" class="form-control" name="orderDetail['+j+'].dedicatoria">'+
	    '<span	class="glyphicon glyphicon-ok form-control-feedback"></span>'+
		'</div>'+
		'</td>'+
	    '<td>'+
		'<div class="form-group has-feedback">'+
		'<div class="input-group date">'+
		'<input type="text" class="form-control" name="orderDetail['+j+'].fec_requerimiento"/>'+
			'<span class="input-group-addon"><i class="glyphicon glyphicon-th"></i>'+
			'</span>'+
		'</div>'+
		'</div>'+
	    '</td>'+
	    '<td>'+
	    '<div class="form-group has-feedback">'+
	    '<div class="btn-group btn-group-xs" role="group" aria-label="Extra-small button group">'+
	      '<button id="skipRow" type="button" class="btn btn-default">Omitir</button>'+
	    '</div></div>'+
	    '</td>'+
	    '</tr>';
	}
	
	
	
	 actualizarGrillar();
		
		
	function actualizarGrillar(){

		$.getJSON('listCart.action',function(data){
			
			lista=data.currentOrder;			
			$('#cart tbody').html('');
			
			for (var i = 0; i < lista.length; i++) {
				//declaramos una variable producto
				var detalle=(lista[i]);
				
				//var imagen='<img src="verImagen?imagenName='+detalle.producto.image_resource+'" width="200" alt="134x180"/>';
				var imagen='<img src="verImagen?imagenName='+detalle.producto.image_resource+'"width=100% alt="..." class="img-responsive"/>';
				//almanecamos la info del producto[i] en un JSON			
			    datos[i]={"torta":{
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
				
				var fila='<tr>'+
				'<td data-th="Product">'+
				 '<input type="hidden" value="'+datos[i].torta.idProducto+'"/>'+
				 '<div class="row">'+
						'<div class="col-sm-4 col-xs-12">'+imagen+'</div>'+
						'<div class="col-sm-8">'+
							'<h4 class="nomargin">Producto '+datos[i].torta.idProducto+'-'+datos[i].torta.label+'</h4>'+
							'<p>El pastel de '+datos[i].torta.label+', tiene como base lo mejor de nuestros '+datos[i].torta.masa+
							' con una cobertura de '+datos[i].torta.cobertura+' y un exquisito relleno de '+datos[i].torta.relleno+'.</p>'+
						'</div>'+
					'</div>'+
				'</td>'+
				'<td data-th="Precio">'+'S/.'+datos[i].torta.precio+'</td>'+
				'<td data-th="Cantidad">'+
					'<input type="number" class="form-control text-center" value="'+datos[i].torta.cantidad+'" min="1">'+
				'</td>'+
				'<td data-th="Subtotal" class="text-center">S/.'+datos[i].torta.subTotal+'</td>'+
				'<td class="actions" data-th="">'+
					'<button class="btn btn-primary btn-sm"><i class="glyphicon glyphicon-edit"></i></button>'+
					'<button class="eliminar btn btn-danger btn-sm"><i class="glyphicon glyphicon-trash"></i></button>	'+							
				'</td>'+
			'</tr>';

			$('#cart tbody').append(fila);
			
		    }
			
			
		});
		
	}
		

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
