<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    <link rel="stylesheet" href="css/multiplos.css">
</head>
<body>
<header></header>
    <nav></nav>
    <aside>
        <p>p</p>
    </aside>
    <main>
    <form action="index.php" method="POST">
            <div>
                <label>num 1</label>
                <input type="number" name="num1">
                <label>num 2</label>
                <input type="number" name="num2">
            </div>
            <button type="submit">boton1</button>
            <input type="submit" name="boton" value="boton2">
        </form>
        <?php
        if (isset ($_POST ['boton']))
        {
        $num1 = $_POST['num1'];
        $num2 = $_POST['num2'];
        echo ("la suma de ".$num1." + ".$num2." es: ". ($num2 + $num1));
        }
$num = array('5' => 2,5,7,"hola");
print_r ($num);

for ($i=0; $i<11; $i++)
{
    $num2[$i]=$i;
}
echo "<br>";
print_r ($num2);
echo "posision 8 = ". $num [8];

        ?>

    </main>
    <footer></footer>
</body>
</html>