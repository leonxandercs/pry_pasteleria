<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html>
<html lang="es">
  <head>
    <meta charset="utf-8" />
    <title>Arma tu Torta</title>
    <link href="css/bootstrap.min.css" media="all" rel="stylesheet">
    <link href="https://netdna.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" media="all" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.1.0/animate.min.css" media="all" rel="stylesheet">
    <link href="http://fonts.googleapis.com/css?family=Raleway:300,500" rel="stylesheet" type="text/css">
    <link href="css/styles.css" media="all" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="https://bootswatch.com/yeti/bootstrap.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/modernizr/2.8.1/modernizr.min.js"></script>
    <meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" name="viewport">

<style type="text/css">

#armado{
  border-radius: 15px 15px 15px 15px;
}
</style>

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
        <li class=""><a href="catalogo.jsp">Catalogo de Productos<span class="sr-only">(current)</span></a></li>
        
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
        <li class="active"><a href="armatutorta.jsp">Arma tu Torta</a></li>
        <li><a href="#">Ofertas</a></li>
        <li class=""><a href="seguimiento.jsp">Seguimiento Pedidos</a></li>
      </ul>
      
      <ul class="nav navbar-nav navbar-right">
        <li>
          <a href="carrito.jsp"><strong>Mi Carrito</strong>&nbsp;<span class="glyphicon glyphicon-shopping-cart"/></a>
        </li>
        <li class="dropdown">
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


<!-- ------------------------------------------------------------- -->


</br>

<!-- ------------------------------------------------------------- -->

<div style="text-align:center;">
  <h2>ARMA TU TORTA</h2>
    <img id="armado" src="img/armame.jpg" width="720px;">
</div>
<div style="text-align:center;">
<table style="margin: 0 auto;">
<tr>
<td>
 <input type="submit" width="40" class="btn btn-primary" value="Resetear Diseño"/>
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
</td>
<td>
<input type="submit" width="40" class="btn btn-primary" value="Enviar Propuesta"/>
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
  &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
   &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
</td>
<td style="background-color:#ECCEF5;">&nbsp;<strong style="color:#C9128F;">PRECIO ESTIMADO: S/.&nbsp;80.90</strong>&nbsp;&nbsp;</td>
</tr>

</table>

</div>


</br>
</br>
</br>





    <script src="js/jquery-1.11.2.js"></script>
    <script src="js/jquery.validation.js"></script>
    <script src="js/messages_es.js"></script>
    <script src="js/main.js"></script>
    <script src="js/bootstrap.min.js"></script>
  </body>
</html>