<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="style_php.css">
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
</head>
<body>

    <h3>FIBONACCI</h3>
    <br>

    <form action="fibonacci.php" name="fibonacci" method="get" class="multiplos">
    DIGITE UN NUMERO: <input type="text" name="numero" class="form-control">
    <br>
    <input type="submit" value="ENVIAR" name="enviar" class="btn btn-primary btn-lg btn-block">    
    </form>
    <br>
    <?php
    
    if (isset($_GET['enviar'])) {
        
    $anterior = 0;
    $ultima = 1;
    $numero =$_GET["numero"];
    
    
    echo "SECUENCIA DE FIBONACCI DE 1 A $numero: <br/>";
    echo $anterior.",".$ultima.",".$ultima;
    
    $n=1;
    $anterior = 1;

    while($n < $numero)
    {
        $ultima = $anterior + $ultima;
        $anterior = $ultima - $anterior;

        if($n < $numero)
        {
        echo ",$ultima";
        }
        else{
        echo ".";
        }
        $n++;
    }
    }

    ?>
</body>
</html>