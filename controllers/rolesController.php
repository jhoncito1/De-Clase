<?php
class rolesController extends roles
{
    public function index()
    {
        require_once('views/roles/index.php');
    }


    public function guardar()
    {
        parent::guardar_r($_POST['nombre'], $_POST['descripcion']);
        header("location:?clase=roles&method=index");
    }

    public function update()
    {
        parent::update_r($_GET['nombre'], $_GET['descripcion']);
        header("location:?clase=roles&method=index");
    }

    public function delete()
    {
        parent::delete_r($_GET['id']);
        header("location:?clase=roles&method=index");
    }

    public function details()
    {
        parent::details_r($_POST['id']);
    }
}