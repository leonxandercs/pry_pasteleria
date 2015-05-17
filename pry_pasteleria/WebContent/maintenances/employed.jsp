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
</style>
<script>
$(document).ready(function() {
	
    var table=$('#example').DataTable( {
        "processing": true,
        "ajax": {
        	"url":"listEmployed.action",
        	 "dataSrc":"empleados"
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
                    { "data": "telefono" },
                    { "data": "rol.descripcion" }
                    
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
       responsive:true
    });
    
    
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
		<h1 class="panel-title">LISTADO DE EMPLEADOS</h1>
	</div>
	<div>
	<div class="container">
	<!--<div class="table-responsive">  -->
			<table id="example" class="table table-responsive table-striped table-bordered table-hover" cellspacing="0" width="100%">
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
			                <th>Rol</th>
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
			                <th>Rol</th>
			            </tr>
			        </tfoot>
			    </table>
			   
			<!--</div>-->
		</div>
	</div>
</div>

