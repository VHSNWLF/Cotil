<?php

// $_GET[123, "Vitor", "DS"];

$op = $_REQUEST["op"];



if($op == "save"){
    include("cadastroA.php");
}else if ($op=="del"){
    include("exclusao.php");
}else if ($op=="update"){
    include("update.php");
}else if($op=="search"){
    include("search.php");
}

$ra = $_REQUEST["ra"];
$nome = $_REQUEST["nome"];
$curso = $_REQUEST["curso"];

?>