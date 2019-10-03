<?php
function print_input($datos)
{
    if ($_POST[$datos]) {
        echo htmlspecialchars($_POST($datos), ENT_QUOTES);
    }
}
?>




<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>php</title>
    <link rel="stylesheet" href="css/index.css">
</head>

<body>
<div class="contenedor">
        <header class="header">
            <?php
                include('menu.php');
            ?>
        </header>

        <main class="contenido">
            <?php
                include('menu2.php');
            ?>
            <br> <br> <br>
            <h1>Generalidades PHP</h1>
            Lorem ipsum dolor sit amet consectetur adipisicing elit. Similique quod praesentium at dolores eius omnis possimus officia ducimus doloribus adipisci voluptate, ratione perferendis. Illo soluta vitae tempora quaerat. Molestias, est?
        
        </main>
        <aside class="sidebar">
            <h3>sidebar</h3>

            


        </aside>
        <div class="widget-1">
            <h3>witget 1</h3>
            
        </div>
        <div class="widget-2">
            <h3>witget 2</h3>
        </div>
        <footer class="footer">
            <?php
                include('footer.php');
                ?>
        </footer>
    </div>
</body>

</html>