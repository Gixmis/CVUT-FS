<!DOCTYPE html>
<html>
<head> 

<link rel="stylesheet" href ="hnusnystyl.css">
</head>


    

<body>
    <form action = "2.php" method="get">
<input type ="text" name = "a"> zadejte a <br>
<input type ="text" name = "b"> zadejte b <br>
<input type ="text" name = "c"> zadejte c <br>

<input type="submit">

</form>



<h1>My first PHP page</h1>

<?php

echo "tohle se vypíše";
$c = "5 kg";
$d = "8 kg";
$e = $e + $d;
echo $d;
$f = $c.$d;
echo $f;

$g = "test$c proměnné$d";
$h = 'test $c proměnné $d';

for ($j = 1; $j < 10; $j++ ) {
    for ($i = 1; $i < $j; $i++)
        {echo "***";}
    echo "<br> \n";}

$a = $_GET["a"]



?>

</body>
</html>