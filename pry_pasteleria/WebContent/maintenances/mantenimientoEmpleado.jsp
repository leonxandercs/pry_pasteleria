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

<s:url id="URL_ListEmployeds" action="listEmployed"/>

<sjg:grid 
gridModel="empleados" 
caption="Listado de Empleados"
dataType="json"
href="%{URL_ListEmployeds}"
reloadTopics="cargaGrid"
width="1400">
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
	<sjg:gridColumn name="fecha_ingreso" title="Sueldo"/>
	<sjg:gridColumn name="sueldo" title="Sueldo"/>
	<sjg:gridColumn name="fecha_ingreso" title="Ingreso"/>
	
</sjg:grid>


<sj:a button="true" onclick="abrirVentana()">Nuevo</sj:a>

<sj:dialog id="dialog1" modal="true" width="420" height="520"  title="Datos del Empleado" autoOpen="false">
	<s:form id="frmdatos" action="saveEmployed">
			
			<div>
				<s:textfield name="empleado.nombre" id="txtnom" label="Nombre"/>
				<s:textfield name="empleado.ape_pa" id="txtapepa" label="Apellido Paterno"/>
				<s:textfield name="empleado.ape_ma" id="txtapema" label="Apellido Materno"/>
				<s:textfield name="empleado.dni" id="txtdni" label="DNI"/>
				<s:textfield name="empleado.fec_nacimiento" id="txtnacimiento" label="Nacimiento"/>
				<s:textfield name="empleado.sexo" id="txtsexo" label="Sexo"/>
				<s:textfield name="empleado.email" id="txtemail" label="Email"/>
				<s:textfield name="empleado.estado_civil" id="txtecivil" label="Estado Civil"/>
				<s:textfield name="empleado.telefono" id="txttelefono" label="Telefono"/>
				<s:textfield name="empleado.celular" id="txtcelular" label="Celular"/>
				
				<s:textfield name="empleado.sueldo" id="txtsueldo" label="Sueldo"/>
				
			</div>
			<div>
			<s:url id="URL_ListRoles" action="listRol"/>
				<sj:select id="cborol" label="Rol"
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
