<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    <link rel="stylesheet" href="css/html.css">
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
            <br>  <br>  <br>

            <h2>CSS-Flexbox</h2>
            <br> <br>
            <p>El Módulo de Caja Flexible, comúnmente llamado flexbox, fue diseñado como un modelo unidimensional de layout, y como un método que pueda ayudar a distribuir el espacio entre los ítems de una interfaz y mejorar las capacidades de alineación. Este artículo hace un repaso de las principales características de flexbox, las que exploraremos con mayor detalle en el resto de estas guías.</p>
            <br> <br>
            <p>
            Cuando describimos a flexbox como unidimensional destacamos el hecho que flexbox maneja el layout en una sola dimensión a la vez — ya sea como fila o como columna. Esto contrasta con el modelo bidimensional del Grid Layout de CSS, el cual controla columnas y filas a la vez.
            </p>
            <br><br>

            <p>
            Las cajas flexibles, flexbox, permiten distribuir los elementos de nuestra página de una forma ordenada y predecible ante distintos tamaños de pantalla o dispositivo, manteniendo el espacio deseado entre los items del contenedor así como su alineado.
            </p>
            <img src="img/flex2.png" alt="">
        </div>
        <div clas
        </main>



        <footer class="footer">
            <?php
                include('footer.php');
            ?>
        </footer>

    </div>
</body>

</html>