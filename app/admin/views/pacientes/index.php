<div class="panel panel-default">
  <div class="panel-heading">
    <h3 class="panel-title text-muted">PACIENTES</h3>
  </div>
  <div class="panel-body">
    <form action="<?php echo baseUrl ?>admin/pensionados" method="POST">
      <?php echo Token::field() ?>
      <div class="row">
        <div class="col-lg-3">
          <a class="btn btn btn-success pull-left" href="<?php echo baseUrl ?>admin/pacientes/create">AGREGAR PACIENTE <i class="fa fa-user fa-2x"></i></a>
        </div>
        <div class="col-lg-4">
          <div class="form-group">
            <input class="form-control" type="number" name="cedula" placeholder="Ingrese Cédula" required>
          </div>
        </div>
        <div class="col-lg-1">
          <button type="submit" class="btn btn btn-primary"><i class="fa fa-search fa-2x"></i></button>
        </div>
      </div>
    </form>
      <br>
      <div class="row">
        <div class="col-lg-12">
          <h5>SOLICITUDES </h5>
        </div>
      </div>
      <hr>
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
        <?php foreach ($pacientes as $p): ?>
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