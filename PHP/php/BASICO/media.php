<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Média</title>

    <style>
        .ap{
            color: white;
            background-color: green;
        }
        .dp{
            color: black;
            background-color: yellow;
        }
        .rep{
            color: white;
            background-color: red;
        }
    </style>

</head>
<body>
    <?php
    
    $nota1 = 5;
    $nota2 = 10;
    $media = ($nota1+$nota2)/2;

    echo "Média = " . $media;
    echo "<hr>";

    if ($media >= 6){
        echo "<span class='ap'>Aprovado!</span>";
    }else if (($media > 3) && ($media < 6)){
        echo "<span class='dp'>Dependencia!</span>";
    }else{
        echo "<span class='rep'>Reprovado!</span>";
    }
    ?>
</body>
</html>