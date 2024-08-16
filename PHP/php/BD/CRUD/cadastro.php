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
    </style>
</head>
<body>
    <a href="index.php">Home</a>
    <div>
    <h2>Cadastro de Alunos</h2>
    <form action="" method="POST">
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
    </form>
    </div>
</body>
</html>