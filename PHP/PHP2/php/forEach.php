<?php
$cores = array("Branco", "Preto","Vermelho");

foreach($cores as $cor){
    //para cada cor na array cores ele exibe a cor
    echo $cor."<br>";
}

$produtos = array(19.99, 199.99, 50.00);
$total = 0;
foreach($produtos as $valor){
    //soma todos os valores da array produtos e armazena no total
    $total += + $valor;
}
echo $total;
?>