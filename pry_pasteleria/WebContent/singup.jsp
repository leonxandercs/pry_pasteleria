<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html>
<html lang="es">
  <head>
    <meta charset="utf-8" />
    <title>Validación de Formularios con Animación</title>
    <link href="css/bootstrap.min.css" media="all" rel="stylesheet">
    <link href="https://netdna.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" media="all" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.1.0/animate.min.css" media="all" rel="stylesheet">
    <link href="http://fonts.googleapis.com/css?family=Raleway:300,500" rel="stylesheet" type="text/css">
    <link href="css/styles_reg.css" media="all" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="https://bootswatch.com/yeti/bootstrap.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/modernizr/2.8.1/modernizr.min.js"></script>
    <meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" name="viewport">
  </head>
  <body>

<div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
  <!-- Indicators -->
  <ol class="carousel-indicators">
    <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
    <li data-target="#carousel-example-generic" data-slide-to="1"></li>
    <li data-target="#carousel-example-generic" data-slide-to="2"></li>
  </ol>

  <!-- Wrapper for slides -->
  <div class="carousel-inner" role="listbox">
    <div class="item active">
      <img src="img/baner1.jpg" alt="200x100" width="100%">
      <div class="carousel-caption">
      </div>
    </div>
    <div class="item">
      <img src="img/baner2.jpg" alt="200x100" width="100%">
      <div class="carousel-caption">
      </div>
    </div>
    <div class="item">
      <img src="img/baner3.jpeg" alt="200x100" width="100%">
      <div class="carousel-caption">
      </div>
    </div>
  </div>

  <!-- Controls -->
  <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>


<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-2">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="#">Home</a>
    </div>

    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-2">
      <ul class="nav navbar-nav">
        <li><a href="catalogo.html">Catalogo de Productos<span class="sr-only">(current)</span></a></li>
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">Tortas Especiales<span class="caret"></span></a>
          <ul class="dropdown-menu" role="menu">
            <li><a href="#">Bautizo</a></li>
            <li><a href="#">Primera Comunión</a></li>
            <li><a href="#">Graduación</a></li>
            <li class="divider"></li>
            <li><a href="#">Matrimonio</a></li>
            <li class="divider"></li>
            <li><a href="#">Cumpleaños</a></li>
          </ul>
        </li>
        <li><a href="armatutorta.html">Arma tu Torta</a></li>
        <li><a href="#">Ofertas</a></li>
        <li><a href="seguimiento.html">Seguimiento Pedidos</a></li>
      </ul>
      
      <ul class="nav navbar-nav navbar-right">
        <li>
          <a href="carrito.html"><strong>Mi Carrito</strong>&nbsp;<span class="glyphicon glyphicon-shopping-cart"/></a>
        </li>
        <li class="active dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">Mi Cuenta&nbsp;<span class="glyphicon glyphicon-cog"></span></a>
          <ul class="dropdown-menu" role="menu">
            <li><a href="#">Mi Perfil</a></li>
            <li><a href="#">Cambiar Clave</a></li>
            <li class="divider"></li>
            <li><a href="#">Cerrar Sesión</a></li>
          </ul>
        </li>
      </ul>
    </div>
  </div>
</nav>







    

      <div class="form-header">
        <h1>REGISTRO DE CLIENTE</h1>
      </div>
      <form class="form animate-form" id="form" onsubmit="return false;">
        

      <table width="800" id="table_registro">

        <tr>
          <td width="400px">

       <div class="form-group has-feedback">
          <label class="control-label sr-only" for="email">Correo electronico</label>
          <div class="input-group-addon">
            <div class="glyphicon glyphicon-envelope"></div>
          </div>
          <input class="form-control" id="email" name="email" placeholder="Correo electronico" type="text"><span class="glyphicon glyphicon-ok form-control-feedback"></span>
        </div>
        
        <div class="form-group has-feedback">
          <label class="control-label sr-only" for="password">Contraseña</label>
          <div class="input-group-addon">
            <div class="glyphicon glyphicon-lock"></div>
          </div>
          <input class="form-control" id="password" name="password" placeholder="Contraseña" type="password"><span class="glyphicon glyphicon-ok form-control-feedback"></span>
        </div>

        
          <div class="form-group has-feedback">
          <label class="control-label sr-only" for="password">Contraseña</label>
          <div class="input-group-addon">
            <div class="glyphicon glyphicon-lock"></div>
          </div>
          <input class="form-control" id="password" name="password" placeholder="Confirmar Contraseña" type="password" required="true">
          <span class="glyphicon glyphicon-ok form-control-feedback"></span>
        </div>

        <div class="form-group has-feedback">
          <label class="control-label sr-only" for="username">Nombre Completo</label>
          <div class="input-group-addon">
            <div class="glyphicon glyphicon-user"></div>
          </div>
          <input class="form-control" id="username" name="text" placeholder="Nombre Completo" type="text">
          <span class="glyphicon glyphicon-ok form-control-feedback"></span>
        </div>

        <div class="form-group has-feedback">
          <label class="control-label sr-only" for="email">Apellido Paterno</label>
          <div class="input-group-addon">
            <div class="glyphicon glyphicon-user"></div>
          </div>
          <input class="form-control" id="email" name="text" placeholder="Apellido Paterno" type="text"><span class="glyphicon glyphicon-ok form-control-feedback"></span>
        </div>

        <div class="form-group has-feedback">
          <label class="control-label sr-only" for="email">Apellido Materno</label>
          <div class="input-group-addon">
            <div class="glyphicon glyphicon-user"></div>
          </div>
          <input class="form-control" id="email" name="text" placeholder="Apellido Materno" type="text"><span class="glyphicon glyphicon-ok form-control-feedback"></span>
        </div>

          <div class="form-group has-feedback">
          <label class="control-label sr-only" for="email">Documento DNI</label>
          <div class="input-group-addon">
            <div class="glyphicon glyphicon-file"></div>
          </div>
          <input class="form-control" id="email" name="text" placeholder="Documento DNI" type="text"><span class="glyphicon glyphicon-ok form-control-feedback"></span>
        </div>

        <div class="form-group has-feedback">
          <div class="input-group">
            <div class="radio">Seleccione Sexo:&nbsp;&nbsp;&nbsp;&nbsp;
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <label><input type="radio" name="optradio">Masculino</label>
                &nbsp;&nbsp;&nbsp;&nbsp;
                <label><input type="radio" name="optradio">Femenino</label>
            </div>
          </div>
        </div>

         <div class="form-group submit">
            <a href="login.html" style="background-color:#7E506C;">CANCELAR</a> 
        </div>
<!------------------------------------------>
        </td>
        <td width="80px"></td>
        <td width="400px">

       
       <div class="form-group has-feedback">
          <label class="control-label sr-only" for="email">Telefono</label>
          <div class="input-group-addon">
            <div class="glyphicon glyphicon-phone-alt"></div>
          </div>
          <input class="form-control" id="email" name="number" placeholder="Telefono" type="text"><span class="glyphicon glyphicon-ok form-control-feedback"></span>
        </div>

        <div class="form-group has-feedback">
          <label class="control-label sr-only" for="email">Celular</label>
          <div class="input-group-addon">
            <div class="glyphicon glyphicon-earphone"></div>
          </div>
          <input class="form-control" id="email" name="number" placeholder="Celular" type="text"><span class="glyphicon glyphicon-ok form-control-feedback"></span>
        </div>


        <div class="form-group has-feedback">
          <label class="control-label sr-only" for="nacimiento">Fecha Nacimiento</label>
          <div class="input-group-addon">
            <div class="glyphicon glyphicon-calendar"></div>
          </div>
          <input class="form-control" id="nacimiento" name="text" placeholder="Fecha Nacimiento" type="text"><span class="glyphicon glyphicon-ok form-control-feedback"></span>
        </div>

        <div class="form-group has-feedback">
          <label class="control-label sr-only" for="password">Departamento</label>
          <div class="input-group-addon">
            <div class="glyphicon glyphicon-list-alt"></div>
          </div>
          <select class="form-control">
              <option  value="0">Seleccione Departamento</option>
              <option  value="1">Lima</option>
              <option  value="2">Anchash</option>
              <option  value="3">Apurimac</option>
              <option  value="4">Cuzco</option>
              <option  value="5">Cajamarca</option>
            </select>
        </div>

         <div class="form-group has-feedback">
          <label class="control-label sr-only" for="password">Provincia</label>
          <div class="input-group-addon">
            <div class="glyphicon glyphicon-list-alt"></div>
          </div>
          <select class="form-control">
              <option  value="0">Seleccione Provincia</option>
              <option  value="1">Lima</option>
              <option  value="2">Anchash</option>
              <option  value="3">Apurimac</option>
              <option  value="4">Cuzco</option>
              <option  value="5">Cajamarca</option>
            </select> 
        </div>

        <div class="form-group has-feedback">
          <label class="control-label sr-only" for="password">Distrito</label>
          <div class="input-group-addon">
            <div class="glyphicon glyphicon-list-alt"></div>
          </div>
          <select class="form-control">
              <option  value="0">Seleccione Distrito</option>
              <option  value="1">Lima</option>
              <option  value="2">Anchash</option>
              <option  value="3">Apurimac</option>
              <option  value="4">Cuzco</option>
              <option  value="5">Cajamarca</option>
            </select> 
        </div>
   
     <div class="form-group has-feedback">
          <label class="control-label sr-only" for="email">Direccion</label>
          <div class="input-group-addon">
            <div class="glyphicon glyphicon-home"></div>
          </div>
          <input class="form-control" id="email" name="text" placeholder="Direccion" type="text"><span class="glyphicon glyphicon-ok form-control-feedback"></span>
        </div>


        <div class="form-group has-feedback">
          <div class="input-group">
            <div class="radio">
            <h4>&nbsp;&nbsp;&nbsp;&nbsp;</h4>
            </div>
          </div>
        </div>

         <div class="form-group submit">
            <input class="btn btn-lg" type="submit" value="REGISTRAR"
            style="background-color:#A1477E;"> 
        </div>

      </td>
        </tr>

      </table>

        <!-------------------------------

        <div class="form-group has-feedback">
          <select class="form-control lg">
              <option  value="0">Seleccione Departamento</option>
              <option  value="1">Lima</option>
              <option  value="2">Anchash</option>
              <option  value="3">Apurimac</option>
              <option  value="4">Cuzco</option>
              <option  value="5">Cajamarca</option>
            </select>
          <div class="input-group-addon">
            <span class="glyphicon glyphicon-ok form-control-feedback"></span>
          </div>
         </div>
  -------->

          <!-------------------------------->

      <!--
        <div class="form-group submit">
            <input class="btn btn-lg" type="submit" value="REGISTRAR"> 
        </div>
      -->
      </form>
      <div>
        <h1></h1>
      </div>


    <script src="js/jquery-1.11.2.js"></script>
    <script src="js/jquery.validation.js"></script>
    <script src="js/messages_es.js"></script>
    <script src="js/main.js"></script>
    <script src="js/bootstrap.min.js"></script>
  </body>
</html>