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
    $('#example').dataTable( {
        "processing": true,
        "ajax": {
        	"url":"listCustomer.action",
        	 "dataSrc":"clientes"
        	},
        "columns": [
                    { "data": "nombre" },
                    { "data": "rol.descripcion" },
                    { "data": "ape_pa" },
                    { "data": "ape_ma" },
                    { "data": "telefono" },
                    { "data": "celular" }
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
       }
    } );
} );

</script>
<div class="panel panel-primary">
	<div class="panel panel-heading">
		<h1 class="panel-title">LISTADO DE CLIENTES</h1>
	</div>
	<div>
	<div class="container">
		<div class="table-responsive">
			<table id="example" class="table table-responsive table-striped table-bordered table-hover" cellspacing="0" width="100%">
			        <thead>
			            <tr>
			                <th>Name</th>
			                <th>Position</th>
			                <th>Office</th>
			                <th>Extn.</th>
			                <th>Start date</th>
			                <th>Salary</th>
			            </tr>
			        </thead>
			 
			        <tfoot>
			            <tr>
			                 <th>Name</th>
			                <th>Position</th>
			                <th>Office</th>
			                <th>Extn.</th>
			                <th>Start date</th>
			                <th>Salary</th>
			            </tr>
			        </tfoot>
			    </table>
			   
			</div>
		</div>
	</div>
</div>

