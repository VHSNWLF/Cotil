<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>CRUD - Controle de alunos</title>
</head>

<body>

<h2>Sistema Acadêmico - Login</h2>
<div>
    <form method="post">

        Login:<br>
        <input type="text" size="10" name="login">

        <br><br>
        Senha:<br>
        <input type="text" size="10" name="senha">

        <input type="submit" value="Ok">
        <hr>
    </form>
</div>

</body>
</html>

<?php

     if ($_SERVER["REQUEST_METHOD"] === 'POST') {
         $login = $_POST["login"];
         $senha = $_POST["senha"];

         //o ideal seria a senha ser criptografada ao cadastrar o usuário no bd, e aí ao validar aqui, usar o mesmo algoritmo de criptografia para a senha informada no form
         //$senha = crypt($senha, "c0t1lUn1camp");

        if ( (trim($login) != "") && (trim($senha != "")) ) {
            try {  

                include("conexaoBD.php");

                $stmt = $pdo->prepare("select * from usuarios where login = :login and senha = :senha");
                $stmt->bindParam(':login', $login);
                $stmt->bindParam(':senha', $senha);            
                     
                $stmt->execute();
                $rows = $stmt->rowCount();

                if ($rows > 0) {
                    //echo "Usuário Válido";
                    //adicionar na sessão um flag que indica que o usuário logou para usar nas outras páginas
                    //redirecionar para a página desejada
                    //poderia direcionar de acordo com o tipo do usuário
                    session_start();
                    $_SESSION["logado"] = true;

                    $Dados_usuario = $stmt->fetch(); //pega os dados da linha do usuario que ele encontrou no BD
                    $perfil = $Dados_usuario["perfil"];
                    if($perfil == "professor"){
                        header("Location: professor.php");
                    }else if($perfil == "aluno"){
                        header("Location: aluno.php");
                    }
                } else {
                    echo "Login e/ou senha inválido(s)";
                }
                 
            } catch (PDOException $e) {
                echo 'Error: ' . $e->getMessage();
            }
   
            $pdo = null;

        } else {
            echo "Informe o login e a senha!";
        }
     }     
?>