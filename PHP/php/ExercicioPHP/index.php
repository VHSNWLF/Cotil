<?php
$senha1 = md5("ENVI2224");
if($_SERVER['REQUEST_METHOD'] === "GET"){
    $msg = "";
}

if($_SERVER['REQUEST_METHOD'] === "POST"){
    $nome = trim($_POST['Nome']);
    $senha = trim($_POST['Senha']);
        if($nome && $senha != ""){
            if (strlen($senha) >= 8&& strlen($nome) >= 3){
                if(md5($senha) == $senha1){
                    setcookie("nome", $nome, time() + 3600,"/");
                    setcookie("senha", $senha, time() + 3600,"/");
                    header("location: sucess.php");
                }else{
                    $msg = "Senha incorreta";
                }
            }else{
                $msg = "O campo senha deve ter no minimo 8 caracteres e o campo nome deve ter no minimo 3 caracteres";
            }
        }else{
            $msg = "Preencha os dois campos corretamente.";
        }
}

?>

<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Exercicio</title>
    <style>
        .child{
            display: flex;
            justify-content: center;
            align-items: center;
            border: 2px solid black;
            width: 200px;
            height: 200px;
            padding-bottom: 20px;
        }

        .child h1{
            text-align: center;
        }


        .container{
            display: flex;
            justify-content: center;
            align-items: center;
        }

    </style>
</head>
<body>
    <div class="container">
        <div class="child">
            <form action="" method="POST">
                <h1>Login</h1>
                <label for="Nome">Nome</label> <br>
                <input type="text" name="Nome" id=""> <br>
                <label for="Senha">Senha</label> <br>
                <input type="text" name="Senha" id=""> <br> <br>
                <input type="submit" value="Entrar" class="btn">
                <br>
                <?=$msg?>
            </form>
        </div>
    </div>
</body>
</html>