<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>

<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <meta charset="utf-8" />
    <meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" name="viewport">
    
    <title><tiles:insertAttribute name="title" ignore="true" /></title>
    
    <link href="css/bootstrap.min.css" media="all" rel="stylesheet">
    <link href="https://netdna.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" media="all" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.1.0/animate.min.css" media="all" rel="stylesheet">
    <link href="http://fonts.googleapis.com/css?family=Raleway:300,500" rel="stylesheet" type="text/css">

	<link rel="stylesheet" type="text/css" href="css/bootstrap-datepicker.standalone.css">
	<link href="css/styles_catalogo.css" media="all" rel="stylesheet">
    
    
    <link rel="stylesheet" type="text/css" href="https://bootswatch.com/yeti/bootstrap.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/modernizr/2.8.1/modernizr.min.js"></script>
	<script src="js/jquery-1.11.2.js"></script>
	<script src="js/jquery.bootstrap-growl.js"></script>
	

</head>
<body>

	<div>
		<div>
			<tiles:insertAttribute name="baner"/>
		</div>
				
		<div>
			<tiles:insertAttribute name="menu"/>
		</div>
		<div>
			<tiles:insertAttribute name="body"/>
		</div>
	</div>



<!---------------------------------------------->
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
       var date=new Date();
       var month = date.getMonth()+1;
       var day = date.getDate();
       var year=date.getFullYear();

       ajustar();


       $(window).resize( function() {
         console.log("Cambie de tamaño");
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
           startDate: date,
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