<?php

    $nome = "COTIL";
    echo $nome;
    echo "<br><br>";

    var_dump($nome); //exibe o tipo de dados, tamanho usado e valor
    echo "<br><br>";

    $sobrenome = "Unicamp";
    
    echo $nome . "-" . $sobrenome;
    echo "<br><br>"; 

//=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-==-=-=-=-=-=-==-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
    echo "<hr>";

    

    $nota1 = 8.0;
    $nota2 = 6.0;

    if (isset($nota1) and isset($nota2)){
        $media = ($nota1 + $nota2)/2;
        echo "Média = ". $media;
    }   else  {
        echo "Informe as duas notas!";
    }

    define("PI", 3.14);

    $media = 4.5 * PI;
    
    echo "<br><br>";

    echo "Media2 = " . $media;
?>