<?php 

    

    if(!isset($_GET['raAluno'])){
        echo "Selecione um aluno a ser editado!";
    }else {
        $ra = $_GET['raAluno'];

        try{
            include('conexaoBD.php');
            $stmt = $pdo->prepare("select * from alunos where ra = :ra");
            $stmt->bindParam(':ra', $ra);
            $stmt->execute();

            $edificacoes = "";
            $enfermagem = "";
            $geodesia = "";
            $ds = "";
            $mecanica = "";
            $qualidade = "";

            while($row = $stmt->fetch()){
                $nome = $row['nome'];
                $curso = $row['curso'];
                $foto = $row['arquivoFoto'];

                //para setar o curso correto no comboBox
                if ($row['curso'] == "Edificações"){
                    $edificacoes = "selected";
                } else if($row['curso'] == "Enfermagem"){
                    $enfermagem = "selected";
                }
                 else if($row['curso'] == "Geodésia"){
                    $geodesia = "selected";
                }
                 else if($row['curso'] == "Desenvolvimento de Sistemas"){
                    $ds = "selected";
                }
                 else if($row['curso'] == "Mecânica"){
                    $mecanica = "selected";
                }
                 else if($row['curso'] == "Qualidade"){
                    $qualidade = "selected";
                }


            }
        } catch(PDOException $e){
            echo "Erro ao conectar ao banco de dados: " . $e->getMessage();
        }
    }

?>

<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Editar</title>
</head>
<body>
<a href="index.php">Home</a>
<hr>
    <h1>Edição de Aluno</h1>
    <hr>
    <form method="POST" action="salvar.php">
        <label for="ra">RA:</label> <br>
        <input type="text" name="ra" id="ra" value="<?=$ra?>" readonly> <br> <br>

        <label for="nome">Nome:</label> <br>
        <input type="text" name="nome" id="nome" value="<?=$nome?>"> <br> <br>

        <label for="curso">Curso:</label> <br>
        <select name="curso" id="curso">
            <option value="Edificações" <?=$edificacoes?> >Edificações</option>
            <option value="Enfermagem" <?=$enfermagem?> >Enfermagem</option>
            <option value="Geodésia" <?=$geodesia?> >Geodésia</option>
            <option value="Desenvolvimento de Sistemas" <?=$ds?> >Desenvolvimento de Sistemas</option>
            <option value="Mecânica" <?=$mecanica?> >Mecânica</option>
            <option value="Qualidade" <?=$qualidade?> >Qualidade</option>
        </select> <br><br>

        
        <label for="foto">Foto:</label> <br>
        <img src="<?=$foto?>" width="50px" alt="">
        <br>
        <input type="file" name="foto" id="foto">
 <br> <br>
        <input type="submit" value="Salvar">
    </form>
</body>
</html>