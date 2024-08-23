<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Consulta</title>
</head>
<body>
    <a href="index.html">Home</a>

    <hr>

    <h2>Consulta de Alunos</h2>

    <form method="POST">
        RA: <br>
        <input type="text" name="ra" id="ra" size="10">
        <input type="submit" value="Consultar">
    </form>

    <hr>
</body>
</html>

<?php
if($_SERVER["REQUEST_METHOD"] === 'POST'){
    include('conexaoBD.php');
    if(isset($_POST['ra']) && ($_POST['ra'] != "")){
        $ra = $_POST['ra'];

        $stmt = $pdo->prepare("select * from alunos where ra= :ra");
        $stmt->bindParam(':ra', $ra);
    }else{
        $stmt = $pdo->prepare("select * from alunos order by curso, nome");
    }

    
}

?>