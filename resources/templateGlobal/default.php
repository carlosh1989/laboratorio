<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8">
    <title></title>
    <link rel="stylesheet" href="<?php echo baseUrl ?>assets/bower/bootstrap/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="<?php echo baseUrl ?>assets/bower/bootstrap/dist/css/bootstrap.min.css">
    <!--     <link rel="stylesheet" href="<?php echo baseUrl ?>assets/bower/jasny-bootstrap/dist/css/jasny-bootstrap.min.css">
    -->
    <link rel="stylesheet" href="https://bootswatch.com/paper/bootstrap.min.css">
    <link rel="stylesheet" href="<?php echo baseUrl ?>assets/bower/components-font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet" href="<?php echo baseUrl ?>assets/bower/sweetalert2/dist/sweetalert2.min.css">
    <link rel="stylesheet" href="<?php echo baseUrl ?>assets/bower/bootstrap-side-navbar/source/assets/stylesheets/navbar-fixed-side.css">
    <script src="<?php echo baseUrl ?>assets/bower/sweetalert2/dist/sweetalert2.min.js"></script>
    <link href="https://rawgit.com/wenzhixin/bootstrap-table/master/src/bootstrap-table.css" rel="stylesheet"/>
    <script src="https://rawgit.com/wenzhixin/bootstrap-table/master/src/bootstrap-table.js"></script>
    <style>
    .table {
    border-bottom:0px !important;
    }
    .table th, .table td {
    border: 1px !important;
    }
    .fixed-table-container {
    border:0px !important;
    }
    </style>
  </head>
  <body>
    <?php
    use System\tools\session\Session;
    $usuario_current = (object) Session::get('current_user');
    ?>
    <div class="container-fluid">
      <div class="row">
        <div class="col-sm-3 col-lg-2">
          <nav class="navbar navbar-default navbar-fixed-side">
            <div class="container">
              <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="#">Pensiones</a>
              </div>
              <div id="navbar" class="navbar-collapse collapse">
                <ul class="nav navbar-nav">
                  <li class="active"><a href="<?php echo baseUrl ?>">Home</a></li>
                  <li><a href="<?php echo baseUrl ?>admin/pensionados">Pensionados</a></li>
                  <li><a href="<?php echo baseUrl ?>admin/autorizados">Autorizados</a></li>
                  <li><a href="<?php echo baseUrl ?>admin/usuarios">Usuarios</a></li>
                </ul>
                <ul class="nav navbar-nav navbar-right">
                  <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><?php echo $usuario_current->usuario ?> <span class="caret"></span></a>
                    <ul class="dropdown-menu">
                      <li><a class="fa fa-sign-out" href="<?php echo baseUrl ?>login/principal/logout">Salir</a></li>
                    </ul>
                  </li>
                </ul>
                </div><!--/.nav-collapse -->
              </div>
            </nav>
          </div>
          <div class="col-sm-9 col-lg-10">
          <br>
            <?php echo $content ?>
          </div>
        </div>
      </div>
      <!-- /container -->
      <!-- MENSAJES FLASH SWEET ALERT 2 -->
      <?php if (Message::hasMessages()): ?>
      <?php echo Message::show() ?>
      <?php endif ?>
      <script src="<?php echo baseUrl ?>assets/bower/jquery/dist/jquery.slim.min.js"></script>
      <script src="<?php echo baseUrl ?>assets/bower/AdminLTE/bootstrap/js/bootstrap.min.js"></script>
      <script src="<?php echo baseUrl ?>assets/bower/jasny-bootstrap/dist/js/jasny-bootstrap.min.js"></script>
    </body>
  </html>