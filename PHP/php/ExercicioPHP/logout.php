<?php
    if(isset($_COOKIE['nome']) && isset($_COOKIE['senha'])){
        setcookie("nome",0, time() -0,"/");
        setcookie("senha",0, time() -0,"/");
        header("Location: index.php");
    }else{
        echo"Você não está logado";
    }

?>