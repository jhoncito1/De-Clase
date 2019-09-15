<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
</head>

<body>
    <header class="header">
        <?php
        include('menu.php');
        ?>
    </header>
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
</body>

</html>