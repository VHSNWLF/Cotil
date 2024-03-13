<?php

        $n1 = $_REQUEST['nota1'];
        $n2 = $_REQUEST['nota2'];
        $media = ($n1+$n2)/2;

    $msg = "Média = ". $media. "<br>";
if (trim($n1)!= "" || trim($n2)!= "") {
    if ($media >= 6){
        echo $msg . "<br> <span id='aprovado'>APROVADO</span>";
    } else {
        echo $msg . "<br> <span id='reprovado'>REPROVADO</span>";
    }
}else{
    echo "Preencha todos os campos!";
}
?>