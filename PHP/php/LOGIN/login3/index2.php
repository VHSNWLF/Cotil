<?php
    if ($_SERVER["REQUEST_METHOD"] === 'GET'){
        $pagina = "";
    } else if ($_SERVER["REQUEST_METHOD"] === 'POST'){
        $pagina = "";

        $login = $_POST["login"];
        $senha = $_POST["senha"];

        if ((trim($login) != " ") && (trim($senha) != "")){
            if (($login == "João") && ($senha == "1234")){
                session_start();
                $_SESSION['login'] = $login;
                header('Location: professor.php');
            } else if (($login == "Julio") && ($senha == "5678")){
                session_start();
                $_SESSION['login'] = $login;
                header('Location: aluno.php');
            } else {
                $msg = "Login ou senha inválido(s)!";
                header('Location: erro.php?msg='.$msg);
            }
        } else {
            echo "Informe seu login e sua senha";
        }
    }
?>

<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sistema Acadêmico</title>
</head>
<body>
    <h1 style="text-align: center;">Sistema Acadêmico</h1>
    <hr>
    <form method="post">
        Login:<br>
        <input type="text" name="login" id="login" required>

        <br><br>

        Senha:<br>
        <input type="password" name="senha" id="senha" required>
        <br><br>
        <input type="submit" value="Realizar login">
        <hr>
    </form>
</body>
</html>