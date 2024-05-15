<?php
    if($_SERVER['REQUEST_METHOD'] === 'GET'){
        $firstName = "";
        $msg = '';
    }
    if(!isset($_COOKIE['nome'])){
        $msg = "Você não está cadastrado!<br> Cadastre-se <a href='index.php'>Aqui</a>";
    }else{
        $nome = $_COOKIE["nome"];
        $senha = $_COOKIE["senha"];
        $firstName = explode(" ", $nome);
        echo '<h1>Bem vindo, '.$firstName[0].'</h1>';
        echo '<hr>';
    }
?>

<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <?=$msg?>
    <?php
    if(isset($_COOKIE['nome'])){
        include_once('navBar.html');
        echo '<hr>';
        include_once('conteudo.html');
    }
    ?>
</body>
</html>