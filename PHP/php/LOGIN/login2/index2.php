<?php
    if ($_SERVER["REQUEST_METHOD"] === 'GET'){
        $pagina = "";
    } else if ($_SERVER["REQUEST_METHOD"] === 'POST'){
        $pagina = "";

        $login = $_POST["login"];
        $senha = $_POST["senha"];

        if ((trim($login) != " ") && (trim($senha) != "")){
            if (($login == "professor") && ($senha == "1234")){
                header('Location: professor.html');
            } else if (($login == "aluno") && ($senha == "5678")){
                header('Location: aluno.html');
            } else {
                header('Location: erro.html');
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