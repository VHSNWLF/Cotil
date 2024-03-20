<?php

    $op = 1;

    switch($op){
        case 1:
            echo "Cadastro";
            break;
        case 2:
            echo "Relatórios";
            break;
        default:
        echo 'Opção inválida';
        break;
    }
    echo '<br>';
    echo 'oi';

    $n = 1;
    $tabuada = 7;

    for($n=1;$n<-10;$n++){
        echo $n . ' x ' . $tabuada . ' = ' . ($n * $tabuada) . '<br>';
    }
?>