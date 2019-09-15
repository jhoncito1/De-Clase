<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    <link rel="stylesheet" href="css/ejercicios.css">
</head>

<body>
    <div class="contenedor">
        <header class="header">
            <?php
            include('menu.php');
            ?>
        </header>
        <main class="contenido">
            <h3>Calculadora</h3>
            <div class="calculadora">
                <form method="POST" action="calculadora.php">
                    <input type="number" step="any" name="n1" required>
                    <input type="number" name="n2">
                    <input type="radio" name="operacion" value=1>Suma 
                    <input type="radio" name="operacion" value=2>Resta 
                    <input type="radio" name="operacion" value=3>Multiplicacion 
                    <input type="radio" name="operacion" value=4>Division 
                    <input type="radio" name="operacion" value=5>raiz 
                    <input type="radio" name="operacion" value=6>potencia 
                    <input type="submit" name="enviar" value="ENVIAR">
                </form>
            </div>
        </main>

        <aside class="sidebar">
            <?php
            include('bancario.php');
            ?>

        </aside>

        <div class="widget-1">
            <div class="multiplos">
                <h3>Multiplos</h3>
                <form method="POST" action="multiplos.php">
                    <label>numero inicial</label><br>
                    <input type="number" name="num1"><br>
                    <label>numero final </label><br>
                    <input type="number" name="num2"><br>
                    <label>multiplo</label><br>
                    <input type="number" name="num3"><br>
                    <input type="submit" name="multiplo" value="multiplo">
                </form>
            </div>
        </div>
        <div class="widget-2">
            <h3>Tablas Multiplicar</h3>
            <div class="tablas">
                <label>Tabla del:</label>
                <form method="POST" action="tabla.php">
                    <input type="number" name="n1" required> <br>
                    <label>Desde:</label><br>
                    <input type="number" name="n2" required><br>
                    <label>Hasta:</label><br>
                    <input type="number" name="n3" required><br>
                    <input type="submit" name="tabla" value="tabla">
                </form>
            </div>
        </div>
        <div class="widget-3">
            <div class="udc">
                <h3>udc</h3>
                <label>Tabla del:</label>
                <form method="POST" action="udc.html">
                    <input type="number" name="n1" required>
                    <label>Desde:</label>
                    <input type="submit" name="envi" value="envi">
                </form>
            </div>
        </div>


        <footer class="footer">
            <h3>pie de pagina</h3>
        </footer>
    </div>
</body>

</html>