<div class="panel panel-default">
  <div class="panel-heading">
    <h3 class="panel-title text-muted">EDITAR PENSIONADO</h3>
  </div>
  <div class="panel-body">
    <form action="<?php echo baseUrl ?>admin/pensionados/<?php echo $pensionado->id ?>" method="POST">
      <?php echo Token::field() ?>
      <div class="row">
        <div class="col-lg-4">
          <div class="form-group">
            <input class="form-control" type="text" name="nombre" placeholder="Ingrese Nombre" value="<?php echo $pensionado->nombre ?>" required>
          </div>
        </div>
        <div class="col-lg-4">
          <div class="form-group">
            <input class="form-control" type="text" name="apellido" placeholder="Ingrese Apellido" value="<?php echo $pensionado->apellido ?>" required>
          </div>
        </div>
        <div class="col-lg-1">
          <div class="form-group">
            <select class="form-control" name="nacionalidad" id="">
              <option value="<?php echo $pensionado->nacionalidad ?>"><?php echo $pensionado->nacionalidad ?></option>
              <option value="V">V</option>
              <option value="V">E</option>
            </select>
          </div>
        </div>
        <div class="col-lg-3">
          <div class="form-group">
            <input class="form-control" type="number" name="cedula" placeholder="Ingrese Cedula" value="<?php echo $pensionado->cedula ?>" required>
          </div>
        </div>
      </div>
      <div class="row">
        <div class="col-lg-4">
          <div class="form-group">
            <input class="form-control" data-mask="99/99/9999" type="text" name="fecha_nacimiento" placeholder="Fecha nacimiento" value="<?php echo $pensionado->fecha_nacimiento ?>"  required>
          </div>
        </div>
        <div class="col-lg-4">
          <div class="form-group">
            <select class="form-control" name="sexo" id="" required>
              <?php if ($pensionado->sexo == 'M'): ?>
              <option value="M">Masculino</option>
              <?php else: ?>
              <option value="F">Femenino</option>
              <?php endif ?>
              <option value="M">Masculino</option>
              <option value="F">Femenino</option>
            </select>
          </div>
        </div>
        <div class="col-lg-4">
          <div class="form-group">
            <select class="form-control" name="estado_civil" id="" required>
              <option value="<?php echo $pensionado->estado_civil ?>"><?php echo $pensionado->estado_civil ?></option>
              <option value="soltero">Solter@</option>
              <option value="casado">Casad@</option>
              <option value="divorciado">Divorciad@</option>
              <option value="viudo">Viud@</option>
            </select>
          </div>
        </div>
      </div>
      <div class="row">
        <div class="col-lg-4">
          <div class="form-group">
            <input class="form-control" type="number" name="telefono" placeholder="Ingrese telefono" value="<?php echo $pensionado->telefono ?>"  required>
          </div>
        </div>
        <div class="col-lg-4">
          <div class="form-group">
            <select class="form-control" name="id_municipio" id="municipio" required>
              <option value="<?php echo $pensionado->municipio->id ?>"><?php echo $pensionado->municipio->municipio ?></option>
              <?php foreach (\App\Municipio::all() as $m): ?>
              <option value="<?php echo $m->id ?>"><?php echo $m->municipio ?></option>
              <?php endforeach ?>
            </select>
          </div>
        </div>
        <div class="col-lg-4">
          <div class="form-group">
            <select class="form-control" name="id_parroquia" id="parroquia" required>
              <option value="<?php echo $pensionado->parroquia->id ?>"><?php echo $pensionado->parroquia->parroquia ?></option>
              <?php foreach (\App\Parroquia::all() as $p): ?>
              <option value="<?php echo $p->id ?>"><?php echo $p->parroquia ?></option>
              <?php endforeach ?>
            </select>
          </div>
        </div>
      </div>
      <div class="row">
        <div class="col-lg-12">
          <textarea placeholder="Dirección" class="form-control" name="direccion" required>
          <?php echo $pensionado->direccion?>
          </textarea>
        </div>
      </div>
      <br>
      <div class="row">
        <div class="col-lg-4">
          <div class="form-group">
            <select class="form-control" name="discapacidad" id="">
              <option value="<?php echo $pensionado->discapacidad->id ?>"><?php echo $pensionado->discapacidad->tipo?>
              </option>
              <?php foreach (\App\Discapacidad::all() as $d): ?>
              <option value="<?php echo $d->id ?>"><?php echo $d->tipo ?></option>
              <?php endforeach ?>
            </select>
          </div>
        </div>
      </div>
      <button type="submit" class="btn btn-success pull-right"> Guardar <i class="fa fa-save"></i></button>
    </form>
  </div>
</div>