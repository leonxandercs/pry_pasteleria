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
	function abrirVentana(){
		$('#dialog1').dialog("open");
	}
	$.subscribe('cerrarVentana',function(event,data){
		$('#dialog1').dialog("close");
	});
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
	<sjg:gridColumn name="image_resource" title="Imagen"/>
	<sjg:gridColumn name="categoria.descripcion" title="Categoria"/>
	<sjg:gridColumn name="cobertura.descripcion"  title="Cobertura"/>
	<sjg:gridColumn name="masa.descripcion" title="Masa"/>
	<sjg:gridColumn name="relleno.descripcion" title="Relleno"/>
</sjg:grid>


<sj:a button="true" onclick="abrirVentana()">Nuevo</sj:a>

<sj:dialog id="dialog1" modal="true" width="400" height="400"  title="Datos del Producto" autoOpen="false">
	<s:form id="frmdatos" action="saveProduct">
			
			<div>
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
