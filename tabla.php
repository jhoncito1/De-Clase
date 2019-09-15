<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    <link rel="stylesheet" href="css/tabla.css">
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
            if (isset($_POST['tabla'])) {
                $num1 = $_POST['n1'];
                $num2 = $_POST['n2'];
                $num3 = $_POST['n3'];
                echo "<h3>La tabla del " . $num1 . " desde " . $num2 . "  hasta " . $num3 .  " son:</h3> <br>";
                echo "<table border='1px solid'>
                <tr>
                    <th>tabla</th> <th>Operador</th> <th>Multiplicador</th> <th>Igualdad</th> <th>Resultado</th>
                </tr>";
                for ($i = $num2; $i <= $num3; $i++) {
                    echo "<tr><td>" . $num1 . "</td> <td>* </td> <td>" . $i . "</td> <td> = </td> <td>" . ($num1 * $i) . "</td></tr>";
                }
                echo "</table>";
            }

            ?></main>
    </div>

</body>

</html>