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
        $num1 = $_POST['num1'];
        $num2 = $_POST['num2'];
        $num3 = $_POST['num3'];

        
echo "los multiplos de ". $num3. " hasta ". $num2.  " son";    

for ($i=$num1; $i<=$num2; $i++)
{
    if($i %$num3 == 0)
    {
    $num[]=$i;
    }
}
print_r ($num);

?>
    </main>
    <footer></footer>
</body>
</html>