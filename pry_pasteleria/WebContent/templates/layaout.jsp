<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="/struts-tags" prefix="s" %>
    <%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <meta charset="utf-8" />
    <link href="css/bootstrap.min.css" media="all" rel="stylesheet">
    <link href="https://netdna.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" media="all" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.1.0/animate.min.css" media="all" rel="stylesheet">
    <link href="http://fonts.googleapis.com/css?family=Raleway:300,500" rel="stylesheet" type="text/css">
    <link href="css/styles_account.css" media="all" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="https://bootswatch.com/yeti/bootstrap.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/modernizr/2.8.1/modernizr.min.js"></script>
    <meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" name="viewport">
</head>
<body>

	<div>
		<div>
			<tiles:insertAttribute name="baner"/>
		</div>
				
		<div>
			<tiles:insertAttribute name="menu"/>
		</div>
	</div>





<!---------------------------------------------->
    <script src="js/jquery-1.11.2.js"></script>
    <script src="js/jquery.validation.js"></script>
    <script src="js/messages_es.js"></script>
    <script src="js/main.js"></script>
    <script src="js/bootstrap.min.js"></script>
     <script>
     // A $( document ).ready() block.
      $( document ).ready(function() {

        ajustar();


        $(window).resize( function() {
          console.log("Cambie de tamaño");
          ajustar();
        } );


         function ajustar(){
           console.log( "ready!" );
          var columna1=$("#filtros");
           var alto = $("#colum2").height();
           var ancho=$('#colum2').width();
           columna1.height(alto);
           //columna1.width(ancho);
           console.log(result);
         }

      });
    </script>
</body>
</html>