<div class="panel panel-default">
  <div class="panel-heading">
    <h3 class="panel-title">INGRESAR AUTORIZADO</h3>
  </div>
  <div class="panel-body">
    <form action="<?php echo baseUrl ?>admin/autorizados" method="POST">
      <?php echo Token::field() ?>
      <input type="hidden" name="id_pensionado" value="<?php echo $id_pensionado ?>">
      <div class="row">
        <div class="col-lg-4">
          <div class="form-group">
            <input class="form-control" type="text" name="nombre" placeholder="Ingrese Nombre" required>
          </div>
        </div>
        <div class="col-lg-4">
          <div class="form-group">
            <input class="form-control" type="text" name="apellido" placeholder="Ingrese Apellido" required>
          </div>
        </div>
        <div class="col-lg-1">
          <div class="form-group">
            <select class="form-control" name="nacionalidad" id="">
              <option value="V">V</option>
              <option value="V">E</option>
            </select>
          </div>
        </div>
        <div class="col-lg-3">
          <div class="form-group">
            <input class="form-control" type="number" name="cedula" placeholder="Ingrese Cedula" required>
          </div>
        </div>
      </div>
      <br>
      <div class="row">
        <div class="col-lg-6">
          <div class="form-group">
            <select class="form-control" name="id_parentesco" id="parentesco" required>
              <option value="">Parentesco</option>
              <?php foreach (\App\Parentesco::all() as $p): ?>
              <option value="<?php echo $p->id ?>"><?php echo $p->descripcion ?></option>
              <?php endforeach ?>
            </select>
          </div>
        </div>
        <div class="col-lg-6">
          <div class="form-group">
            <input class="form-control" type="number" name="telefono" placeholder="Ingrese telefono" required>
          </div>
        </div>
      </div>
      <br>
      <div class="row">
        <div class="col-lg-12">
          <textarea placeholder="Dirección" class="form-control" name="direccion"></textarea>
        </div>
      </div>
      <hr>
      <button type="submit" class="btn btn-success pull-right"> Guardar <i class="fa fa-save"></i></button>
    </form>
  </div>
</div>