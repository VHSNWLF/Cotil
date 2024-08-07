<?php
    session_start();
    if(isset($_SESSION["logado"])){
        include("conteudoProfessor.php");
    }else(
        header("Location: login.php")
    )
?>

