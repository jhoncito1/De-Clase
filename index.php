<?php
  require_once ('models/database/DB.php');
  require_once ('models/siempre.php');
  require_once ('models/productos.php');
  require_once ('models/roles.php');
  require_once ('models/pagos.php');


   $controller=isset($_REQUEST['clase']) ? $_REQUEST['clase']: 'siempre';
   $method=isset($_REQUEST['method']) ? $_REQUEST['method']: 'index';

   // permite requerir un archivo .php en nuestro sitio
   require_once ('controllers/'.$controller.'Controller.php');

   $controller=$controller.'Controller';
   call_user_func(array($controller,$method));
   //$controller= new $controller();
   //$controller->$method();
