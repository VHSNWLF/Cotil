<?php
    if ($_SERVER["REQUEST_METHOD"] === "GET"){
        $invalid = "";
        $valor = "";
    } else if($_SERVER["REQUEST_METHOD"] === "POST"){
        $invalid = "";
        $reais = $_REQUEST["real"];
        $desconto = $_REQUEST["desconto"];
        if(trim($reais)!= "" && trim($desconto)!= ""){
            $valor = $reais - ($reais * ($desconto/100));
        }else{
            $invalid = "Preencha os dois campos!";
        }
    }

?>

<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Calculador de desconto</title>
</head>
<body>
    <h1>Calculador de desconto</h1>
    <hr>
    <span><?=$invalid?></span>
    <form method="POST">
        <label for="real">Valor em R$</label> <br>
        <input type="number" name="real" id=""> <br> <br>
        <label for="real">Desconto em %</label> <br>
        <input type="number" name="desconto" id=""> <br> <br>
        <input type="submit" value="Calcular">
    </form>
    <hr>
    <span>Valor: <?=$valor?></span>
</body>
</html>