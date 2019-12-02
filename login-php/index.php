<?php
  session_start();

  require 'conexion.php';

  if (isset($_SESSION['personas_id'])) {
    $records = $conexion->prepare('SELECT id, nombre, correo, password FROM personas WHERE id = :id');
    $records->bindParam(':id', $_SESSION['personas_id']);
    $records->execute();
    $resultado = $records->fetch(PDO::FETCH_ASSOC);

    $usuario = null;

    if (count($resultado) > 0) {
      $usuario = $resultado;
    }
  }
?>

<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title>login</title>
    <link href="https://fonts.googleapis.com/css?family=Roboto" rel="stylesheet">
    <link rel="stylesheet" href="assets/css/style.css">
  </head>
  <body>
    <?php require 'partials/header.php' ?>

    <?php if(!empty($usuario)): ?>
      <br> Has iniciado sesión correctamente
      <a href="logout.php">Logout</a>
    <?php else: ?>
      <h1>Ingrese o registrese</h1>

      <a href="login.php">Iniciar sesion</a> o
      <a href="signup.php">Registrarse</a>
    <?php endif; ?>
  </body>
</html>
