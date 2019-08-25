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
    <header></header>
    <nav></nav>
    <aside>
        <p>aside Lorem ipsum dolor sit amet consectetur adipisicing elit. In ipsa impedit voluptas, dignissimos eveniet sunt ex saepe consequatur placeat amet ducimus error molestias sit voluptate omnis quas mollitia similique excepturi?</p>
    </aside>
    <main>

        <form action="index.php" method="POST">
            <div>
                <label>numero inicial</label>
                <input type="number" name="num1"><br><br>
                <label>numero final </label>
                <input type="number" name="num2"><br><br>
                <label>multiplo</label>
                <input type="number" name="num3"><br>
            </div>

            <input type="submit" name="boton" value="boton2">
        </form>

        <?php
        if (isset($_POST['boton'])) 
        {
            $num1 = $_POST['num1'];
            $num2 = $_POST['num2'];
            $num3 = $_POST['num3'];


            echo "los multiplos de " . $num3 . " hasta " . $num2 .  " son: <br>";

            for ($i = $num1; $i <= $num2; $i++) 
            {
                if ($i % $num3 == 0) 
                {
                    $num[] = $i;
                }
            }
            print_r($num);
        }
        ?>

        <form method="POST" action="index.php">


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

        <?php
        if (isset($_POST['enviar'])) {
            if (empty($_POST['n2']) or empty($_POST['operacion'])) {
                echo "todas las casillas deben tener valor y elegir operacion";
            } else {
                $num1 = $_POST['n1'];
                $num2 = $_POST['n2'];


                switch ($_POST['operacion']) {
                    case 1:
                        $result = $num1 + $num2;
                        echo "<br> El resultado de " . $num1 . " + " . $num2 . " = " . $result;
                        break;
                    case 2:
                        $result = $num1 - $num2;
                        echo "<br> El resultado de " . $num1 . " - " . $num2 . " = " . $result;
                        break;
                    case 3:
                        $result = $num1 * $num2;
                        echo "<br> El resultado de " . $num1 . " * " . $num2 . " = " . $result;
                        break;
                    case 4:
                        $result = number_format(($num1 / $num2), 2, ",", ".");
                        echo "<br> El resultado de " . $num1 . " / " . $num2 . " = " . $result;
                        break;
                    case 5:
                        echo "<br> el resultado es " . pow($num1, 1 / $num2);
                        break;
                    case 6:
                        echo "<br> el resultado es " . pow($num1, $num2);
                        break;
                        break;

                    default:
                        echo "selecciona una opcion";
                        break;
                }
            }
        }
        ?>






    </main>
    <footer> </footer>
</body>

</html>