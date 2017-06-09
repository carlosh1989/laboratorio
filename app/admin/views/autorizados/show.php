<div class="panel panel-default">
  <div class="panel-heading">
    <h3 class="panel-title">DATOS DEL AUTORIZADO</h3>
  </div>
  <div class="panel-body">
    <h4>Autorizado de el Pencionado: <?php echo $autorizado->pensionado->nombre ?> <?php echo $autorizado->pensionado->apellido ?> </h4>
    <hr>
    <div class="row">
      <div class="col-lg-3 dl-horizontal">
        <dt>Nombre:</dt>
        <dd><?php echo $autorizado->nombre ?> <?php echo $autorizado->apellido ?></dd>
      </div>
      <div class="col-lg-3 dl-horizontal">
        <dt>Cédula:</dt>
        <dd><?php echo $autorizado->nacionalidad ?>-<?php echo $autorizado->cedula ?> </dd>
      </div>
      <div class="col-lg-3 dl-horizontal">
        <dt>Telefono:</dt>
        <dd><?php echo $autorizado->telefono ?></dd>
      </div>
      <div class="col-lg-3 dl-horizontal">
        <dt>Parentesco:</dt>
        <dd><?php echo $autorizado->parentesco->descripcion?> </dd>
      </div>
    </div>
    <br>
    <div class="row">
      <div class="col-lg-12 dl-horizontal">
        <dt>Dirección:</dt>
        <dd><?php echo $autorizado->direccion?> </dd>
      </div>
    </div>
  </div>
</div>