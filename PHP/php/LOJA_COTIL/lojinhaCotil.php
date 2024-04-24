<?php

if ($_SERVER["REQUEST_METHOD"] === 'GET'){
    if (!isset($_COOKIE["qtd"])){
        $qtd = 0;
    } else {
        $qtd = $_COOKIE["qtd"];
    }
}

else if ($_SERVER["REQUEST_METHOD"] === 'POST'){
    if(!isset($_COOKIE["qtd"])){
        $qtd = 1;

        $codigo = $_POST["codigo"];
        $descricao = $_POST["descricao"];
        $valor = $_POST["valor"];

        $produto = array("codigo"=>$codigo, "descricao"=>$descricao, "valor"=>$_POST["valor"]);

        $carrinho = array();
        array_push($carrinho, $produto);
    } else {
        $qtd = $_COOKIE["qtd"]+1;

        $codigo = $_POST["codigo"];
        $descricao = $_POST["descricao"];
        $valor = $_POST["valor"];

        $produto = array("codigo"=>$codigo, "descricao"=>$descricao, "valor"=>$_POST["valor"]);

        $carrinhoAtual = isset($_COOKIE["carrinho"]) ? $_COOKIE["carrinho"] : "";

        $carrinho = unserialize($carrinhoAtual);

        array_push($carrinho, $produto);
    }

    setcookie("qtd", $qtd, time()+3600, "/");

    setcookie("carrinho", serialize($carrinho), time()+3600, "/");
}

?>
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Lojinha do cotilzeira</title>

    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@24,400,0,0" />

    <style>
        #listagemProdutos{
            width: 100%;
            display: flex;
            justify-content: space-around;
        }

        #produto{
            border: 1px red solid;
            width: 250px;
            height: auto;
            padding-top: 10px;
            padding-bottom: 10px;
            display: flex;
            flex-direction: column;
            align-items: center;
        }

        #qtd{
            background-color: brown;
            color: white;
            font-weight: bold;
            font-size: 12px;
            border-radius: 20px;
            padding: 3px;
            vertical-align: top;
        }

        img{
            width: 200px;
            height: 200px;
        }
    </style>
</head>
<body>
    <h1 align="center">Lojinha do cotilzeira</h1>

    <hr>

    <div align="right">
        <a href=""><span class="material"></span></a>
        <span id="qtd"><?=$qtd ?></span><span class="material-symbols-outlined">
shopping_cart_checkout
</span>
    </div>

    <hr>

    <div id="listagemProdutos">

        <div id="produto">
            <img src="Images/camisetinha.jpg" alt="">
            <br>
            <small>camisetolas - R$50,00</small>
            <br>
            <form method="post">
                <input type="hidden" name="codigo" value="cod1">
                <input type="hidden" name="descricao" value="camisetolas">
                <input type="hidden" name="valor" value="50.00">
                <input type="submit" value="Adicionar ao Carrinho">
            </form>
        </div>

        <div id="produto">
            <img src="Images/sacochila.jpg" alt="">
            <br>
            <small>sacochila - R$500</small>
            <br>
            <form method="post">
                <input type="hidden" name="codigo" value="cod2">
                <input type="hidden" name="descricao" value="sacochila">
                <input type="hidden" name="valor" value="500.00">
                <input type="submit" value="Adicionar ao Carrinho">
            </form>
        </div>

        <div id="produto">
            <img src="Images\caneca.jpg" alt="">
            <br>
            <small>canecolas - R$98540,00</small>
            <br>
            <form method="post">
                <input type="hidden" name="codigo" value="cod3">
                <input type="hidden" name="descricao" value="canecolas">
                <input type="hidden" name="valor" value="98540.00">
                <input type="submit" value="Adicionar ao Carrinho">
            </form>
        </div>

    </div>

    
</body>
</html>