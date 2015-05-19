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
	row=$('.row');
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
			
			row.append(agregaProductContainer(label, imagen, precio, cobertura, masa, relleno));
		}
	});
	
	console.log(childRow);
	
	function agregaProductContainer(label,imagen,precio,cobertura,masa,relleno){
		
		var containerProducto='<div class="col-xs-12 col-sm-3 col-md-3 col-lg-2">'+
		'<div class="thumbnail calex">'+
		imagen+
		'<div class="caption">'+
			'<h3>'+label+'</h3>'+
			'<p>Cras justo odio, dapibus ac facilisis in, egestas eget'+
			'	quam. Donec id elit non mi porta gravida at eget metus.</p>'+
				'<p class="palex">'+
				'<a href="#" class="btn btn-primary">Agregar al Carrito</a>'+
				'</p>'+
			'</div>'+
		'</div>'+
		'</div>';
		return containerProducto;
	}
	
	console.log('ready - page loaded success');
});


</script>
<div>
	<table>
		<tr>
			<td width="125">
				<div id="filtros" style="height: 850px;">
				
					<s:form id="frmCatalogo" theme="bootstrap">
						<div class="col-xs-12">
							<div class="form-group">
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
					    	</div>
							<div class="form-group">
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
					    	</div>		
							<div class="form-group">
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
					    	</div>
	    					<div class="form-group">
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
					    	</div>
							<s:submit value="Consultar Producto" cssClass="btn btn-primary"/>
						</div>
					</s:form>
				</div> 
			<!------------------------------------------------ -->
				
			</td>

			<td>
				<!---------------------------------------------->
				<div id="cont" class="panel">


					<div class="row" id="rowcatalogo">

						<div class="col-xs-6 col-sm-2">
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

						<div class="col-xs-6 col-sm-2">
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

						<div class="col-xs-6 col-sm-2">
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

						<div class="col-xs-6 col-sm-2">
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

						<div class="col-xs-6 col-sm-2">
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

						<div class="col-xs-6 col-sm-2">
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
						<!---------------------------------------------------------------------->

						<div class="col-xs-6 col-sm-2">
							<div class="thumbnail">
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

						<div class="col-xs-6 col-sm-2">
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

						<div class="col-xs-6 col-sm-2">
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

						<div class="col-xs-6 col-sm-2">
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

						<div class="col-xs-6 col-sm-2">
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

						<div class="col-xs-6 col-sm-2">
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


						<div class="col-xs-6 col-sm-2">
							<div class="thumbnail">
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

						<div class="col-xs-6 col-sm-2">
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

						<div class="col-xs-6 col-sm-2">
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

						<div class="col-xs-6 col-sm-2">
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

						<div class="col-xs-6 col-sm-2">
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

						<div class="col-xs-6 col-sm-2">
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

					</div>
					<!--- Fin ROW  -->

				</div>
				<!-- Fin panel--> <!---------------------------------------------->


			</td>
		</tr>
	</table>
</div>


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

				<div class="alex">
					<img src="">
				</div>
				<div class="alex">
					<table>
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
				<button type="button" class="btn btn-primary" data-dimiss="modal">Agregar al
					Carrito</button>
			</div>
		</div>
	</div>
</div>
