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

            <h2>CSS-Float</h2> <br><br>
            <p>
            La propiedad float especifica si un elemento debe salir del flujo normal y aparecer a la izquierda o a la derecha de su contenedor, donde los elementos de texto y los en línea aparecerán a su alrededor.
            </p>
            <br>
            valor inicial: ninguno <br>
            Se aplica a: todos los elementos <br>
            valor heredado: no <br>
            <br>
            <p>
            Un elemento flotante es un elemento en el que el valor calculado de float no es igual a none. <br><br>
            Nota: <br> Al referirse a una propiedad desde JavaScript como un miembro del objeto element.style, hay que escribir la propiedad como cssFloat (ver la lista en DOM:CSS). Atención: IE llama a esta propiedad styleFloat. <br>
            </p> <br> <br>
            
            <h3>Sintaxis</h3> <br>
            float: left | right | none | inherit <br> <br>
            <h3>Valores:</h3> <br>
            left : El elemento flota a la izquierda de su bloque contenedor. <br>
            right : El elemento flota a la derecha de su bloque contenedor. <br>
            none : El elemento no flota. <br><br>
            <h3>Ejemplo</h3>
            <img src="img/float2.jpg" alt="">
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