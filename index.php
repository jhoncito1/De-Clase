<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Sitio css</title>
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
            <p> ...
                Lorem ipsum dolor sit amet consectetur adipisicing elit.
                Nisi quae vero pariatur beatae blanditiis, laborum quia
                aut incidunt dolores eos ullam necessitatibus labore
                enim. Qui vitae voluptas dolorem! Non, mollitia. <br>
                Lorem ipsum dolor sit amet consectetur adipisicing elit.
                Nisi quae vero pariatur beatae blanditiis, laborum quia
                aut incidunt dolores eos ullam necessitatibus labore
                enim. Qui vitae voluptas dolorem! Non, mollitia. br <br> <br>
                Lorem ipsum dolor sit amet consectetur adipisicing elit.
                Nisi quae vero pariatur beatae blanditiis, laborum quia
                aut incidunt dolores eos ullam necessitatibus labore
                enim. Qui vitae voluptas dolorem! Non, mollitia.
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