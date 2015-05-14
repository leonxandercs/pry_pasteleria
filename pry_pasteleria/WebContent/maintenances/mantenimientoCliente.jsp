<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<%@taglib uri="/struts-jquery-tags" prefix="sj" %>
<%@taglib uri="/struts-jquery-grid-tags" prefix="sjg" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Mantenimiento clientes</title>
<!--
<sj:head jqueryui="true" jquerytheme="trontastic" locale="es"/>
-->
<sj:head jqueryui="true" jquerytheme="excite-bike" locale="es"/>
</head>
<script>
	function abrirVentana(){
		$('#dialog1').dialog("open");
	}
	$.subscribe('cerrarVentana',function(event,data){
		$('#dialog1').dialog("close");
	});
</script>
<body>

<s:url id="URL_ListCustomers" action="listCustomer"/>

<sjg:grid 
gridModel="clientes" 
caption="Listado de Clientes"
dataType="json"
href="%{URL_ListCustomers}"
reloadTopics="cargaGrid">
	<sjg:gridColumn name="login" title="Loguin"/>
	<sjg:gridColumn name="nombre" title="Nombre"/>
	<sjg:gridColumn name="ape_pa" title="Apellido Paterno"/>
	<sjg:gridColumn name="ape_ma" title="Apellido Materno"/>
	<sjg:gridColumn name="rol.descripcion" title="Rol"/>
</sjg:grid>
	
<sj:a button="true" onclick="abrirVentana()">Nuevo</sj:a>

<sj:dialog id="dialog1" modal="true" width="400" height="500"  title="Datos del Cliente" autoOpen="false">
	<s:form id="frmdatos" action="AGrabaDoctor">
			
			<div>
				<s:textfield name="cliente.nombre" id="txtnom" label="Nombre"/>
			</div>
			<div>
			<s:url id="URL_ListRoles" action="listRol"/>
				<sj:select id="cboespecialidad" label="Rol"
				list="roles"
				listKey="idRol"
				listValue="descripcion"
				href="%{URL_ListRoles}"
				headerKey="0"
				headerValue="--Seleccione--" 
				name="cliente.rol.idRol" />
			</div>
			<sj:submit value="Grabar" button="true" 
			 onCompleteTopics="cerrarVentana,cargaGrid" targets="divresult"/>
		
	</s:form>
</sj:dialog>
	
<div id="divresult"></div>

</body>
</html>