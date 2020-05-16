<!doctype html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

  <title>Document</title>
</head>

<body>

  <div class="container">
    <div class="row">
      <div class="col-md-12"><br>
        <a href="?clase=productos&method=insert" class="float-xl-right">
          <img src="assets/Icon/insert.png" width="30" height="30" class="d-inline-block align-top" alt="">
        </a><br><br>
        <table class="table table-sm table-striped ">
          <tr class="bg-secondary">
            <td>ID</td>
            <td>NOMBRE PRODUCTO</td>
            <td>DESCRIPCION</td>
            <td>PRECIO</td>
            <td>OPCIONES</td>
          </tr>

          <?php foreach (parent::get_all() as $result) { ?>
            <tr>
              <td><?php echo $result->id_producto ?></td>
              <td><?php echo $result->nomb_producto ?></td>
              <td><?php echo $result->descripcion ?></td>
              <td><?php echo $result->precio ?></td>
              <td>
                <a href="" class="btn btn-warning btn-sm">detalles</a>
                <a href="" class="btn btn-primary btn-sm">Editar</a>
                <a href="?clase=productos&method=delete&id=<?php echo $result->id_producto ?>" class="btn btn-danger btn-sm">Eliminar</a>
              </td>
            </tr>
          <?php   } ?>
          <tr>
            <td colspan="5"><?php echo count(parent::get_all()); ?> Productos registrados</td>
          </tr>
        </table>
      </div>
    </div>
  </div>
</body>

</html>