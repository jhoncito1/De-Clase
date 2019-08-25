<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <title>Document</title>
    <link rel="stylesheet" href="css/multiplos.css">
</head>

<body>
    <?php
    if (isset($_POST['multiplo'])) {
        $num1 = $_POST['num1'];
        $num2 = $_POST['num2'];
        $num3 = $_POST['num3'];


        echo "los multiplos de " . $num3 . " hasta " . $num2 .  " son: <br>";

        for ($i = $num1; $i <= $num2; $i++) {
            if ($i % $num3 == 0) {
                $num[] = $i;
            }
        }
        print_r($num);
    }

    ?>
</body>

</html>