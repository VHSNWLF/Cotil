<?php
if ($_SESSION["logado"] == false){
    header("Location: login.php");
}
?>

<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Aluno Area</title>
</head>
<body>
    <h2>Sistema Academico</h2>
    <h3>Bem-Vindo a área do aluno!</h3>
    <a href="sair.php">Sair</a>
</body>
</html>