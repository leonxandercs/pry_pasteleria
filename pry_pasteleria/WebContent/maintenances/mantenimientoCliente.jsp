<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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

	$.subscribe('rowselectCliente', function(event,data) {
		document.getElementById("txtsexo").value= event.originalEvent.id;
		 
	   	 //var grid = event.originalEvent.grid; 
	     var grid=jQuery('#gridClientes');
		 var sel_id = grid.jqGrid('getGridParam','selrow');
		 
		 
		 document.getElementById("txtnom").value = grid.jqGrid('getCell', sel_id, 'strnombre');
		 document.getElementById("txtape_pa").value = grid.jqGrid('getCell', sel_id, 'strapepa');
		 document.getElementById("txtape_ma").value = grid.jqGrid('getCell', sel_id, 'strapema');
		 document.getElementById("txtdni").value = grid.jqGrid('getCell', sel_id, 'strdni');
		 abrirVentana();
	}); 
	
	

</script>

<s:url id="URL_ListCustomers" action="listCustomer"/>

<sjg:grid 
id="gridClientes"
gridModel="clientes" 
caption="Listado de Clientes"
dataType="json"
href="%{URL_ListCustomers}"
reloadTopics="cargaGrid"
onSelectRowTopics="rowselectCliente"
width="1100">
	<sjg:gridColumn name="idUsuario" title="Codigo" index="stridUsuario"/>
	<sjg:gridColumn name="nombre" title="Nombre" index="strnombre" editable="true"/>
	<sjg:gridColumn name="ape_pa" title="Apellido Paterno" index="strapepa" editable="true"/>
	<sjg:gridColumn name="ape_ma" title="Apellido Materno" index="strapema" editable="true"/>
	<sjg:gridColumn name="dni" title="DNI" index="strdni"/>
	<sjg:gridColumn name="fec_nacimiento" title="Fecha Nacimiento"/>
	<sjg:gridColumn name="sexo" title="Sexo"/>
	<sjg:gridColumn name="email" title="Correo"/>
	<sjg:gridColumn name="estado_civil" title="Estado Civil"/>
	<sjg:gridColumn name="telefono" title="Telefono"/>
	<sjg:gridColumn name="celular" title="Celular"/>
	<sjg:gridColumn name="fecha_registro" title="Registro"/>
	
</sjg:grid>


<sj:a button="true" onclick="abrirVentana()">Nuevo</sj:a>

<sj:dialog id="dialog1" modal="true" width="400" height="500"  title="Datos del Cliente" autoOpen="false">
	<s:form id="frmdatos" action="saveCustomer">
			
			<div>
				<s:textfield name="cliente.nombre" id="txtnom"  label="Nombre"/>
				<s:textfield name="cliente.ape_pa" id="txtape_pa" label="Apellido Paterno"/>
				<s:textfield name="cliente.ape_ma" id="txtape_ma" label="Apellido Materno"/>
				<s:textfield name="cliente.dni" id="txtdni" label="DNI"/>
				<s:textfield name="cliente.fec_nacimiento" id="txtfec_nac" label="Nacimiento"/>
				<s:textfield name="cliente.sexo" id="txtsexo" label="Sexo"/>
				<s:textfield name="cliente.email" id="txtemail" label="Email"/>
				<s:textfield name="cliente.estado_civil" id="txtestado_civil" label="Estado Civil"/>
				<s:textfield name="cliente.telefono" id="txttelefono" label="Telefono"/>
				<s:textfield name="cliente.celular" id="txtcelular" label="Celular"/>
			</div>
			<sj:submit value="Grabar" button="true" 
			 onCompleteTopics="cerrarVentana,cargaGrid" targets="divresult"/>
		
	</s:form>
</sj:dialog>
	
<div id="divresult"></div>
