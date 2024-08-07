<?php
    session_start();
    if(isset($_SESSION["logado"])){
        include("conteudoAluno.php");
    }else(
        header("Location: login.php")
    )
?>
