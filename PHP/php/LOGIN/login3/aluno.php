<?php
    session_start();
?>

<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sistema Acadêmico</title>
</head>
<body>
    <?php
    
    if(!isset($_SESSION['login'])){
        $msg = "Você não está logado!<br><a href ='index2.php'>Voltar</a>";
        header("Location: erro.php?msg=".$msg);
    }else{
        include("contentAluno.php");
    }

    ?>
</body>
</html>