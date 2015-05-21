<%@ taglib uri="/struts-tags" prefix="s"%>
<style type="text/css">
input[type=number]{
	width:60px;
	}
</style>
<script>
$(window).load(function(){
	
});
</script>


<div>
<div class="table-responsive">
<table class="table table-striped table-hover " style="margin-rigth:40px;">
  <thead>
    <tr class="info">
      <th>#</th>
      <th>Producto</th>
      <th>Codigo</th>
      <th>Cantidad</th>
      <th>Precio</th>
      <th>Subtotal</th>
      <th></th>
    </tr>
  </thead>
  <tbody>
    <tr class="info">
      <td>1</td>
      <td>Column content</td>
      <td>Column content</td>
      <td><input type="number" min=0></td>
      <td>S/.40.00</td>
      <td>S/.120.00</td>
     <td><a href="#"><span class="glyphicon glyphicon-trash"></span></a></td>
    </tr>
    <tr class="info">
      <td>2</td>
      <td>Column content</td>
      <td>Column content</td>
      <td><input type="number" min=0></td>
       <td>S/.70.00</td>
      <td>S/.140.00</td>
       <td><a href="#"><span class="glyphicon glyphicon-trash"></span></a></td>
    </tr>
    <tr class="info">
      <td>3</td>
      <td>Column content</td>
      <td>Column content</td>
      <td><input type="number" min=0></td>
      <td>S/.60.00</td>
      <td>S/.120.00</td>
      <td><a href="#"><span class="glyphicon glyphicon-trash"></span></a></td>
    </tr>
    <tr class="success">
      <td>4</td>
      <td>Column content</td>
      <td>Column content</td>
      <td><input type="number" min=0></td>
      <td>S/.30.00</td>
      <td>S/.60.00</td>
      <td><a href="#"><span class="glyphicon glyphicon-trash"></span></a></td>
    </tr>
    <tr class="info">
      <td>5</td>
      <td>Column content</td>
      <td>Column content</td>
     <td><input type="number" min=0></td>
     <td>S/.45.00</td>
      <td>S/.45.00</td>
      <td><a href="#"><span class="glyphicon glyphicon-trash"></span></a></td>
    </tr>
  </tbody>
  <tfoot>
    <tr>
          <td></td>
         <td></td>
          <td></td>
          <td></td>
         <td  class="danger"><strong>Sub Total:</strong></td>
          <td  class="danger"><strong>S/.200.00</strong></td>
    </tr>
  </tfoot>
</table> 
</div>
<!-- ------------------------------------------------------------- -->

<div style="text-align:right;margin-right:80px;">
  <a href="catalogo.action" class="btn btn-primary">Agregar Productos</a>
  <input type="submit" class="btn btn-success" value="Realizar Pedido"/>
</div>

</div>

<br></br>
<br></br>
<br></br>
