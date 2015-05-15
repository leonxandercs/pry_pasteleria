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

<s:url id="URL_ListEmployeds" action="listEmployed"/>

<sjg:grid 
gridModel="empleados" 
caption="Listado de Empleados"
dataType="json"
href="%{URL_ListEmployeds}"
reloadTopics="cargaGrid"
width="1100">
	<sjg:gridColumn name="idUsuario" title="Codigo"/>
	<sjg:gridColumn name="nombre" title="Nombre"/>
	<sjg:gridColumn name="ape_pa" title="Apellido Paterno"/>
	<sjg:gridColumn name="ape_ma" title="Apellido Materno"/>
	<sjg:gridColumn name="dni" title="DNI"/>
	<sjg:gridColumn name="fec_nacimiento" title="Fecha Nacimiento"/>
	<sjg:gridColumn name="sexo" title="Sexo"/>
	<sjg:gridColumn name="email" title="Correo"/>
	<sjg:gridColumn name="estado_civil" title="Estado Civil"/>
	<sjg:gridColumn name="telefono" title="Telefono"/>
	<sjg:gridColumn name="celular" title="Celular"/>
	<sjg:gridColumn name="fecha_ingreso" title="Ingreso"/>
	
</sjg:grid>


<sj:a button="true" onclick="abrirVentana()">Nuevo</sj:a>

<sj:dialog id="dialog1" modal="true" width="400" height="600"  title="Datos del Empleado" autoOpen="false">
	<s:form id="frmdatos" action="saveEmployed">
			
			<div>
				<s:textfield name="empleado.nombre" id="txtnom" label="Nombre"/>
				<s:textfield name="empleado.ape_pa" id="txtnom" label="Apellido Paterno"/>
				<s:textfield name="empleado.ape_ma" id="txtnom" label="Apellido Materno"/>
				<s:textfield name="empleado.dni" id="txtnom" label="DNI"/>
				<s:textfield name="empleado.fec_nacimiento" id="txtnom" label="Nacimiento"/>
				<s:textfield name="empleado.sexo" id="txtnom" label="Sexo"/>
				<s:textfield name="empleado.email" id="txtnom" label="Email"/>
				<s:textfield name="empleado.estado_civil" id="txtnom" label="Estado Civil"/>
				<s:textfield name="empleado.telefono" id="txtnom" label="Telefono"/>
				<s:textfield name="empleado.celular" id="txtnom" label="Celular"/>
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
				name="empleado.rol.idRol" />
			</div>
			<sj:submit value="Grabar" button="true" 
			 onCompleteTopics="cerrarVentana,cargaGrid" targets="divresult"/>
		
	</s:form>
</sj:dialog>
	
<div id="divresult"></div>

</body>
</html>