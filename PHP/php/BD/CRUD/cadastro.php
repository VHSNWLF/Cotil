<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Cadastrar</title>
    <style>
        div{
            height: 100vh;
            display: flex;
            flex-direction: column;
            align-items: center;
        }
        form{
            display: flex;
            flex-direction: column;
        }
        #error{
            color: red;
            font-weight: bold;
        }
        #warning{
            color: orange;
            font-weight: bold;
        }
        #success{
            color: green;
            font-weight: bold;
        }
    </style>
</head>
<body>
    <a href="index.php">Home</a>
    <div>
    <h2>Cadastro de Alunos</h2>
    <form method="POST">
        <label for="ra">RA</label>
        <input type="text" name="ra" id="ra" size="10">
        <label for="nome">Nome</label>
        <input type="text" name="nome" id="nome" size="30">
        <label for="curso">Curso</label>
        <select name="curso" id="curso">
            <option value="" selected></option>
            <option value="Edificações">Edificações</option>
            <option value="Enfermagem">Enfermagem</option>
            <option value="Geodésia">Geodésia</option>
            <option value="Desenvolvimento de Sistemas">Desenvolvimento de Sistemas</option>
            <option value="Mecânica">Mecânica</option>
            <option value="Qualidade">Qualidade</option>
        </select> <br> <br>
        <input type="submit" value="Cadastrar">
        <?=$msg?>
    </form>
    </div>
</body>
</html>

<?php

if($_SERVER['REQUEST_METHOD'] === "GET"){
    $msg = "";
}
else if($_SERVER['REQUEST_METHOD'] === "POST"){
    $msg = "";
    
    try{
        $ra = $_POST['ra'];
        $nome = $_POST['nome'];
        $curso = $_POST['curso'];

        if((trim($ra) == "") || (trim($nome)) == ""){
            echo "<span id='warning'>RA e nome são obrigatórios!</span>";
        }else{
            include("conexaoBD.php");
            
            //Verificando se o RA ja existe no BD para não dar exceptions
            $stmt = $pdo->prepare("select * from alunos where ra = :ra");
            $stmt->bindParam(':ra', $ra);
            $stmt->execute();

            $rows = $stmt->rowCount();

            if($rows <=0){
                $stmt = $pdo->prepare("insert into alunos (ra, nome, curso) values (:ra, :nome, :curso)");
                $stmt->bindParam(':ra', $ra);
                $stmt->bindParam(':nome', $nome);
                $stmt->bindParam(':curso', $curso);
                $stmt->execute();

                echo "<span id='success'>Aluno Cadastrado ocm sucesso!</span>";
            }else{
                echo "<span id 'error'>Ra já existente no banco de dados!</span>";
            }
        }
    }
    catch(PDOException $e){
        echo "Erro ao conectar ao banco de dados: " . $e->getMessage();
    }
}

?>