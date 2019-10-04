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

            <h2>CSS-Position</h2> <br>
            <p>
            La propiedad position de CSS especifica cómo un elemento es posicionado en el documento. Las propiedades top, right, bottom, y left determinan la ubicación final de los elementos posicionados. <br> <br>
            <h3>Tipos de posicionamiento</h3> <br>
            Un elemento posicionado es un elemento cuyo valor computado de position es relative, absolute, fixed, o sticky. (En otras palabras, cualquiera excepto static). <br>
            Un elemento posicionado relativamente es un elemento cuyo valor computado de position es relative. Las propiedades top y bottom especifican el desplazamiento vertical desde su posición original; las propiedades left y right especifican su desplazamiento horizontal. <br> <br>
            Un elemento posicionado absolutamente es un elemento cuyo valor computado de  position es absolute o fixed. Las propiedades top, right, bottom, y  left especifican el desplazamiento desde los bordes del bloque contenedor del elemento. (El bloque contenedor es el ancestro más cercano posicionado). Si el elemento tiene márgenes, se agregarán al desplazamiento. <br> <br>
            Un elemento posicionado fijamente es un elemento cuyo valor de  position computado es sticky. Es tratado como un elemento posicionado relativamente hasta que su bloque contenedor cruza un límite establecido (como por ejemplo dando a top cualquier valor distinto de auto), dentro de su flujo principal (o el contenedor dentro del cual se mueve), punto al cual es tratado como "fijo" hasta que alcance el borde opuesto de su bloque contenedor.  <br> <br>
            La mayoría de las veces, los elementos absolutamente posicionados que tienen su height y width establecidos en auto son ajustados hasta acomodarse a su contenido. Sin embargo, elementos non-replaced y absolutamente posicionados se pueden crear para llenar el espacio vertical disponible, especificando tanto top como bottom, y dejando height sin especificar (es decir, auto). De igual manera se pueden utilizar para llenar el espacio horizontal disponible especificando tanto left como right, y dando a width el valor de auto. <br> <br>

            <h3>Ejemplo</h3> <br>
            <img src="img/position1.png" alt="">

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