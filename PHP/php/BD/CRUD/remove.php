<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Exclusão</title>
</head>
<body>
    <a href="index.php">Home</a>

    <hr>

    <h2>Exclusão de Alunos</h2>


    <hr>
</body>
</html>

<?php
include ('conexaoBD.php');
if(!isset($_GET['raAluno'])){
    echo"Selecione o aluno a ser excluído";
}else{
    $ra = $_GET['raAluno'];

    try{
        $stmt = $pdo->prepare('select arquivoFoto from alunos where ra = :ra');
        $stmt->bindParam("ra", $ra);
        $stmt->execute();
        $row = $stmt->fetch();
        $arquivoFoto = $row['arquivoFoto'];


        $stmt = $pdo->prepare('delete from alunos where ra = :ra');
        $stmt->bindParam(':ra', $ra);
        $stmt->execute();

        //removendo do disco o arquvivo correspondente
        if ($arquivoFoto !=null){
            unlink($arquivoFoto);
        }

        echo $stmt->rowCount() ." aluno de RA $ra removido!";
    }catch(PDOException $e){
        echo "Error: ".$e->getMessage();
    }
    $pdo = null;
}

?>