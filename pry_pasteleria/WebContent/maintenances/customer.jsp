<%@taglib uri="/struts-tags" prefix="s" %>
<%@taglib uri="/struts-jquery-tags" prefix="sj"%>

<style type="text/css">
    div.container {
        width:95%;
        margin: 0 auto 0 auto;
        margin-top:5%;
        margin-bottom:5%;    
    }
    .panel-primary{
    	width: 80%;
    	margin: 0 10% 10%;"
    }
    body { font-size: 140% }
 
    table.dataTable th,
    table.dataTable td {
        white-space: nowrap;
    }
</style>
<script>
$(document).ready(function() {
	
	
    var table=$('#example').DataTable( {
       // "processing": true,
        "ajax": {
        	"url":"listCustomer.action",
        	 "dataSrc":"clientes"
        	},
        "columns": [
                    { "data": "idUsuario" },
                    { "data": "nombre" },
                    { "data": "ape_pa" },
                    { "data": "ape_ma" },
                    { "data": "dni" },
                    { "data": "fec_nacimiento" },
                    { "data": "sexo" },
                    { "data": "email" },
                    { "data": "estado_civil" },
                    { "data": "telefono" }
                    
                ]
       , "language": {
           "lengthMenu": "Mostrar _MENU_ Registros por pagina",
           "zeroRecords": "No se hallaron Registros ",
           "info": "Mostrando pagina _PAGE_ de _PAGES_",
           "infoEmpty": "No hay Registros disponibles",
           "infoFiltered": "(filtrado de un total de _MAX_ registros)",
           "search":"Busqueda:",
           "loadingRecords": "Cargando...",    
           "processing":     "Procesando...",
           "paginate": { 
                   "first": "Primero",        
                   "last":   "Ultimo",       
                   "next":   "siguiente",       
                   "previous": "Anterior"    
                  },
       },
       "lengthMenu": [
		              [5,10, 25, 50, -1], 
		              [5,10, 25, 50, "Todo"]
		             ]
       ,responsive:true
        	
        	
    });
    
  
	
	//Setup - add a text input to each footer cell
   /* 
	$('#example tfoot th').each( function () {   
     	var title = $('#example thead th').eq( $(this).index() ).text();  
       $(this).html( '<input type="text" placeholder="Buscar '+title+'" />' );
     });
    
    
    
    // Apply the filter
    /*
    table.columns().every(function(){  
      var column=this; 

      $( 'input', this.footer() ).on( 'keyup change', function () { 
            column
            .search( this.value ) 
            .draw();    
        });
     });
  */
    
    //seleccion x click
    $('#example tbody').on( 'click', 'tr', function () {
        if ( $(this).hasClass('selected') ) {
            $(this).removeClass('selected');
        }
        else {
            table.$('tr.selected').removeClass('selected');
            $(this).addClass('selected');
            var x=$('.selected td')[0].innerHTML;
            alert(x);
        }
     });
  
    
} );

</script>
<div class="panel panel-primary">
	<div class="panel panel-heading">
		<h1 class="panel-title">LISTADO DE CLIENTES</h1>
	</div>
	<div>
	<div class="container">
		<!--  <div class="table-responsive"> -->
			<table id="example" class="table table-striped table-hover dt-responsive" cellspacing="0" width="100%">
			        <thead>
			            <tr>
			                <th>Codigo</th>
			                <th>Nombre</th>
			                <th>A.Paterno</th>
			                <th>A.Materno</th>
			                <th>Dni</th>
			                <th>Nacimiento</th>
			                <th>Sexo</th>
			                <th>Email</th>
			                <th>E.Civil</th>
			                <th>Telefono</th>
			            </tr>
			        </thead>
			 
			        <tfoot>
			            <tr>
			                <th>Codigo</th>
			                <th>Nombre</th>
			                <th>A.Paterno</th>
			                <th>A.Materno</th>
			                <th>Dni</th>
			                <th>Nacimiento</th>
			                <th>Sexo</th>
			                <th>Email</th>
			                <th>E.Civil</th>
			                <th>Telefono</th>
			            </tr>
			        </tfoot>
			    </table>
			   
			<!--  </div>-->
		</div>
	</div>
</div>

