<?php
$database = 'personas_db';
// $server = 'localhost';
$user = 'root';
$password = '';

try {
  $con=new PDO('mysql:host=localhost;dbname='.$database,$user,$password);
  //$con = new PDO("mysql:host=$server;dbname=$database;", $username, $password);
} catch (PDOException $e) {
  die('Connection Failed: ' . $e->getMessage());
}

?>
