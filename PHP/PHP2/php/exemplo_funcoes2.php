<?php

    

    function calcMedia(){
        $n1 = $_REQUEST['nota1'];
        $n2 = $_REQUEST['nota2'];
        $media = ($n1+$n2)/2;
        
        return $media;
    }

    $msg = "Média = ". $media. "<br>";

    if ($media >= 6){
        $msg .= "<br> <span id='aprovado'>APROVADO</span>";
    } else {
        $msg .= "<br> <span id='reprovado'>REPROVADO</span>";
    }
?>

<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Funções</title>

    <style>
        
    </style>
</head>
<body>
    <h1>Calculo de média</h1>

    <form method="POST">

        Nota 1: <br>
        <input type="text" name="nota1" id="">

        <br><br>

        Nota 2: <br>
        <input type="text" name="nota2" id="">

        <br><br>

        <input type="submit" value="Calcular">

    </form>

    <?= $msg ?>
</body>
</html>