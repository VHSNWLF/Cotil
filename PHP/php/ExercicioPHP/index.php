<?php
$senha1 = md5("ENVI2224");
if($_SERVER['REQUEST_METHOD'] === "GET"){
    $msg = "";
}

if($_SERVER['REQUEST_METHOD'] === "POST"){
    $email = trim($_POST['Email']);
    $senha = trim($_POST['Senha']);
        if($email && $senha != ""){
            if (strlen($senha) >= 8&& strlen($email) >= 5){
                if(md5($senha) == $senha1){
                    header("location: sucess.php");
                }else{
                    $msg = "Senha incorreta";
                }
            }else{
                $msg = "O campo senha deve ter no minimo 8 caracteres e o campo email deve ter no minimo 5 caracteres";
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
</head>
<body>
    <form action="" method="POST">
        <label for="Email">E-mail</label> <br>
        <input type="text" name="Email" id=""> <br>
        <label for="Senha">Senha</label> <br>
        <input type="text" name="Senha" id=""> <br> <br>
        <input type="submit" value="Entrar">
        <?=$msg?>
    </form>
</body>
</html>