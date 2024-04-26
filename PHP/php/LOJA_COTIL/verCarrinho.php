<?php

    $listagemProdutos = "";
    $total = 0;

    //verifica se já tem produto em cookie
    if(!isset($_COOKIE["qtd"])){
        $qtd = 0;
    }else{
        //lê a quantidade de produtos
        $qtd = $_COOKIE["qtd"];

        //lê o carrinho atual armazenado em cookie, se houver
        $carrinhoAtual = isset($_COOKIE["carrinho"]) ? $_COOKIE["carrinho"] :"";

        //como o array de carrinho tem que ser gravado serializado, para ler é necessario desserializar
        $carrinho = unserialize($carrinhoAtual);

        //percorre o carrinho lido, monta string de exibição e calcula total dos produtos
        foreach($carrinho as $produto){
            $listagemProdutos .= $produto["codigo"] . " - ";
            $listagemProdutos .= $produto["descricao"] . " - ";
            $listagemProdutos .= $produto["valor"] . "<br>";

            $total += $produto["valor"];
        }

        $total = number_format($total,2,",",".");
    }

?>

<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Carrinho</title>

    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@24,400,0,0" />

    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />

    <style>
        #menu{
            display: flex;
            flex-direction: row;
            justify-content: space-between;
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
    </style>
</head>
<body>
<h1 align="center">Lojinha do cotilzeira [Carrinho]</h1>

<hr>

<div id="menu">
    <div>
        <a href="verCarrinho.php"><span class="material"></span></a>
        <a href="lojinhaCotil.php"><span class="material-symbols-outlined">
home
</span></a>
    </div>

    <div>
        <a href="verCarrinho.php"><span class="material"></span></a>
        <span id="qtd"><?=$qtd ?></span><span class="material-symbols-outlined">
    shopping_cart_checkout
    </span>
    </div>
</div>

<p>Seus itens são:</p>

<?=$listagemProdutos ?>

<br>

<b>Total:</b> <?=$total ?>

<hr>
</body>
</html>