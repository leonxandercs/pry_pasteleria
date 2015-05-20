<%@ taglib uri="/struts-tags" prefix="s"%>
<%@taglib uri="/struts-jquery-tags" prefix="sj" %>
<%@taglib uri="/struts-bootstrap-tags" prefix="sb" %>
<s:if test="hasActionMessages()">
	<s:actionmessage id="messageSucces" />
	<script>
		var msj = $('#messageSucces li span').text();
		$('#messageSucces').remove();
		$.growl(
			{
				title:" <strong>! Bienvenido</strong> a Tortas Encantadas: ",
				message:msj+" <strong>!</strong>",
				icon:"glyphicon glyphicon-thumbs-up"
			},{
				type:'success'
			}
		  );
	</script>
</s:if>
<script>
var row;
var products;
var childRow;

$(document).ready(function(){	


	
	row=$('.panelalex');
	row.html('');
	
    $.getJSON('listProduct',function(data){
		//recuperamos el array de productos
		products=data.productos;
		
		for (var i = 0; i < products.length; i++) {
			//declaramos una variable producto
			var producto=(products[i]);
			
			var imagen='<img src="verImagen?imagenName='+producto.image_resource+'" width="200" alt="134x180"/>'
			//almanecamos la info del producto[i] en un JSON
		    var datos={"torta":{
				"idx":i,
				"label":(producto.descripcion).toUpperCase(),
				"imagen":imagen,
				"precio":producto.precio,
				"cobertura":producto.cobertura.descripcion,
				"masa":producto.masa.descripcion,
				"relleno":producto.relleno.descripcion
	           }
     		 };	
			//agregamos el producto al catalogo
			row.append(agregaProductContainer(i,datos.torta.label, imagen, datos.torta.precio, 
					datos.torta.cobertura,datos.torta.masa,datos.torta.relleno));
			
			//le asignamos la data respectiva al container html producto
			var currentProduct=$('.thumbnail').eq(i);
			$(currentProduct).data("dataproducto",datos);
			
		}
	});
	

	function agregaProductContainer(position,label,imagen,precio,cobertura,masa,relleno){
				
		var containerProducto='<div class="col-xs-6 col-sm-3 col-md-3 col-lg-2">'+
		'<div id="'+position+'" class="thumbnail calex">'+
		imagen+
		'<div class="caption">'+
			'<h3>'+label.charAt(0)+label.slice(1).toLowerCase()+'</h3>'+
			'<p>El pastel de '+label.toLowerCase()+', tiene como base lo mejor de nuestros '+masa+
			' con una cobertura de '+cobertura+' y un exquisito relleno de '+relleno+'.</p>'+
				'<p class="palex">'+
				'<a href="#" class="btn btn-primary">Agregar al Carrito</a>'+
				'</p>'+
			'</div>'+
		'</div>'+
		'</div>';
			
		return containerProducto;
	}
	
	console.log('ready - gallery loaded successfully');
	
	
	setTimeout(function(){
			
			var precio=0;
			var patron = /^\d*$/;        
		    var subtotal=$("#price");
		    var datos;
		       
		  $("#myModal input[type=number]").change(function(){
		        var number=this.value*precio;
		        if (validatenumber()) {
		          subtotal.text(number);
		        };
		   });
				
		  
		   function validatenumber(){
			    $("#myModal input[type=number]").keyup(function(){
			      if (!patron.test(this.value)) {
			        alert('numero invalido,no se permite decimales ni negativos');
			        this.value=1;
			        subtotal.text(precio);
			        console.log('mensaje:keyup');
			        return false;
			      }
			     // return true;
			   });
		     return true;
		   }
		   
		   $(".caption p a").click(function(){
		       var modal=$("#myModal");
		         updateModal(this);
		         modal.modal('show');
	    	});


		   function updateModal(elemento){
			   
			 var father=$(elemento).parent("p").parent(".caption").parent(".thumbnail");

		     datos=$(father).data("dataproducto");
		     precio=datos.torta.precio;  
			 
		     var img=$(father).find('img').clone();
			 $(img).attr('width','100%');
			 $('#myModal h3').text(datos.torta.label.charAt(0)+datos.torta.label.slice(1).toLowerCase());
			 $('#myModal input[type=number]').val(1);
			 $("#myModal .modal-body img").replaceWith(img);
		     $('#price').text(datos.torta.precio);
		     
		   } 
		   
	},1000);
	

	
});

</script>

 <div class="row col-xs-12  col-sm-12  col-md-12  col-lg-12">
	
					
		<div class="col-xs-12  col-sm-2  col-md-2  col-lg-2">
			 <s:form  theme="bootstrap">
	    			<s:url id="URL_ListCategorys" action="listCategory"/>
					<sj:select cssClass="form-control"
					id="cbocategoria" 
					label="Categoria :"
					list="categorias"
					listKey="idCategoria"
					listValue="descripcion"
					href="%{URL_ListCategorys}"
					headerKey="0"
					headerValue="--Seleccione--" 
					name="producto.categoria.idCategoria" />
	    	 
			 
	    		<s:url id="URL_ListCoverages" action="listCoverage"/>
				<sj:select cssClass="form-control" 
					id="cbocobertura" 
					label="Cobertura :"
					list="coberturas"
					listKey="idCobertura"
					listValue="descripcion"
					href="%{URL_ListCoverages}"
					headerKey="0"
					headerValue="--Seleccione--" 
					name="producto.cobertura.idCobertura" />
	    	 
	    		<s:url id="URL_ListDoughs" action="listDough"/>
				<sj:select cssClass="form-control"
					id="cbomasa" 
					label="Masa :"
					list="masas"
					listKey="idMasa"
					listValue="descripcion"
					href="%{URL_ListDoughs}"
					headerKey="0"
					headerValue="--Seleccione--" 
					name="producto.masa.idMasa" />
	    	 
	    		<s:url id="URL_ListFillings" action="listFilling"/>
				<sj:select cssClass="form-control"
					id="cborelleno" 
					label="Relleno :"
					list="rellenos"
					listKey="idRelleno"
					listValue="descripcion"
					href="%{URL_ListFillings}"
					headerKey="0"
					headerValue="--Seleccione--" 
					name="producto.relleno.idRelleno" />
			<br/>					   
			<s:submit value="Consultar Producto" cssClass="btn btn-primary col-xs-12"/>
			</s:form>
		</div><!-- fin filtros -->

		<div class="panelalex col-xs-12  col-sm-10  col-md-10  col-lg-10">	

		</div> <!-- Fin panel--> 
	
</div>  <!-- Fin Row -->



<!------------------------------------------------ -->
<!-- Modal -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
	aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
				<h3 class="modal-title" id="myModalLabel">Modal title</h3>
			</div>

			<div class="modal-body">

				<div class="alex col-xs-12 col-sm-5 col-md-5 col-lg-5">
					<img src="">
				</div>
				
				<div class="alex col-xs-12 col-sm-7 col-md-7 col-lg-7">
					<table class="detaAC">
						<tr>
							<td>Cantidad</td>
							<td><input type="number" min=1></td>
						</tr>
						<tr>
							<td>Nombre Agazajado:</td>
							<td><input class="form-control" type="text"></td>
						</tr>
						<tr>
							<td>Dedicatoria:</td>
							<td><input class="form-control" type="text"></td>
						</tr>
						<tr>
							<td>Fecha de Entrega:</td>
							<td>
								<div class="input-group date">
									<input id="fecha" class="form-control" type="text"> <span
										class="input-group-addon"> <i
										class="glyphicon glyphicon-th"></i>
									</span>
								</div>
							</td>
						</tr>
						<tr>
							<td><font size="5">Precio:</font></td>
							<td><font size="6">S/.</font><font size="6" id="price">60.00</font></td>
						</tr>
					</table>
				</div>

			</div>

			<div class="modal-footer alexito">
				<button type="button" class="btn btn-default" data-dismiss="modal">Cancelar</button>
				<button type="button" class="btn btn-primary" data-dismiss="modal">Agregar al
					Carrito</button>
			</div>
		</div>
	</div>
</div>

