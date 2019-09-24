<?php
function print_input($datos)
{
    if ($_POST[$datos]) {
        echo htmlspecialchars($_POST($datos), ENT_QUOTES);
    }
}
?>




<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>php</title>
    <link rel="stylesheet" href="css/index.css">
</head>

<body>
    <div class="contenedor">
    <header class="header">
            <?php
            include('menu.php');
            ?>
        </header>
        
        <main>
            <div class="multiplos">
                <h3>Multiplos</h3>
                <form method="POST" action="multiplos.php">
                    <label>numero inicial</label>
                    <input type="number" name="num1">
                    <label>numero final </label>
                    <input type="number" name="num2">
                    <label>multiplo</label>
                    <input type="number" name="num3">
                    <input type="submit" name="multiplo" value="multiplo">
                </form>
            </div>

            <br><br>
            <h3>Tablas Multiplicar</h3>
            <div class="tablas">
                <label>Tabla del:</label>
                <form method="POST" action="tabla.php">
                    <input type="number" name="n1" required>
                    <label>Desde:</label>
                    <input type="number" name="n2" required>
                    <label>Hasta:</label>
                    <input type="number" name="n3" required>
                    <input type="submit" name="tabla" value="tabla">
                </form>
            </div>


            <br /><br />
            <h3>Calculadora</h3>
            <div class="calculadora">
                <form method="POST" action="calculadora.php">
                    <input type="number" step="any" name="n1" required>
                    <input type="number" name="n2"><br>
                    <input type="radio" name="operacion" value=1>Suma <br>
                    <input type="radio" name="operacion" value=2>Resta <br>
                    <input type="radio" name="operacion" value=3>Multiplicacion <br>
                    <input type="radio" name="operacion" value=4>Division <br>
                    <input type="radio" name="operacion" value=5>raiz <br>
                    <input type="radio" name="operacion" value=6>potencia <br>
                    <input type="submit" name="enviar" value="ENVIAR">
                </form>
            </div>



            <div class="udc">
                <h3>udc</h3>
                <label>Tabla del:</label>
                <form method="POST" action="udc.html">
                    <input type="number" name="n1" required>
                    <label>Desde:</label>
                    <input type="submit" name="envi" value="envi">
                </form>
            </div>



        </main>
        <footer></footer>
    </div>
</body>

</html>