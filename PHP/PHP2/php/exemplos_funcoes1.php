<?php
    function calcMedia($n1, $n2){
        $media = ($n1+$n2)/2;
        return $media;
    }

    $media = calcMedia(7, 5);
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
        #reprovado{
            background-color: red;
            color: white;
            font-weight: bold;
        }
        #aprovado{
            background-color: green;
            color: white;
            font-weight: bold;
        }
    </style>
</head>
<body>
    <?= $msg ?>
</body>
</html>