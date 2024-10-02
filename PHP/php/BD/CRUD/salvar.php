<!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Edição aluno</title>
</head>

<body>
<a href="index.php">Home</a>
<hr>
    <h1>Edição de Aluno</h1>
    <hr>
</body>

</html>

<?php

include('conexaoBD.php');

    $ra = $_POST['ra'];
    $novoNome = $_POST['nome'];
    $novoCurso = $_POST['curso'];

    try{
        $stmt = $pdo->prepare("update alunos set nome = :novoNome, curso = :novoCurso, arquivoFoto = : arquivoFoto where ra = :ra");
        $stmt->bindParam(':ra', $ra);
        $stmt->bindParam(':novoNome', $novoNome);
        $stmt->bindParam(':novoCurso', $novoCurso);
        $stmt->bindParam(':novoCurso', $arquivoFoto);
        $stmt->execute();

        echo "Os dados do aluno de RA $ra foram alterados com sucesso!";
    } catch(PDOException $e){
        echo "Erro ao alterar dados do aluno de RA $ra: " . $e->getMessage();
    }
?>