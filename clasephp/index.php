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
    <header></header>
    <nav></nav>
    <aside>
        <p>asise</p>
    </aside>
    <main>

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
        if (isset($_POST['enviar'])) 
        {
            if (empty($_POST['n2']) or empty($_POST['operacion'])) 
            {
                echo "todas las casillas deben tener valor y elegir operacion";
            } 
            else 
            {
                $num1 = $_POST['n1'];
                $num2 = $_POST['n2'];


                switch ($_POST['operacion']) 
                {
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
                        $result = number_format(( $num1 / $num2),2,",",".");
                        echo "<br> El resultado de " . $num1 . " / " . $num2 . " = " . $result;
                        break;
                    case 5:
                        echo "<br> el resultado es " .pow($num1,1/$num2);
                        break;
                    case 6:
                        echo "<br> el resultado es " .pow($num1, $num2);
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
    <footer></footer>
</body>

</html>