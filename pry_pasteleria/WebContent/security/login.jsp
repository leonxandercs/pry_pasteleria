<%@ taglib uri="/struts-tags" prefix="s"%>
<link href="css/styles_account.css" media="all" rel="stylesheet">
    
<div id="contenedor" width="100%">
<table width="800px">
  <tr>
      <td width="400">
  <!------------------------------------------------ -->
          <div style="text-align:left;margin-left:20px;">
             <h1>
              <strong style="color:#954F9A;">Bienvenido a Tortas Encantada</strong>
             </h1>
                <h3>Crear una cuenta en menos de un minuto</h3>
                  ¿Es su primer pedido?
                  Aprovechese de las ventajas de Tortas Encantada al 
                  &nbsp;<a href="singup.action">Crear una cuenta</a> .
                <br></br>
                  <h1> </h1>
                <br></br>
          </div>
  <!------------------------------------------------ -->
      </td>
    <td width="300px">
        <div class="wrapper" id="colum2">
          <form class="form animate-form" id="form" onsubmit="return false;">
            <div class="form-header">
              <h1>INICIE SESIÓN</h1>
            </div>
            <br></br>
            <div class="form-group has-feedback">
                <label class="control-label sr-only" for="email">Correo Electrónico</label>
                <div class="input-group-addon">
                  <div class="glyphicon glyphicon-envelope"></div>
                </div>
                <input class="form-control" id="email" name="email" placeholder="Correo Electrónico" type="text"><span class="glyphicon glyphicon-ok form-control-feedback"></span>
              </div>
              <div class="form-group has-feedback">
                  <label class="control-label sr-only" for="password">Contraseña</label>
                  <div class="input-group-addon">
                    <div class="glyphicon glyphicon-lock"></div>
                  </div>
                  <input class="form-control" id="password" name="password" placeholder="Contraseña" type="password">
                  <span class="glyphicon glyphicon-ok form-control-feedback"></span>
              </div>
            <div style="text-align:left;height:0px;">
              &nbsp;
              <a href="singup.action">Olvidaste tu clave?</a>&nbsp;
              <!--<a href="singup.html">Registrate</a>-->
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              &nbsp;
              
              &nbsp;&nbsp;&nbsp;&nbsp;
            </div>
            <div class="form-group submit">
              <input class="btn btn-lg" type="submit" value="ENVIAR">
            </div>
          </form>
     </div>



    </td>
  </tr>
</table>
</div>
