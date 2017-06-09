<div class="panel panel-default">
  <div class="panel-heading">
    <h3 class="panel-title">PENSIONADOS</h3>
  </div>
  <div class="panel-body">
    <a class="btn btn-success" href="<?php echo baseUrl ?>admin/pensionados/create"> Agregar pensionado <i class="fa fa-plus"></i></a>
    <br><br>
    <table class="table table-striped table-condensed table-responsive" data-striped="true">
      <thead>
        <tr>
          <th>id</th>
          <th>Nombre</th>
          <th>Apellido</th>
          <th>Cedula</th>
          <th>Opciones</th>
        </tr>
      </thead>
      <tbody>
        <?php foreach ($pensionados as $p): ?>
        <tr>
          <td><?php echo $p->id ?></td>
          <td><?php echo $p->nombre ?></td>
          <td><?php echo $p->apellido ?></td>
          <td><?php echo $p->cedula ?></td>
          <td width="15%">
            <!-- Single button -->
            <div class="btn-group">
              <button type="button" class="btn btn-default dropdown-toggle fa fa-cog" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
               <span class="caret"></span>
              </button>
              <ul class="dropdown-menu">
                <li><a href="<?php echo $baseUrl ?>admin/pensionados/<?php echo $p->id ?>"> <pre class="text-primary">VER DATOS <i class="fa fa-search"></i></pre></a></li>
                <li> <a href="<?php echo $baseUrl ?>admin/pensionados/<?php echo $p->id ?>/edit"> <pre class="text-success">EDITAR <i class="fa fa-pencil"></i></pre></a></li></a></li>
                <li><a href="<?php echo $baseUrl ?>admin/pensionados/<?php echo $p->id ?>/delete"><pre class="text-danger">ELIMINAR <i class="fa fa-times"></i></pre></a></li>
              </ul>
            </div>
          </td>
        </tr>
        <?php endforeach ?>
      </tbody>
    </table>
  </div>
</div>