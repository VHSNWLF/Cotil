<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Testando Menu com Include</title>
</head>
<body>
    
    <?php
    //include("menu.htm") -> Com o include o código vai rodar de qualquer jeito, usando o require ele nn rodará o código se estiver com erro.
    require("menu.html"); // -> Para funcionar tem que estar tudo certinho
    require_once("function.php"); //require_once é usado para carregar a função uma unica vez, caso o código seja mt grande, possivelmente usaremos 2x a mesma funçao sem querer e isso daria ero.
    
    //chamando a função calcMedia e armazenando na variavel média
    $media = calcMedia(9.0, 10.0);
    echo $media;

    echo "<br><br>";

    //chamando a função soma e passando os parâmetros
    soma(1, 2, 3);
    ?>

    <p>Testando menu com include</p>
</body>
</html>