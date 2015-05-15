<%@ taglib uri="/struts-tags" prefix="s" %>
<%@taglib uri="/struts-jquery-tags" prefix="sj" %>
<%@taglib uri="/struts-jquery-grid-tags" prefix="sjg" %>

<style>
.label{
font-size:0.6em;
color: black;
}
.ui-jqgrid-title{
font-size:1.3em;
}
table{
font-size:1.2em;
}
</style>

<script>
	function cleaner(){
		
		$('#txtdescripcion').val('');
		$('#txtstock').val('');
		$('#txtprecio').val('');
		$('#txtimagen').val('');
		
		$('#cbocategoria').val(0);
		$('#cbocobertura').val(0);
		$('#cbomasa').val(0);
		$('#cborelleno').val(0);
	}

	function abrirVentana(){
		cleaner();
		$('#dialog1').dialog("open");
		$('#txtid').val(0);
	}
	$.subscribe('cerrarVentana',function(event,data){
		$('#dialog1').dialog("close");
	});
	
	function formatimage(cellvalue,data,options){
		return "<img src='img/"+cellvalue+"' width=100>";
	}
	
	function formatodel(cellvalue,data,options){
		return "<a href=javascript:eliminar('"+cellvalue+"')><span class=\"glyphicon glyphicon-trash\"></span></a>";
	}
	function eliminar(cellvalue){
		$.getJSON("deleteProduct?producto.idProducto="+cellvalue,function(datos){
			$.publish('cargaGrid');
			alert("Registro Eliminado");
		});
	}
	function formatoedit(cellvalue,data,options){
		return "<a href=javascript:editar('"+cellvalue+"')><span class=\"glyphicon glyphicon-pencil\"></span></a>";
	}
	function editar(cellvalue){
		$.getJSON("findProduct?producto.idProducto="+cellvalue,function(datos){
			
			abrirVentana();
			$('#txtdescripcion').val(datos.producto.descripcion);
			$('#txtstock').val(datos.producto.stock);
			$('#txtprecio').val(datos.producto.precio);
			$('#txtimagen').val(datos.producto.image_resource);
			
			$('#cbocategoria').val(datos.producto.categoria.idCategoria);
			$('#cbocobertura').val(datos.producto.cobertura.idCobertura);
			$('#cbomasa').val(datos.producto.masa.idMasa);
			$('#cborelleno').val(datos.producto.relleno.idRelleno);
			
			$('#txtid').val(datos.producto.idProducto);
		});

	}
</script>


<s:url id="URL_ListProducts" action="listProduct"/>

<sjg:grid 
gridModel="productos" 
caption="Listado de Productos"
dataType="json"
href="%{URL_ListProducts}"
reloadTopics="cargaGrid"
width="1100">
	<sjg:gridColumn name="idProducto" title="Codigo"/>
	<sjg:gridColumn name="descripcion" title="Producto"/>
	<sjg:gridColumn name="stock" title="Stock"/>
	<sjg:gridColumn name="precio" title="Precio"/>
	
	<sjg:gridColumn name="image_resource" formatter="formatimage" title="Imagen"/>
	
	<sjg:gridColumn name="categoria.descripcion" title="Categoria"/>
	<sjg:gridColumn name="cobertura.descripcion"  title="Cobertura"/>
	<sjg:gridColumn name="masa.descripcion" title="Masa"/>
	<sjg:gridColumn name="relleno.descripcion" title="Relleno"/>
	<sjg:gridColumn name="idProducto" formatter="formatoedit" title="Editar" width="40"/>
	<sjg:gridColumn name="idProducto" formatter="formatodel" title="Eliminar" width="40"/>
</sjg:grid>

<sj:a button="true" onclick="abrirVentana()">Nuevo</sj:a>

<sj:dialog id="dialog1" modal="true" width="400" height="400"  title="Datos del Producto" autoOpen="false">
	<s:form id="frmdatos" action="saveProduct">
			
			<div>
				<s:hidden    name="producto.idProducto" id="txtid"/>
				<s:textfield name="producto.descripcion" id="txtdescripcion" label="Producto"/>
				<s:textfield name="producto.stock" id="txtstock" label="Stock"/>
				<s:textfield name="producto.precio" id="txtprecio" label="Precio"/>
				<s:textfield name="producto.image_resource" id="txtimagen" label="Imagen"/>
			</div>
			<div>
			 
			<s:url id="URL_ListCategorys" action="listCategory"/>
				<sj:select id="cbocategoria" label="Categoria"
				list="categorias"
				listKey="idCategoria"
				listValue="descripcion"
				href="%{URL_ListCategorys}"
				headerKey="0"
				headerValue="--Seleccione--" 
				name="producto.categoria.idCategoria" />
			</div>
			<div>
			<s:url id="URL_ListCoverages" action="listCoverage"/>
				<sj:select id="cbocobertura" label="Cobertura"
				list="coberturas"
				listKey="idCobertura"
				listValue="descripcion"
				href="%{URL_ListCoverages}"
				headerKey="0"
				headerValue="--Seleccione--" 
				name="producto.cobertura.idCobertura" />
			</div>
			<div>
			<s:url id="URL_ListDoughs" action="listDough"/>
				<sj:select id="cbomasa" label="Masa"
				list="masas"
				listKey="idMasa"
				listValue="descripcion"
				href="%{URL_ListDoughs}"
				headerKey="0"
				headerValue="--Seleccione--" 
				name="producto.masa.idMasa" />
			</div>
			<div>
			<s:url id="URL_ListFillings" action="listFilling"/>
				<sj:select id="cborelleno" label="Relleno"
				list="rellenos"
				listKey="idRelleno"
				listValue="descripcion"
				href="%{URL_ListFillings}"
				headerKey="0"
				headerValue="--Seleccione--" 
				name="producto.relleno.idRelleno" />
			</div>
			 
			<sj:submit value="Grabar" button="true" 
			 onCompleteTopics="cerrarVentana,cargaGrid" targets="divresult"/>
	</s:form>
</sj:dialog>
	
<div id="divresult"></div>
