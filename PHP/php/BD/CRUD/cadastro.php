<?php
if($_SERVER['REQUEST_METHOD'] === "GET"){
    $msg = "";
}
else if($_SERVER['REQUEST_METHOD'] === "POST"){
    //constante para o tam Max de arq. de foto
    define('TAMANHO_MAXIMO', (2*1024*1024));
    $msg = "";
    
    try{
        $ra = $_POST['ra'];
        $nome = $_POST['nome'];
        $curso = $_POST['curso'];

        //upload dir
        $uploadDir = "upload/fotos/";

        //fotos
        $foto = $_FILES['foto'];
        $nomeFoto = $foto['name'];
        $tipoFoto = $foto['type'];
        $tamanhoFoto = $foto['size'];

        //gerando novo nome para a foto
        $info = new SplFileInfo($nomeFoto);
        $extensaoArq = $info->getExtension(); 
        $novoNomeFoto = $ra . "." . $extensaoArq;

        if((trim($ra) == "") || (trim($nome)) == ""){
            $msg = "<span id='warning'>RA e nome são obrigatórios!</span>";
        }else if(($nomeFoto != "")&&(!preg_match('/^image\/(jpeg|png|gif)$/', $tipoFoto))){
            echo "<span id='warning'>Imagem inválida</span>";
        }
        else if(($nomeFoto != "")&&($tamanhoFoto > TAMANHO_MAXIMO)){
            $msg = "<span id='warning'>Arquivo muito grande, max 2MB!</span>";
            }
        else{
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

                $msg = "<span id='success'>Aluno Cadastrado ocm sucesso!</span>";
            }else{
                $msg = "<span id 'error'>Ra já existente no banco de dados!</span>";
            }
        }
    }
    catch(PDOException $e){
        $msg = "Erro ao conectar ao banco de dados: " . $e->getMessage();
    }
}

?>

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
            text-align: center;
            padding-top: 5px;
            color: red;
            font-weight: bold;
        }
        #warning{
            text-align: center;
            padding-top: 5px;
            color: orange;
            font-weight: bold;
        }
        #success{
            text-align: center;
            padding-top: 5px;
            color: green;
            font-weight: bold;
        }
    </style>
</head>
<body>
    <a href="index.php">Home</a>
    <div>
    <h2>Cadastro de Alunos</h2>
    <form method="POST" enctype="multipart/form-data">
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
        <label for="imagem">Imagem</label>
        <input type="file" name="imagem" id="imagem" accept="image/*">
        <input type="submit" value="Cadastrar">
        <?=$msg?>
    </form>
    </div>
</body>
</html>

