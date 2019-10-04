<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Jhon Chavez</title>
    <link rel="stylesheet" href="css/index.css">
    <link rel="stylesheet" href="css/slader.css">
</head>

<body>
    <div class="contenedor">
        <header class="header">
            <?php
            include('menu.php');
            ?>
        </header>
        
        <main class="contenido">
            
            <div class="slider">
                <div class="slider-container">
                    <figure aria-label="Jhon Chavez">
                        <img src="img/jho1.jpg" alt="img-1" class="img-responsive">
                    </figure>
                    <figure aria-label="Viajero">
                        <img src="img/jho2.jpg" alt="img-2" class="img-responsive">
                    </figure>
                    <figure aria-label="Programador">
                        <img src="img/programmin.png" alt="img-3" class="img-responsive">
                    </figure>
                    <figure aria-label="Persona">
                        <img src="img/jho3.jpg" alt="img-4" class="img-responsive">
                    </figure>
                </div>
            </div>
                <p>
                    <h4>Jhon Jainer Chavez</h4> 
                    <h4>Aprendiz: ADSI</h4> 
                    <h4>Ficha: 1786182</h4> 
                </p>
        </main>
        <aside class="sidebar">
            <h3>sidebar</h3>
        </aside>
        <div class="widget-1">
            <h3>widget 1</h3>
        </div>
        <div class="widget-2">
            <h3>widget 2</h3>
        </div>
        <footer class="footer">
        <?php
            include('footer.php');
        ?>
        </footer>
    </div>
</body>

</html>