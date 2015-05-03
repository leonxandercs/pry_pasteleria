<%@ taglib uri="/struts-tags" prefix="s"%>
   
<div>
<table>
<tr>
<td>
<label>&nbsp;&nbsp;Codigo de Pedido:</label>
</td>
<td>&nbsp;<input type="text" size="20"/></td>
<td>&nbsp;Estado:</td>
<td>
  <select>
    <option>--Seleccione--</option>
    <option>Pendiente</option>
    <option>Cancelado</option>
    <option>Finalizado</option>
  </select>
</td>
<td>
  &nbsp;<input type="submit" class="btn btn-primary" value="Consultar"/>
</td>
</tr>
</table>
</div>
<div>
<br></br>

<div style="margin:10px;">

<table class="table table-striped table-hover " style="margin-rigth:10px;">
  <thead>
    <tr class="info">
      <th>#</th>
      <th>Pedido</th>
      <th>Producto</th>
      <th>Cantidad</th>
      <th>Precio</th>
      <th>Total</th>
      <th>Estado</th>
      <th>Accion</th>
    </tr>
  </thead>
  <tbody>
    <tr class="info">
      <td>1</td>
      <td>Column content</td>
      <td>Column content</td>
      <td>1</td>
      <td>S/.40.00</td>
      <td>S/.120.00</td>
     <td><span class="label label-success">Pendiente</span></td>
    <td>
      <a type="submit" class="label label-warning">Editar</a>
      &nbsp;|&nbsp;
      <a type="submit" class="label label-danger">Cancelar</a>
    </td>
    </tr>
    <tr class="info">
      <td>2</td>
      <td>Column content</td>
      <td>Column content</td>
      <td>10</td>
       <td>S/.70.00</td>
      <td>S/.140.00</td>
       <td><span class="label label-success">Pendiente</span></td>
       <td>
      <a type="submit" class="label label-warning">Editar</a>
      &nbsp;|&nbsp;
      <a type="submit" class="label label-danger">Cancelar</a>
    </td>
    </tr>
    <tr class="info">
      <td>3</td>
      <td>Column content</td>
      <td>Column content</td>
      <td>4</td>
      <td>S/.60.00</td>
      <td>S/.120.00</td>
      <td><span class="label label-danger">Cancelado</span></td>
      <td>
      <a type="submit" class="label label-warning">Editar</a>
      &nbsp;|&nbsp;
      <a type="submit" class="label label-danger">Cancelar</a>
    </td>
    </tr>
    <tr class="success">
      <td>4</td>
      <td>Column content</td>
      <td>Column content</td>
      <td>20</td>
      <td>S/.30.00</td>
      <td>S/.60.00</td>
      <td><span class="label label-primary">Finalizado</span></td>
      <td>
      <a type="submit" class="label label-warning">Editar</a>
      &nbsp;|&nbsp;
      <a type="submit" class="label label-danger">Cancelar</a>
    </td>
    </tr>
    <tr class="info">
      <td>5</td>
      <td>Column content</td>
      <td>Column content</td>
     <td>2</td>
     <td>S/.45.00</td>
      <td>S/.45.00</td>
      <td><span class="label label-primary">Finalizado</span></td>
      <td>
      <a type="submit" class="label label-warning">Editar</a>
      &nbsp;|&nbsp;
      <a type="submit" class="label label-danger">Cancelar</a>
    </td>
    </tr>
  </tbody>
  <tfoot>
    <tr>
          <td></td>
         <td></td>
          <td></td>
          <td></td>
         <td></td>
          <td ></td>
            <td ></td>
              <td ></td>
    </tr>
  </tfoot>
</table> 
</div>
<!-- ------------------------------------------------------------- -->
<div style="text-align:right;margin-right:80px;">
</div>

</div>

<br></br>
<br></br>
<br></br>
