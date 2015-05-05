<%@ taglib uri="/struts-tags" prefix="s"%>
<s:if test="hasActionMessages()">
	<s:actionmessage id="messageSucces" />
	<script>
		var msj = $('#messageSucces li span').text();
		$('#messageSucces').remove();
		$.growl(
			{
				title:" <strong>Bienvenido: </strong>",
				message:msj,
				icon:"glyphicon glyphicon-thumbs-up"
			},{
				type:'success'
			}
			);
		/*
		$.bootstrapGrowl(msj + "..!", {
			type : 'success',
			width : 'auto',
			allow_dismiss : false
		});*/
	</script>
</s:if>
<div>
	<table>
		<tr>
			<td width="125">
				<div id="filtros" style="height: 850px;">
					<s:form id="frmCatalogo">
						<div class="col-lg-12">
							Cobertura: <select class="form-control">
								<option>Chocolate</option>
								<option>Chantilly</option>
								<option>Gelatina</option>
								<option>Merengue</option>
								<option>Maracuya</option>
							</select> <br></br> Masa: <select class="form-control">
								<option>Kekes</option>
								<option>Soufles</option>
								<option>Bizcochos</option>
								<option>4</option>
								<option>5</option>
							</select> <br></br> Relleno: <select class="form-control">
								<option>Mermelada</option>
								<option>Manjar</option>
								<option>Frutas</option>
								<option>Queso</option>
								<option>Pecanas</option>
							</select> <br></br> Ocasión: <select class="form-control">
								<option>Cumpleaños</option>
								<option>Paseo</option>
								<option>Postre</option>
								<option>Matrimonio</option>
								<option>Despedida Soltero</option>
							</select> <br></br> <input type="submit" value="Consultar Producto"
								class="btn btn-primary">
						</div>
					</s:form>
				</div> <!------------------------------------------------ -->

			</td>

			<td>
				<!---------------------------------------------->
				<div id="cont" class="panel">


					<div class="row" id="rowcatalogo">

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
				<button type="button" class="btn btn-primary">Agregar al
					Carrito</button>
			</div>
		</div>
	</div>
</div>
