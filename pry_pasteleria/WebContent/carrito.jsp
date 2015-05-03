<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html>
<html lang="es">
  <head>
    <meta charset="utf-8" />
    <title>Carrito de Compras</title>
    <link href="css/bootstrap.min.css" media="all" rel="stylesheet">
    <link href="https://netdna.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" media="all" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.1.0/animate.min.css" media="all" rel="stylesheet">
    <link href="http://fonts.googleapis.com/css?family=Raleway:300,500" rel="stylesheet" type="text/css">
    <link href="css/styles.css" media="all" rel="stylesheet">
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
        <li class=""><a href="catalogo.html">Catalogo de Productos<span class="sr-only">(current)</span></a></li>
        
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
        <li class="active">
          <a href="carrito.html"><strong>Mi Carrito</strong>&nbsp;<span class="glyphicon glyphicon-shopping-cart"/></a>
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

<div>

<table class="table table-striped table-hover " style="margin-rigth:40px;">
  <thead>
    <tr class="info">
      <th>#</th>
      <th>Producto</th>
      <th>Codigo</th>
      <th>Cantidad</th>
      <th>Precio</th>
      <th>Subtotal</th>
      <th></th>
    </tr>
  </thead>
  <tbody>
    <tr class="info">
      <td>1</td>
      <td>Column content</td>
      <td>Column content</td>
      <td><input type="number" min=0></td>
      <td>S/.40.00</td>
      <td>S/.120.00</td>
     <td><a href="#"><span class="glyphicon glyphicon-trash"></span></a></td>
    </tr>
    <tr class="info">
      <td>2</td>
      <td>Column content</td>
      <td>Column content</td>
      <td><input type="number" min=0></td>
       <td>S/.70.00</td>
      <td>S/.140.00</td>
       <td><a href="#"><span class="glyphicon glyphicon-trash"></span></a></td>
    </tr>
    <tr class="info">
      <td>3</td>
      <td>Column content</td>
      <td>Column content</td>
      <td><input type="number" min=0></td>
      <td>S/.60.00</td>
      <td>S/.120.00</td>
      <td><a href="#"><span class="glyphicon glyphicon-trash"></span></a></td>
    </tr>
    <tr class="success">
      <td>4</td>
      <td>Column content</td>
      <td>Column content</td>
      <td><input type="number" min=0></td>
      <td>S/.30.00</td>
      <td>S/.60.00</td>
      <td><a href="#"><span class="glyphicon glyphicon-trash"></span></a></td>
    </tr>
    <tr class="info">
      <td>5</td>
      <td>Column content</td>
      <td>Column content</td>
     <td><input type="number" min=0></td>
     <td>S/.45.00</td>
      <td>S/.45.00</td>
      <td><a href="#"><span class="glyphicon glyphicon-trash"></span></a></td>
    </tr>
  </tbody>
  <tfoot>
    <tr>
          <td></td>
         <td></td>
          <td></td>
          <td></td>
         <td  class="danger"><strong>Sub Total:</strong></td>
          <td  class="danger"><strong>S/.200.00</strong></td>
    </tr>
  </tfoot>
</table> 

<!-- ------------------------------------------------------------- -->

<div style="text-align:right;margin-right:80px;">
  <a href="catalogo.html" class="btn btn-primary">Agregar Productos</a>
  <input type="submit" class="btn btn-success" value="Realizar Pedido"/>
</div>

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