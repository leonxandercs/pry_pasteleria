<%@taglib uri="/struts-tags" prefix="s" %>
<%@taglib uri="/struts-jquery-tags" prefix="sj"%>
<%@taglib uri="/struts-jquery-grid-tags" prefix="sjg" %>
<%@taglib uri="/struts-bootstrap-tags" prefix="sb"%>

<style type="text/css">
    div.container {
        width:95%;
        margin: 0 auto 0 auto;
        /*margin-top:5%;*/
        margin-bottom:5%;    
    }
    .panel-primary{
    	width: 80%;
    	margin: 0 10% 10%;"
    }
</style>
<script>
$(document).ready(function() {
	
    var table=$('#example').DataTable({
        "processing": true,
        "ajax": {
        	"url":"listProduct.action",
        	 "dataSrc":"productos"
        	},
        "columns": [
                    { "data": "idProducto" },
                    { "data": "descripcion" },
                    { "data": "stock" },
                    { "data": "precio" },
                    { "data": "image_resource" },
                    { "data": "categoria.descripcion" },
                    { "data": "cobertura.descripcion" },
                    { "data": "masa.descripcion" },
                    { "data": "relleno.descripcion" },
                    
                ]
       , "language": {
           "lengthMenu": "Mostrar _MENU_ Registros por pagina",
           "zeroRecords": "No se hallaron Registros ",
           "info": "Mostrando pagina _PAGE_ de _PAGES_",
           "infoEmpty": "No hay Registros disponibles",
           "infoFiltered": "(filtrado de un total de _MAX_ registros)",
           "search":"Búsqueda:",
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
    
    
    
    /* Actualizando las Imagenes del DataTable*/

    $('#example')
       .on( 'order.dt',  function () { console.log('Order' );updateImages();} )
       .on( 'search.dt', function () {console.log('Search' );} )
       .on( 'page.dt',   function () { console.log('Page' );updateImages();} )
       .dataTable();

       function updateImages(){

             setTimeout(function(){

                   $("tr").each(function(){
                       var k=$(this).children("td").eq(4);
                   
                        var j= $(k).html();
                        var str=new String(j); 
                        var contenido=str.substring(0,4);

                        if(contenido=='<img'){
                           console.log('ya tiene imagen');
                        }else{
                           console.log('No tiene imagen se Actualizara');
                           $(k).html("<img src='img/" + j + "' width=\'100\' heigth=\'100\'/>");
                        }
					});
                   
              },500);
       }
       
   /* Actualizando las Imagenes del DataTable */
    
    
    
    /*Evento Un click*/
    $('#example tbody').on( 'click', 'tr', function () {
        if ( $(this).hasClass('selected') ) {
            $(this).removeClass('selected');
        }
        else {
            table.$('tr.selected').removeClass('selected');
            $(this).addClass('selected');
            var dato1=$(".selected td")[0].innerHTML;
            var dato2=$(".selected td")[1].innerHTML;
            var dato3=$(".selected td")[2].innerHTML;
            var dato4=$(".selected td")[3].innerHTML;
            var dato5=$(".selected td")[4].innerHTML;
            var dato6=$(".selected td")[5].innerHTML;
            var dato7=$(".selected td")[6].innerHTML;
            var dato8=$(".selected td")[7].innerHTML;
            var dato9=$(".selected td")[8].innerHTML;		
            mostrarmodal(dato1,dato2,dato3,dato4,dato5,dato6,dato7,dato8,dato9);
       
        }
     });
    
    /*  Evento Doble click */
    $('#example tbody').on( 'dblclick', 'tr', function () {
   	
       if ( $(this).hasClass('selected') ) {
           $(this).removeClass('selected');
       }
       else {
           table.$('tr.selected').removeClass('selected');
           $(this).addClass('selected');
         //----------------------------
            var dato1=$(".selected td")[0].innerHTML;
           var dato2=$(".selected td")[1].innerHTML;
           var dato3=$(".selected td")[2].innerHTML;
           var dato4=$(".selected td")[3].innerHTML;
           var dato5=$(".selected td")[4].innerHTML;
           var dato6=$(".selected td")[5].innerHTML;
           var dato7=$(".selected td")[6].innerHTML;
           var dato8=$(".selected td")[7].innerHTML;	
           var dato9=$(".selected td")[8].innerHTML;      
           mostrarmodal(dato1,dato2,dato3,dato4,dato5,dato6,dato7,dato8,dato9);
	    	$('#myModalNuevo').modal();	
	    	$("#delete").show();
       }
  	 });
    
    //--------function modal -----------
    function mostrarmodal(dato1,dato2,dato3,dato4,dato5,dato6,dato7,dato8,dato9){
    	  $('#myModalNuevo').on('show.bs.modal', function (event) {
		  var modal = $(this);
		  modal.find('.modal-header h4').text('Modificar Producto: ' + dato1);
	
		  modal.find('.modal-body #idProducto').val(dato1);
		  modal.find('.modal-body #descripcion').val(dato2);
		  modal.find('.modal-body #stock').val(dato3);
		  modal.find('.modal-body #precio').val(dato4);
		  modal.find('.modal-body #imagen').val(dato5);
		  modal.find('.modal-body #cbocategoria').val(dato6);
		  modal.find('.modal-body #cbocobertura').val(dato7);
		  modal.find('.modal-body #cbomasa').val(dato8);
		  modal.find('.modal-body #cborelleno').val(dato9);
		});
    }
    
    //Clean Fields
    function limpiarfields(){
		/* Limpiar el Validate */
	    $('.modificar .form-group').removeClass('has-error');
	    $(".help-block").hide();
	    /* Limpiar el Validate */
	    $('.registrar .form-group').removeClass('has-error');
	    $(".help-block").hide();
	    /* Limpiar el Modal */
		var modal =$('#myModalNuevo');
		modal.find('.modal-body input').val('');
		//modal.find('.modal-body #precio').val('S/.0.00');
		$('#cbocategoria').val(0);
		$('#cbocobertura').val(0);
		$('#cbomasa').val(0);
		$('#cborelleno').val(0);
		}
    
    function verNuevo(){
    	var modal =$('#myModalNuevo');
    	$('#myModalNuevo').modal('show');
    	limpiarfields();
    	modal.find('.modal-header h4').text('Registrar Producto: ');
    	modal.find('.modal-body #idProducto').val('0');
    	$("#delete").hide();
    };

	$('#btnNuevo').click(function(){
	    	limpiarfields();
			verNuevo();
	});
	
	function formatodel(cellvalue,data,options){
		return "<a href=javascript:eliminar('"+cellvalue+"')><span class=\"glyphicon glyphicon-trash\"></span></a>";
	}
	

	  $('#delete').click(function(){
	      	$('#borrame').remove();
	      	var modal = $('#myModalNuevo');
	      	var id=modal.find('.modal-body #idProducto').val();
	      	var c1="<a id=\"borrame\" class=\"btn btn-primary \" ";
	      	var str1 = "href=\"deleteProduct?producto.idProducto=";
	        var str2 = "\">Si</a>";
	        var res = c1.concat(str1,id,str2);
	          
	      	$("#conexionServer").before(res);
	      });
	
} );

</script>
<div class="panel panel-primary">
	<div class="panel panel-heading">
		<h1 class="panel-title">LISTADO DE PRODUCTOS</h1>
	</div>
	
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<a href="#" class="btn btn-primary" data-toggle="modal" id="btnNuevo">+ Nuevo</a>
  	<p/>
	<div class="container">
	<!--<div class="table-responsive">  -->
			<table id="example" class="table table-responsive table-striped table-bordered table-hover" cellspacing="0" width="100%">
			        <thead>
			            <tr>
			                <th>Codigo</th>
			                <th>Producto</th>
			                <th>Stock</th>
			                <th>Precio</th>
			                <th>image_resource</th>
			                <th>Categoria</th>
			                <th>Cobertura</th>
			                <th>Masa</th>
			                <th>Relleno</th>
			            </tr>
			        </thead>
			 
			        <tfoot>
			            <tr>
			                <th>Codigo</th>
			                <th>Producto</th>
			                <th>Stock</th>
			                <th>Precio</th>
			                <th>image_resource</th>
			                <th>Categoria</th>
			                <th>Cobertura</th>
			                <th>Masa</th>
			                <th>Relleno</th>
			            </tr>
			        </tfoot>
			    </table>
			   
			<!--</div>-->
		</div>
	
</div>





<!-- -----------Modal Register New------------ -->

<div class="modal fade" id="myModalNuevo" role="dialog" ria-hidden="true">
<div class="modal-dialog">
  <div class="modal-content">
  <s:form action="saveProduct" theme="bootstrap" cssClass="well form-vertical">
    <div class="modal-header">
    	<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
    	<h4>Registrar Empleado</h4>
    </div>
		<div class="modal-body">
	    		<s:hidden id="idProducto" name="producto.idProducto" />
	    	<div class="form-group">
		   		<s:textfield label="Producto :" name="producto.descripcion" id="descripcion" cssClass="form-control"/>
	    	</div>
	    	
	    	<div class="form-group">
	    		<s:textfield label="Stock :" name="producto.stock" id="stock" cssClass="form-control"/>
	    	</div>
	    	<div class="form-group">
	    		<s:textfield label="Precio :" name="producto.precio" id="precio" cssClass="form-control"/>
	    	</div>
	    	<div class="form-group">
	    		<s:textfield label="Imagen :" name="producto.image_resource" id="imagen" cssClass="form-control"/>
	    	</div>
	    	<div class="form-group">
	    			<s:url id="URL_ListCategorys" action="listCategory"/>
					<sj:select cssClass="form-control"
					id="cbocategoria" 
					label="Categoria :"
					list="categorias"
					listKey="idCategoria"
					listValue="descripcion"
					href="%{URL_ListCategorys}"
					headerKey="0"
					headerValue="--Seleccione--" 
					name="producto.categoria.idCategoria" />
	    	</div>
	    	<div class="form-group">
	    		<s:url id="URL_ListCoverages" action="listCoverage"/>
				<sj:select cssClass="form-control" 
					id="cbocobertura" 
					label="Cobertura :"
					list="coberturas"
					listKey="idCobertura"
					listValue="descripcion"
					href="%{URL_ListCoverages}"
					headerKey="0"
					headerValue="--Seleccione--" 
					name="producto.cobertura.idCobertura" />
	    	</div>
	    	<div class="form-group">
	    		<s:url id="URL_ListDoughs" action="listDough"/>
				<sj:select cssClass="form-control"
					id="cbomasa" 
					label="Masa :"
					list="masas"
					listKey="idMasa"
					listValue="descripcion"
					href="%{URL_ListDoughs}"
					headerKey="0"
					headerValue="--Seleccione--" 
					name="producto.masa.idMasa" />
	    	</div>
	    	<div class="form-group">
	    		<s:url id="URL_ListFillings" action="listFilling"/>
				<sj:select cssClass="form-control"
					id="cborelleno" 
					label="Relleno :"
					list="rellenos"
					listKey="idRelleno"
					listValue="descripcion"
					href="%{URL_ListFillings}"
					headerKey="0"
					headerValue="--Seleccione--" 
					name="producto.relleno.idRelleno" />
	    	</div>
   		 </div>
      <div class="modal-footer">
  	  <div style="text-align:left;">
  	  		<s:submit cssClass="btn btn-primary" value="Guardar"/>&nbsp;&nbsp;
  	  		<s:reset  id="cleanForm" cssClass="btn btn-primary" value="Limpiar"/>
   	  		<button  id="delete" type="button" class="btn btn-danger" data-toggle="modal" data-target=".bs-example-modal-sm">Eliminar</button>&nbsp;&nbsp;
   	  </div>
      	<button type="button" class="btn btn-default" data-dismiss="modal">Cancelar</button>
    </div>
    </s:form>
  </div><!-- /.modal-content -->
</div><!-- /.modal-dialog -->

</div>
<!-- -----------END MODAL NUEVO --------------- -->

<!-- ------------Show Message Modal------------ -->
<div class="modal fade bs-example-modal-sm" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-sm">
    <div class="modal-content">
    <div class="modal-header">
    	<h4 class="modal-title">Guardar Cambios</h4>
    </div>
    <form action="">
      <div class="modal-body" style="text-align: right;">
         <button type="button" class="btn btn-default" data-dismiss="modal">No</button>
         <div id="conexionServer"></div>
         <!--  <button type="button" class="btn btn-primary eliminar" data-dismiss="modal">Si</button>
         <input type="hidden" value="delete" name="accion"></input>-->
         </div>
     </form>
      </div>
    </div>
  </div>



