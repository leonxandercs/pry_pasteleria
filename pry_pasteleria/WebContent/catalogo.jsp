<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html>
<html lang="es">
  <head>
    <meta charset="utf-8" />
    <title>Catlálogo de Productos</title>
    <link href="css/bootstrap.min.css" media="all" rel="stylesheet">
    <link href="https://netdna.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" media="all" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.1.0/animate.min.css" media="all" rel="stylesheet">
    <link href="http://fonts.googleapis.com/css?family=Raleway:300,500" rel="stylesheet" type="text/css">
    <link href="css/styles_catalogo.css" media="all" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="https://bootswatch.com/yeti/bootstrap.css">

    <link rel="stylesheet" type="text/css" href="css/bootstrap-datepicker.standalone.css">

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
        <li class="active"><a href="catalogo.html">Catalogo de Productos<span class="sr-only">(current)</span></a></li>
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

<div>
<table>
    <tr>
      <td width="125">


      

<!------------------------------------------------ -->
<div id="filtros" style="height:850px;">
    <form id="frmCatalogo">
        <div class="col-lg-12">
              Cobertura:
              <select class="form-control">
                <option>Chocolate</option>
                <option>Chantilly</option>
                <option>Gelatina</option>
                <option>Merengue</option>
                <option>Maracuya</option>
              </select>
              <br>
              Masa:
              <select  class="form-control">
                <option>Kekes</option>
                <option>Souflés</option>
                <option>Bizcochos</option>
                <option>4</option>
                <option>5</option>
              </select>
            </br>
            Relleno:
              <select  class="form-control">
                <option>Mermelada</option>
                <option>Manjar</option>
                <option>Frutas</option>
                <option>Queso</option>
                <option>Pecanas</option>
              </select>
            </br>
            Ocasión:
              <select  class="form-control">
                <option>Cumpleaños</option>
                <option>Paseo</option>
                <option>Postre</option>
                <option>Matrimonio</option>
                <option>Despedida Soltero</option>
              </select>
            </div>
      </form>
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
      <div class="caption" >
        <h3>Torta1 Label</h3>
         <p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus.</p>
         <p><a href="#" class="btn btn-primary">Agregar al Carrito</a></p>
        </div>
    </div>
  </div>

  <div class="col-xs-6 col-sm-2">
    <div class="thumbnail">
      <img src="img/torta2.png" alt="134x180" width="200">
      <div class="caption">
        <h3>Torta2 Label</h3>
          <p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus.</p>
        <p><a href="#" class="btn btn-primary">Agregar al Carrito</a></p>
      </div>
    </div>
  </div>

  <div class="col-xs-6 col-sm-2">
    <div class="thumbnail">
      <img src="img/torta3.png" alt="134x180" width="200">
      <div class="caption">
        <h3>Torta3 Label</h3>
          <p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus.</p>
        <p><a href="#" class="btn btn-primary">Agregar al Carrito</a></p>
      </div>
    </div>
  </div>

  <div class="col-xs-6 col-sm-2">
    <div class="thumbnail">
      <img src="img/torta4.png" alt="134x180" width="200">
      <div class="caption">
        <h3>Torta4 Label</h3>
          <p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus.</p>
       <p><a href="#" class="btn btn-primary">Agregar al Carrito</a></p>
      </div>
    </div>
  </div>

  <div class="col-xs-6 col-sm-2">
    <div class="thumbnail">
      <img src="img/torta5.png" alt="134x180" width="200">
      <div class="caption">
        <h3>Torta5 Label</h3>
          <p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus.</p>
        <p><a href="#" class="btn btn-primary">Agregar al Carrito</a></p>
      </div>
    </div>
  </div>

  <div class="col-xs-6 col-sm-2">
    <div class="thumbnail">
      <img src="img/torta6.png" alt="134x180" width="200">
      <div class="caption">
        <h3>Torta6 Label</h3>
        <p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus.</p>
      <p><a href="#" class="btn btn-primary">Agregar al Carrito</a></p>
      </div>
    </div>
  </div>
<!---------------------------------------------------------------------->

<div class="col-xs-6 col-sm-2">
    <div class="thumbnail">
      <img src="img/torta1.jpg" alt="134x180" width="200">
      <div class="caption">
        <h3>Torta1 Label</h3>
         <p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus.</p>
        <p><a href="#" class="btn btn-primary">Agregar al Carrito</a></p>
      </div>
    </div>
  </div>

  <div class="col-xs-6 col-sm-2">
    <div class="thumbnail">
      <img src="img/torta2.png" alt="134x180" width="200">
      <div class="caption">
        <h3>Torta2 Label</h3>
          <p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus.</p>
        <p><a href="#" class="btn btn-primary">Agregar al Carrito</a></p>
      </div>
    </div>
  </div>

  <div class="col-xs-6 col-sm-2">
    <div class="thumbnail">
      <img src="img/torta3.png" alt="134x180" width="200">
      <div class="caption">
        <h3>Torta3 Label</h3>
          <p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus.</p>
        <p><a href="#" class="btn btn-primary">Agregar al Carrito</a></p>
      </div>
    </div>
  </div>

  <div class="col-xs-6 col-sm-2">
    <div class="thumbnail">
      <img src="img/torta4.png" alt="134x180" width="200">
      <div class="caption">
        <h3>Torta4 Label</h3>
          <p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus.</p>
        <p><a href="#" class="btn btn-primary">Agregar al Carrito</a></p>
      </div>
    </div>
  </div>

  <div class="col-xs-6 col-sm-2">
    <div class="thumbnail">
      <img src="img/torta5.png" alt="134x180" width="200">
      <div class="caption">
        <h3>Torta5 Label</h3>
          <p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus.</p>
        <p><a href="#" class="btn btn-primary">Agregar al Carrito</a></p>
      </div>
    </div>
  </div>

  <div class="col-xs-6 col-sm-2">
    <div class="thumbnail">
      <img src="img/torta6.png" alt="134x180" width="200">
      <div class="caption">
        <h3>Torta6 Label</h3>
        <p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus.</p>
        <p><a href="#" class="btn btn-primary">Agregar al Carrito</a></p>
      </div>
    </div>
  </div>


<div class="col-xs-6 col-sm-2">
    <div class="thumbnail">
      <img src="img/torta1.jpg" alt="134x180" width="200">
      <div class="caption">
        <h3>Torta1 Label</h3>
         <p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus.</p>
        <p><a href="#" class="btn btn-primary">Agregar al Carrito</a></p>
      </div>
    </div>
  </div>

  <div class="col-xs-6 col-sm-2">
    <div class="thumbnail">
      <img src="img/torta2.png" alt="134x180" width="200">
      <div class="caption">
        <h3>Torta2 Label</h3>
          <p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus.</p>
       <p><a href="#" class="btn btn-primary">Agregar al Carrito</a></p>
      </div>
    </div>
  </div>

  <div class="col-xs-6 col-sm-2">
    <div class="thumbnail">
      <img src="img/torta3.png" alt="134x180" width="200">
      <div class="caption">
        <h3>Torta3 Label</h3>
          <p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus.</p>
        <p><a href="#" class="btn btn-primary">Agregar al Carrito</a></p>
      </div>
    </div>
  </div>

  <div class="col-xs-6 col-sm-2">
    <div class="thumbnail">
      <img src="img/torta4.png" alt="134x180" width="200">
      <div class="caption">
        <h3>Torta4 Label</h3>
          <p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus.</p>
        <p><a href="#" class="btn btn-primary">Agregar al Carrito</a></p>
      </div>
    </div>
  </div>

  <div class="col-xs-6 col-sm-2">
    <div class="thumbnail">
      <img src="img/torta5.png" alt="134x180" width="200">
      <div class="caption">
        <h3>Torta5 Label</h3>
          <p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus.</p>
          <p><a href="#" class="btn btn-primary">Agregar al Carrito</a></p>
      </div>
    </div>
  </div>

  <div class="col-xs-6 col-sm-2">
    <div class="thumbnail">
      <img src="img/torta6.png" alt="134x180" width="200">
      <div class="caption">
        <h3>Torta6 Label</h3>
        <p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus.</p>
        <p><a href="#" class="btn btn-primary">Agregar al Carrito</a></p>
      </div>
    </div>
  </div>

</div><!--- Fin ROW  -->

</div><!-- Fin panel-->
<!---------------------------------------------->


    </td>
  </tr>
</table>
</div>


        <!-- Modal -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
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
               <td><input  type="number" min=1></td>
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
                  <input  id="fecha" class="form-control" type="text">
                  <span class="input-group-addon">
                    <i class="glyphicon glyphicon-th"></i>
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
        <button type="button" class="btn btn-primary">
        Agregar al Carrito</button>
      </div>
    </div>
  </div>
</div>


    <script src="js/jquery-1.11.2.js"></script>
    <script src="js/jquery.validation.js"></script>
    <script src="js/messages_es.js"></script>
    <script src="js/main.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/bootstrap-datepicker.js"></script>
    <script src="js/bootstrap-datepicker.es.min.js"></script>
    


     <script>
     // A $( document ).ready() block.
      $( document ).ready(function() {

        var patron = /^\d*$/;        
        var subtotal=$("#price");
        var d=new Date();
        var month = d.getMonth()+1;
        var day = d.getDate();
        var year=d.getFullYear();



        ajustar();


        $(window).resize( function() {
          console.log("Cambié de tamaño");
          ajustar();
        } );


         function ajustar(){
           console.log( "ready!" );
           var columna1=$("#filtros");
           var result = $("#rowcatalogo").height();
           columna1.height(result);
           console.log(result);
         }



        $(".caption p a").click(function(){
          var modal=$("#myModal");
          updateModal(this);
          modal.modal('show');
        });


      $('.input-group.date').datepicker({
            language: "es",
            datesDisabled:[
                            day+'/'+month+'/'+year,
                            day+1+'/'+month+'/'+year
                          ]
                 
        });

      $("#myModal input[type=number]").change(function(){
            var number=this.value*60;
            if (validatenumber()) {
              subtotal.text(number);
            };
       });

      /* $("#myModal input[type=number]").keydown(function(){
          if (!patron.test(this.value)) {
            alert('numero invalido,no se permite decimales ni negativos');
          }
       });*/
       function validatenumber(){
        $("#myModal input[type=number]").keyup(function(){
          if (!patron.test(this.value)) {
            alert('numero invalido,no se permite decimales ni negativos');
            this.value=1;
            subtotal.text(60);
            console.log('mensaje:keyup');
            return false;
          }
         // return true;
       });
        return true;
       }


        function updateModal(elemento){
          var imagen=$("#myModal .modal-body img");
          var title=$("#myModal h3");
          getImageSelected(elemento,imagen,title);
        }

        function getImageSelected(elemento,imagen,titulo){
          var father=$(elemento).parent("p").parent(".caption").parent(".thumbnail");

          var titleFather=$(elemento).parent("p").parent(".caption").find('h3').text();

          var img=$(father).find('img').clone();

          $(imagen).replaceWith(img);

          console.log('titulo antes: '+ $(titulo).text());

          $(titulo).text(titleFather);

          console.log('titulo despues: '+titleFather);
        }
        
      });
    </script>

  </body>
</html>