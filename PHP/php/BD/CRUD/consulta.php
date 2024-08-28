<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Consulta</title>
</head>
<body>
    <a href="index.php">Home</a>

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
    try{
    
        echo "<table border='1px' cellspacing=0>";
        echo "<tr>";
        echo "<th>RA</th>";
        echo "<th>Nome</th>";
        echo "<th>Curso</th>";
        echo "<th colspan = 2></th>";
        echo "</tr>";
        
        //buscando dados
        $stmt->execute();

        while($row = $stmt->fetch()){
            echo "<tr>";
            echo "<td style='padding-left: 5px; padding-right: 5px;'>".$row['ra']."</td>";
            echo "<td style='padding-left: 5px; padding-right: 5px;'>".$row['nome']."</td>";
            echo "<td style='padding-left: 5px; padding-right: 5px;'>".$row['curso']."</td>";
            //remove aluno
            echo "<td><a href = 'remove.php?raAluno=".$row['ra']."'><img src = 'assets/botao-apagar.png' width='32px' style='padding-left: 5px; padding-right: 5px;'></a></td>";
            //edita aluno
            echo "<td><a href = 'edita.php?raAluno=".$row['ra']."'><img src = 'assets/editar.png' width='32px' style='padding-left: 5px; padding-right: 5px;'></a></td>";
        }
        echo"</table>";
    }catch(PDOException $e){
        echo 'Error: '. $e->getMessage();
    }

    $pdo = null;
}//fechamento do IF do POST

?>