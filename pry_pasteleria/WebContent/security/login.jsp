<%@ taglib uri="/struts-tags" prefix="s"%>
<link href="css/styles_account.css" media="all" rel="stylesheet">


<s:if test="hasActionErrors()">
	<s:actionerror id="messagerror" />
	<script>
		var msj = $('#messagerror li span').text();
		$('#messagerror').remove();
		$.growl(
				{
					title:" <strong>Error: </strong></b>",
					message:msj,
					icon:"glyphicon glyphicon-alert"
				},
				{
					type:'danger'
				}
			);
		/*
		$.bootstrapGrowl("Mensaje: " + msj + "..!", {
			type : 'danger',
			width : 'auto',
			align:'rigth',
			allow_dismiss : false
		});*/
	</script>
</s:if>


<div id="contenedor" width="100%">
	<table width="800px">
		<tr>
			<td width="400">
				<!------------------------------------------------ -->
				<div style="text-align: left; margin-left: 20px;">
					<h1>
						<strong style="color: #954F9A;">Bienvenido a Tortas
							Encantada</strong>
					</h1>
					<h3>Crear una cuenta en menos de un minuto</h3>
					�Es su primer pedido? Aprovechese de las ventajas de Tortas
					Encantada al &nbsp;<a href="singup.action">Crear una cuenta</a> . <br></br>
					<h1></h1>
					<br></br>
				</div> <!------------------------------------------------ -->
			</td>
			<td width="300px">
				<div class="wrapper" id="colum2">
					<s:form action="ValidateUser" cssClass="form animate-form"
						id="form" onsubmit="return true;">
						<div class="form-header">
							<h1>INICIE SESI�N</h1>
						</div>
						<br></br>


						<div class="form-group has-feedback">
							<label class="control-label sr-only" for="email">Correo
								Electr�nico</label>
							<div class="input-group-addon">
								<div class="glyphicon glyphicon-envelope"></div>
							</div>
							<input class="form-control" id="email" name="email"
								placeholder="Correo Electr�nico" type="text"><span
								class="glyphicon glyphicon-ok form-control-feedback"></span>
						</div>
						<div class="form-group has-feedback">
							<label class="control-label sr-only" for="password">Contrase�a</label>
							<div class="input-group-addon">
								<div class="glyphicon glyphicon-lock"></div>
							</div>
							<input class="form-control" id="password" name="password"
								placeholder="Contrase�a" type="password"> <span
								class="glyphicon glyphicon-ok form-control-feedback"></span>
						</div>
						<div style="text-align: left; height: 0px;">
							&nbsp; <a href="singup.action">Olvidaste tu clave?</a>&nbsp;
							<!--<a href="singup.html">Registrate</a>-->
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
						</div>
						<div class="form-group submit">
							<input class="btn btn-lg" type="submit" value="ENVIAR">
						</div>
					</s:form>
				</div>



			</td>
		</tr>
	</table>
</div>
