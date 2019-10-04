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

            <h2>Css-Grid</h2> <br>
            <p>
            El sistema flexbox es una gran mejora, sin embargo, está orientado a estructuras de una sola dimensión, por lo que aún necesitamos algo más potente para estructuras web. Con el paso del tiempo, muchos frameworks y librerías utilizan un sistema grid donde definen una cuadrícula determinada, y modificando los nombres de las clases de los elementos HTML, podemos darle tamaño, posición o colocación. <br> <br>
            Grid CSS nace de esa necesidad, y recoge las ventajas de ese sistema, añadiendole numerosas mejoras y características que permiten crear rápidamente cuadrículas sencillas y potentes de forma prácticamente instantánea. <br><br>
            <h3>Conceptos</h3> <br>
            Antes de comenzar con Grid CSS, quizás sería conveniente dominar el sistema Flexbox, ya que Grid toma la filosofía y bases de él. Para utilizar Grid CSS necesitaremos tener en cuenta una serie de conceptos que utilizaremos a partir de ahora y que definiremos a continuación: <br> <br>
            <img src="img/grid1.png" alt=""> <br> <br>
            Contenedor: Existe un elemento padre que es el contenedor que definirá la cuadrícula o rejilla. <br>
            Ítem: Cada uno de los hijos que contiene la cuadrícula (elemento contenedor). <br>
            Celda (grid cell): Cada uno de los cuadritos (unidad mínima) de la cuadrícula. <br>
            Area (grid area): Región o conjunto de celdas de la cuadrícula. <br>
            Banda (grid track): Banda horizontal o vertical de celdas de la cuadrícula. <br>
            Línea (grid line): Separador horizontal o vertical de las celdas de la cuadrícula. <br>
            <br>
            Para utilizar cuadriculas Grid CSS, trabajaremos bajo el siguiente escenario: <br>
            <img src="img/grid2.png" alt=""> <br>
             <h3>Grid con filas y columnas</h3><br>
             Es posible crear cuadrículas con un tamaño explícito. Para ello, sólo tenemos que usar las propiedades CSS grid-template-columns y grid-template-rows, que sirven para indicar las dimensiones de cada celda de la cuadrícula, diferenciando entre columnas y filas. Las propiedades son las siguientes: <br> <br>
             <br><img src="img/grid4.png" alt=""><br><br>
             Conociendo estas dos propiedades, asumamos el siguiente código CSS: <br>
             <img src="img/grid3.png" alt="">

            </p>
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