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

            <section class="sidebar">
            <div class="divtable">
            <table>
     <tr>
         <th>
             Etiqueta
         </th>
         <th>
             Descripcion
         </th>

     </tr>
     <td>&lt;html&gt;</td>
     <td>Representa la raíz de un documento HTML o XHTML. Todos los demás elementos deben 
      ser descendientes de este elemento.</td> 
    <tr>
    <td>&lt;head&gt;</td>
    <td>Representa una colección de metadatos acerca del documento, incluyendo enlaces a, 
     o definiciones de, scripts y hojas de estilo.</td>
    </tr>
    <td>&lt;title&gt;</td>
    <td>Define el título del documento, el cual se muestra en la barra de título 
            del navegador o en las pestañas de página</td>
    <tr>
    <td>&lt;base&gt;</td>
    <td>Define la URL base para las URLs relativas en la página.</td>
    </tr>
    <tr>
     <td>&lt;noscript&gt;</td>
     <td>Define un contenido alternativo a mostrar cuando el navegador no soporta scripting.</td>
    </tr>
    <td>&lt;link&gt;</td>
    <td>Usada para enlazar JavaScript y CSS externos con el documento HTML actual</td>
    <tr>
    <td>&lt;meta&gt;</td>
    <td>Define los metadatos que no pueden ser definidos usando otro elemento HTML.</td>
    </tr>
    <tr>
    <td>&lt;style&gt;</td>
    <td>Define los metadatos que no pueden ser definidos usando otro elemento HTML.</td></td>
    </tr>
    <tr>
    <td>&lt;script&gt;</td>
    <td>Define ya sea un script interno o un enlace hacia un script externo</td></td>
    </tr>
    <tr>
    <td>&lt;body&gt;</td>
    <td>Representa el contenido principal de un documento HTML. Solo hay un elemento</td></td>
   </tr>
   <tr>
   <td>&lt;section&gt;</td>
   <td>Define una sección en un documento</td>
   </tr>
   <tr>
   <td>&lt;nav&gt;</td>
   <td>Define una sección que solamente contiene enlaces de navegación</td>
  </tr>
  <tr>
  <td>&lt;article&gt;</td>
  <td>Define contenido autónomo que podría existir independientemente del resto del contenido</td>
 </tr>
<tr>
<td>&lt;aside&gt;</td>
<td>Define algunos contenidos vagamente relacionados con el resto del contenido de la página</td>
</tr>
<tr>
<td>&lt;h1,h2,h3,h4,h5,h6&gt;</td>
<td>Los elemento de cabecera  implementan seis niveles de cabeceras de documentos; &lt;h1&gt; , es la de mayor y &lt;h6&gt; , es la de menor impotancia</td>
</tr>
<tr>
<td>&lt;header&gt;</td>
<td>Define la cabecera de una página o sección. Usualmente contiene un logotipo, 
el título del sitio Web y una tabla de navegación de contenidos</td>
</tr>
<tr>
<td>&lt;footer&gt;</td>
<td>Define el pie de una página o sección. Usualmente contiene un mensaje de derechos de autoría, algunos enlaces a información legal o direcciones 
para dar información de retroalimentación.</td>
</tr>
<tr>
<td>&lt;address&gt;</td>
<td>Define una sección que contiene información de contacto.</td>
</tr>
<td>&lt;main&gt;</td>
<td>Define el contenido principal o importante en el documento. Solamente existe un elemento.</td>
<tr>
<td>&lt;p&gt;</td>
<td>Define una parte que debe mostrarse como un párrafo</td>
</tr>
<tr>
<td>&lt;hr&gt;</td>
<td>Representa un quiebre temático entre parrafos de una sección o articulo o cualquier contenido.</td>
</tr>
<tr>
<td>&lt;blockquote&gt;</td>
<td>Representa una contenido citado desde otra fuente.</td>       
</tr>
<tr>
<td>&lt;ul&gt;</td>
<td>Define una lista de artículos sin orden.</td>  
</tr>
<tr>
<td>&lt;li&gt;</td>
<td>Define un artículo de una lista ennumerada.</td> 
</tr>
<tr>
<td>&lt;dl&gt;</td>
<td>Define una lista de definiciones, es decir, una lista de términos y sus definiciones asociadas.</td> 
</tr>
<tr>
<td>&lt;dt&gt;</td>
<td>Representa un término definido por el siguiente</td> 
</tr>
<tr>
<td>&lt;dd&gt;</td>
<td>Representa la definición de los terminos listados antes que é</td> 
</tr>
<tr>
<td>&lt;figure&gt;</td>
<td>Representa una figura ilustrada como parte  del documento.</td> 
</tr>
<tr>
<td>&lt;figcaption&gt;</td>
<td>Representa la leyenda de una figura.</td> 
</tr>
<tr>
<td>&lt;div&gt;</td>
<td>Representa un contenedor genérico sin ningún significado especial.</td> 
</tr>
<tr>
<td>&lt;a&gt;</td>
<td>Representa un hiperenlace , enlazando a otro recurso.</td>
</tr>
<tr>
<td>&lt;em&gt;</td>
<td>Representa un texto enfatizado , como un acento de intensidad.</td>
</tr>
<tr>
<td>&lt;strong&gt;</td>
<td>Representa un texto especialmente importante.</td>
</tr>
<tr>
<td>&lt;small&gt;</td>
<td>Representa un comentario aparte , es decir, textos como un descargo 
de responsabilidad o una nota de derechos de autoría,
</tr>
<tr>
<td>&lt;s&gt;</td>
<td>
Representa contenido que ya no es exacto o relevante,</td>
</tr>
<tr>
<td>&lt;cite&gt;</td>
<td>
Representa el título de una obra,</td>
</tr>
<tr>
<td>&lt;q&gt;</td>
<td>
Representa una cita textual  inline,</td>
</tr>
<tr>
<td>&lt;dfn&gt;</td>
<td>
Representa un término cuya definición  está contenida en su contenido ancestro más próximo,</td>
</tr>
<tr>
<td>&lt;abbr&gt;</td>
<td>
Representa una abreviación  o un acrónimo ; la expansión 
de la abreviatura puede ser representada por el atributo,</td>
</tr>
<tr>
 <td>&lt;data&gt;</td>
<td>
Asocia un equivalente legible por máquina a sus contenidos. (Este elemento está sólamente en la versión de la  WHATWG del estandar HTML, 
y no en la versión de la W3C de HTML5).</td>
</tr>
<tr>
<td>&lt;time&gt;</td>
<td>
Representa un valor de fecha y hora; el equivalente 
legible por máquina puede ser representado en el atributo datetime,</td>
</tr>
<tr>
<td>&lt;code&gt;</td>
 <td>
Representa un código de ordenador .</td>
</tr>
<tr>
<td>&lt;var&gt;</td>
<td>
Representa a una variable, es decir, una expresión matemática o contexto de programación, un identificador que represente a una constante, un símbolo que identifica 
una cantidad física, un parámetro de una función o un marcador de posición en prosa .</td>
<tr>
<td>&lt;samp&gt;</td>
 <td>
Representa la salida de un programa o un ordenador .</td>
</tr>
 <tr>
<td>&lt;kbd&gt;</td>
<td>
Representa la entrada de usuario, por lo general desde un teclado, pero no necesariamente, 
este puede representar otras formas de entrada de usuario, como comandos de voz transcritos.</td>
</tr>
<tr>
<td>&lt;sub&gt;</td>
<td>
Representan un subíndice y un superíndice, respectivamente.</td>
</tr>
<tr>
<td>&lt;sup&gt;</td>
<td>
Representan un subíndice y un superíndice, respectivamente.</td>
</tr>
<tr>
<td>&lt;i&gt;</td>
<td>
Representa un texto en una voz o estado de ánimo alterno, o por lo menos de diferente calidad, como una designación taxonómica, un término 
técnico, una frase idiomática, un pensamiento o el nombre de un barco.</td>
</tr>
<tr>
<td>&lt;b&gt;</td>
<td>
Representa un texto hacia el cual se llama la atención para propósitos utilitaros.  No confiere ninguna 
importancia adicional y no implica una voz alterna.</td>
</tr>
<tr>
<td>&lt;u&gt;</td>
<td>
Representa una anotación no textual sin-articular, 
como etiquetar un texto como mal escrito o etiquetar un nombre propio en texto en Chino.</td>
</tr>
<tr>
<td>&lt;mark&gt;</td>
<td>
Representa texto resaltado con propósitos de referencia, es decir por su relevancia en otro contexto.</td>
</tr>
<tr>
<td>&lt;ruby&gt;</td>
<td>
Representa contenidos a ser marcados con anotaciones ruby,  recorridos cortos de texto presentados junto al texto.</td>
</tr>
<tr>
<td>&lt;rt&gt;</td>
<td>
Representa el texto de una anotación ruby.</td>
</tr>
<tr>
<td>&lt;rp&gt;</td>
<td>
Representa los paréntesis alrededor de una anotación ruby, usada para mostrar la anotación de manera 
alterna por los navegadores que no soporten despliegue estandar para las anotaciones.</td>
</tr>
<tr>
<td>&lt;bdi&gt;</td>
<td>
Representa un texto que debe ser aislado de sus alrededores para el formateado bidireccional del texto.  
Permite incrustar un fragmento de texto con una direccionalidad diferente o desconocida..</td>
</tr>
<tr>
<td>&lt;bdo&gt;</td>
<td>
Representa la direccionalidad de sus descendientes 
con el fin de anular de forma explícita al algoritmo bidireccional Unicode.</td>
</tr>
<tr>
<td>&lt;br&gt;</td>
<td>
Representa un salto de línea.</td>
</tr>

</tr>
</table>
</div>
    
            </section>


        <footer class="footer">
            <?php
                include('footer.php');
            ?>
        </footer>

    </div>
</body>

</html>