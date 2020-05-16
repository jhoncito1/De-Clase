<?php
class SiempreController extends siempre{
    public function index(){
        require_once ('views/siempre/index.php');
    }
   /*
    * formulario
    *  crear nuevo usuario
    */
    public function menu(){
        require_once ('views/Siempre/menu.php');
    }
    public function create(){
        require_once ('views/Siempre/create.php');
    }
    public function quiensomos(){
        require_once ('views/Siempre/quiensomos.php');
    }
    public function contacto(){
        require_once ('views/Siempre/contacto.php');
    }
    public function acercade(){
        require_once ('views/Siempre/acercade.php');
    }
    public function siempre(){
        require_once ('views/Siempre/acercade.php');
    }

}

?>