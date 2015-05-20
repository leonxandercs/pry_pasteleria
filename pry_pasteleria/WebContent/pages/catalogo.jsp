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
			
			var label=(producto.descripcion).toUpperCase();
			var imagen='<img src="verImagen?imagenName='+producto.image_resource+'" width="200" alt="134x180"/>'
			var precio=producto.precio;
			var cobertura=producto.cobertura.descripcion;
			var masa=producto.masa.descripcion;
			var relleno=producto.relleno.descripcion;
			
			row.append(agregaProductContainer(i,label, imagen, precio, cobertura, masa, relleno));
			
			var datos={"torta":{
				"idx":i,
				"label":label,
				"imagen":imagen,
				"precio":precio,
				"cobertura":cobertura,
				"masa":masa,
				"relleno":relleno
	           }
     		 };	
			
			var cp=$('.thumbnail').eq(i);
			console.log($(cp).html());
			$(cp).data("dataproducto",datos);
		}
	});
	
	console.log(childRow);
	
	function agregaProductContainer(position,label,imagen,precio,cobertura,masa,relleno){
		
		var label=label.toLowerCase();
		var containerProducto='<div class="col-xs-6 col-sm-3 col-md-3 col-lg-2">'+
		'<div id="'+position+'" class="thumbnail calex">'+
		imagen+
		'<div class="caption">'+
			'<h3>'+label+'</h3>'+
			'<p>El pastel de '+label+', tiene como base lo mejor de nuestros '+masa+
			' con una cobertura de '+cobertura+' y un exquisito relleno de '+relleno+'.</p>'+
				'<p class="palex">'+
				'<a href="#" class="btn btn-primary">Agregar al Carrito</a>'+
				'</p>'+
			'</div>'+
		'</div>'+
		'</div>';
			
		return containerProducto;
	}
	
	console.log('ready - page loaded success');
	
	
	setTimeout(function(){
			
			var precio=0;
		
		    var patron = /^\d*$/;        
		    var subtotal=$("#price");
		    var date=new Date();
		    var month = date.getMonth()+1;
		    var day = date.getDate();
		    var year=date.getFullYear();
		    
		  $('.input-group.date').datepicker({
		        language: "es",
		        startDate: date,
		        datesDisabled:[
		                        day+'/'+month+'/'+year,
		                        day+1+'/'+month+'/'+year
		                      ]                     
		    });

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
		       var imagen=$("#myModal .modal-body img");
		       var title=$("#myModal h3");
		       $('#myModal input[type=number]').val(1);
		       getProductSelected(elemento,imagen,title);
		     }
		   

		   function getProductSelected(elemento,imagen,titulo){
			 
			 var father=$(elemento).parent("p").parent(".caption").parent(".thumbnail");

		     var datos=$(father).data("dataproducto");
		     console.log(datos.torta.label);
		     precio=datos.torta.precio;  
			 
		   
		     var titleFather=$(elemento).parent("p").parent(".caption").find('h3').text();
		     
		     var img=$(father).find('img').clone();
			 $(img).attr('width','100%');
		     $(imagen).replaceWith(img);
		     $('#price').text(datos.torta.precio);
		     
		     console.log('titulo antes: '+ $(titulo).text());

		     $(titulo).text(titleFather);

		     console.log('titulo despues: '+titleFather);
		     
			
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
		</div>
	
<!------------------------------------------------ -->


	<div class="panelalex col-xs-12  col-sm-10  col-md-10  col-lg-10">

			<div class="col-xs-12 col-sm-3 col-md-3 col-lg-2">
				<div class="thumbnail" >
					<img src="img/torta1.jpg" alt="134x180" width="200">
					<div class="caption">
						<h3>Torta1 Label</h3>
						<p>Cras justo odio, dapibus ac facilisis in, egestas eget
							quam. Donec id elit non mi porta gravida at eget metus.</p>
						<p>
							<a href="#" class="btn btn-primary">Agregar al Carrito</a>
						</p>
					</div>
				</div>
			</div>

			<div class="col-xs-12 col-sm-3 col-md-3 col-lg-2">
				<div class="thumbnail">
					<img src="img/torta2.png" alt="134x180" width="200">
					<div class="caption">
						<h3>Torta2 Label</h3>
						<p>Cras justo odio, dapibus ac facilisis in, egestas eget
							quam. Donec id elit non mi porta gravida at eget metus.</p>
						<p>
							<a href="#" class="btn btn-primary">Agregar al Carrito</a>
						</p>
					</div>
				</div>
			</div>

			<div class="col-xs-12 col-sm-3 col-md-3 col-lg-2">
				<div class="thumbnail">
					<img src="img/torta3.png" alt="134x180" width="200">
					<div class="caption">
						<h3>Torta3 Label</h3>
						<p>Cras justo odio, dapibus ac facilisis in, egestas eget
							quam. Donec id elit non mi porta gravida at eget metus.</p>
						<p>
							<a href="#" class="btn btn-primary">Agregar al Carrito</a>
						</p>
					</div>
				</div>
			</div>

			<div class="col-xs-12 col-sm-3 col-md-3 col-lg-2">
				<div class="thumbnail">
					<img src="img/torta4.png" alt="134x180" width="200">
					<div class="caption">
						<h3>Torta4 Label</h3>
						<p>Cras justo odio, dapibus ac facilisis in, egestas eget
							quam. Donec id elit non mi porta gravida at eget metus.</p>
						<p>
							<a href="#" class="btn btn-primary">Agregar al Carrito</a>
						</p>
					</div>
				</div>
			</div>

			<div class="col-xs-12 col-sm-3 col-md-3 col-lg-2">
				<div class="thumbnail">
					<img src="img/torta5.png" alt="134x180" width="200">
					<div class="caption">
						<h3>Torta5 Label</h3>
						<p>Cras justo odio, dapibus ac facilisis in, egestas eget
							quam. Donec id elit non mi porta gravida at eget metus.</p>
						<p>
							<a href="#" class="btn btn-primary">Agregar al Carrito</a>
						</p>
					</div>
				</div>
			</div>

			<div class="col-xs-12 col-sm-3 col-md-3 col-lg-2">
				<div class="thumbnail">
					<img src="img/torta6.png" alt="134x180" width="200">
					<div class="caption">
						<h3>Torta6 Label</h3>
						<p>Cras justo odio, dapibus ac facilisis in, egestas eget
							quam. Donec id elit non mi porta gravida at eget metus.</p>
						<p>
							<a href="#" class="btn btn-primary">Agregar al Carrito</a>
						</p>
					</div>
				</div>
			</div>

	</div> <!-- Fin panel--> 
</div>  <!-- Fin Row -->


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

