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

            <h1 class="html-t">GENERALIDADES HTML5</h1><br>
            <p id="htmls">
            <img src="img/html-5.jpg" alt="">
            </p><br>
            <p id="parrafo1">
                HTML - Generalidades El HTML (HyperText Markup Language o, libremente traducido, lenguaje de enlaces
                hipertexto) es un lenguaje especial ya no es de programación común sino que es para diseño web. Además
                de resultar bastante más sencillo que un lenguaje de programación común, no se necesita ninguna
                herramienta de programación, compilador o similares, sino que cualquier editor de texto como el
                “notepad” de Windows, puede servir para realizar la páginas. Para la realización, conversión y
                tratamiento de imágenes se puede usar cualquier editor de imágenes como el photoeditor, el Picture
                manager o el photoshop. Por último, para ir observando cómo cambia la página, es necesario un navegador
                o visualizador de Internet como Netscape, Microsoft Internet Explorer, Firefox, etc . Un documento
                hipertexto no sólo se compone de texto, puede contener imágenes, sonido, vídeos, etc., por lo que el
                resultado puede considerarse como un documento multimedia. Los navegadores se encargan de interpretar el
                código HTML de los documentos, y de mostrar a los usuarios las páginas web resultantes del código
                interpretado. Tenemos que tener claro ciertas términos: Cuando hablo de una PÁGINA WEB estoy hablando de
                un documento HTML aislado que tiene información relativa a ese solo documento, en cambio cuando hablo de
                SITIO WEB me refiero a un conjunto de páginas relacionadas. Por lo común se alojan en Internet SITIOS y
                no solo páginas. Los documentos HTML deben tener la extensión html o htm, para que puedan ser
                visualizados en los navegadores .
            </p><br><br>
            <p id="parrafo2">
                NOTAS BÁSICAS: Para diseñar en HTML es imprescindible tener en claro varios puntos: <br><br>
                1- Los archivos a los que hace referencia el HTML, (imágenes, sonidos, backgrounds, etc) deben estar
                guardados en la misma carpeta que el HTML, o tendrán que tener escrita la ruta de los mismo, sino no se
                harán visibles. <br>
                2- Es importante utilizar una letra standart, tipo ARIAL o TIMES NEW ROMAN ya que si esa página va a ser
                vista por otras personas, esas personas deberán tener instalado la font que utilizamos, sino pondrá
                cualquiera por defecto cosa que varia el aspecto del diseño. <br>
                3- Cuando guardamos páginas HTML y todos sus componentes, los archivos tienen que tener NOMBRES CORTOS,
                no más de 8 caracteres, sino al alojarla en servidores puede que no se visualice correctamente. <br>
                4- Optimizar el tamaño: es fundamental utilizar imágenes o archivos de sonido de muy bajo peso en bytes
                ya que sino, tarda mucho en cargarse la imagen o el sonido y esto retarda la navegación y es un punto
                totalmente negativo.
            </p><br>

        </main>



        <footer class="footer">
            <?php
                include('footer.php');
            ?>
        </footer>

    </div>
</body>

</html>