<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Sitio css</title>
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
                    <figure aria-label="Texto imagen 1">
                        <img src="img/img-1.jpg" alt="img-1" class="img-responsive">
                    </figure>
                    <figure aria-label="Texto imagen 2">
                        <img src="img/img-2.jpg" alt="img-2" class="img-responsive">
                    </figure>
                    <figure aria-label="Texto imagen 3">
                        <img src="img/img-3.jpg" alt="img-3" class="img-responsive">
                    </figure>
                    <figure aria-label="Texto imagen 4">
                        <img src="img/img-4.jpg" alt="img-4" class="img-responsive">
                    </figure>
                </div>
            </div>
                <p>
                    Lorem ipsum dolor sit amet, consectetur adipisicing elit. Magnam officia non quas dolorum natus nobis, amet excepturi ratione quod repudiandae unde quisquam distinctio, quis numquam minus velit, veritatis hic blanditiis.
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