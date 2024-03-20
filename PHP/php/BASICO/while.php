<?php

$n=1;
$tabuada = 7;
echo "<hr>";
echo "<h1>WHILE</h1><br>";

while ($n<=10) {
    echo $n. " x ". $tabuada. " = ". $n*$tabuada. "<br>";
    $n++;
}
echo  "<hr>";
echo "<h1>DO WHILE</h1>";
$n = 1;
$tabuada = 7; 
do{
    echo $n. " x ". $tabuada. " = ". $n*$tabuada. "<br>";
    $n++;
} while($n<=10);
echo  "<hr>";
?>