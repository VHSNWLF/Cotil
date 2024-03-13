<?php

    if($_SERVER["REQUEST_METHOD"] === "GET"){
        $msg = "";
        $situacao = "";
    }else if ($_SERVER["REQUEST_METHOD"] === "POST"){
            $n1 = $_REQUEST['nota1'];
            $n2 = $_REQUEST['nota2'];
            $media = ($n1+$n2)/2;
    
            $msg = "Média = ". $media. "<br>";
            if (trim($n1)!= "" || trim($n2)!= "") {
                if ($media >= 6){
                    $situacao = "<br> <span id='aprovado'>APROVADO</span>";
                }else{
                    $situacao = "<br> <span id='reprovado'>REPROVADO</span>";
                }
            }else{
                echo "Preencha todos os campos!";
            }
    }
?>


<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Funções</title>

    <style>
        #aprovado{
            background-color: green;
            color: white;
            font-family: Arial, Helvetica, sans-serif;
            padding: 5px;
            margin-top: 2rem;
        }

        #reprovado{
            margin-top: 2rem;
            font-family: Arial, Helvetica, sans-serif;
            padding: 5px;
            background-color: red;
            color: white;
        }
    </style>
</head>
<body>
    <h1>Calculo de média</h1>

    <form method="POST">

        Nota 1: <br>
        <input type="text" name="nota1" id="" required>

        <br><br>

        Nota 2: <br>
        <input type="text" name="nota2" id="" required>

        <br><br>

        <input type="submit" value="Calcular Média">

    </form>

    <hr>

    <?= $msg ?>
    <br>
    Situação: <br> <?= $situacao ?>
</body>
</html>

<?php

    
?>