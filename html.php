<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    <link rel="stylesheet" href="generalidades.css">
</head>

<body>
    <header class="header">
        <?php
        include('menu.php');
        ?>
    </header>
    <div class="cont1">


        <aside class="anuncios">
            <p>
                <h3>anuncios</h3>
            </p>
            <iframe width="200px" height="170px" src="https://www.youtube.com/embed/ivmHpFX_oew" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe><br>
            <img src="img/vino.jpg" alt="" width="100%" height="500px"><br>
            <p id="ppub"> Lorem ipsum dolor consequuntur? Quasi nihil veniam qui libero praesentium ratione,
                necessitatibus adipisci quo repudiandae nam. Consequuntur beatae dolorum assumenda illum ad consectetur
                necessitatibus?</p>

        </aside>

        <section class="principal">
            <h1>GENERALIDADES HTML5</h1><br>
            <p id="htmls">
                <img src="img/html-5.png" alt="">
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

        </section>

        <section class="publicidad">
            <p> Lorem ipsum dolor sit amet consectetur, adipisicing elit. Quidem, facilis consectetur ratione
                exercitationem deserunt velit asperiores rem quas dolorum quaerat magnam amet soluta aliquid impedit
                voluptas harum fugit itaque accusantium. <br>
                Lorem ipsum, dolor sit amet consectetur adipisicing elit. Sint, libero ex error facere similique
                pariatur deserunt eligendi optio possimus sequi ipsum in quas doloremque tenetur voluptatem labore
                aliquid minima sed. <br>
                <img src="img/publimotos.jpg" alt="">
            </p>
        </section>

    </div>


    <footer class="pie">
        <p>
            <h2>&lt;&lt;HTML5&gt;&gt;</h2>
        </p>
    </footer>
</body>

</html>