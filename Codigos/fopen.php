<?php
$filename = fopen("log.txt", 'a+');

/* $user = $_SESSION['user']; */
$func = "exclusãoAluno";
$op = "exclusao";

fwrite($filename, "\n".$func.'-'.$op."-".date("Y-m-d H:i:s"));

echo "Tamanho do arquivo " . filesize("log.txt") . "<br>";

fclose($filename);

echo "Arquivo criado com sucesso";
