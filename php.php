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
            <h1>PARA QUÉ SIRVE PHP</h1><br>

            
            <p> (Hypertext Preprocessor) es un lenguaje de programación interpretado que se utiliza para la generación de páginas web de forma dinámica. Éste código se ejecuta al lado del servidor y se incrusta dentro del código HTML,Cabe destacar que es un lenguaje de código abierto, gratuito y multiplataforma.  </p>
            <br>
            <img src="img/php.jpg" alt="">
            <br><br>

            <h2> QUE ES PHP</h2><br>
            <p>  es un lenguaje de código abierto muy popular especialmente adecuado para el desarrollo web y que puede ser incrustado en HTML,
                    Lo que distingue a PHP de algo del lado del cliente como Javascript es que el código es ejecutado en el servidor, generando HTML y enviándolo al cliente. El cliente recibirá el resultado de ejecutar el script, aunque no se sabrá el código subyacente que era.   </p>
                <br><br>
                <img src="img/Central 2.png" alt=""><br><br>


            <h2></h2><br>
            <p> El lenguaje de scripting PHP puede ser usado con todos los sistemas operativos populares. Además, PHP es compatible con la mayoría de los servidores web como Apache.     </p>       
            <br>
            <p> Una pequeña desventaja cuando se programa con PHP es que genera URLs que normalmente son crípticas para los usuarios y proporcionan menos palabras clave para los motores de búsqueda.    </p>
            <br><br>
            <img src="img/estructura.png" alt=""><br><br>
        </main>
        
        <footer class="footer">
            <?php
                include('footer.php');
                ?>
        </footer>
    </div>
</body>

</html>