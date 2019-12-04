<?php
session_start();

$nombre = $_POST['correo'];
$password = $_POST['password'];

		require_once 'conexion.php';
// $conexion = dbConnect();
 

$consulta = mysqli_query ($conexion, "SELECT * FROM personas WHERE correo = '$correo' AND password = '$password'");  

if(!$consulta){ 
 echo "Usuario no existe " . $nombre . " " . $password. " o hubo un error " . mysqli_error($mysqli);
} 
else{ 
print "Bienvenido"; 
} 

?>




<?php     
  session_start();
  
  if (isset($_SESSION['user_id'])) {
    header('Location: /php-login');
  }
  require 'conexion.php';
  // (($users == $usua) && ($pasword == $pas))
  if (!empty($_POST['correo']) && !empty($_POST['password'])) {
    $records = $conexion->prepare('SELECT * FROM personas WHERE correo = :correo');
    $records->bindParam(':correo', $_POST['correo']);
    $records->execute();
    $resultado = $records->fetch(PDO::FETCH_ASSOC);
    
    $message = '';
    // $message = password_verify($_POST['password'], $resultado['password']);

    // print_r('');die;
     
    if (count($resultado) > 0 && password_verify($_POST['password'], $resultado['password'])) {
    
      $_SESSION['user_id'] = $resultado['id'];
      header("Location: /php-login");
    } 
    else {
      $message = 'Error, usuario y contraseña no coinciden';
    }
  }
?>