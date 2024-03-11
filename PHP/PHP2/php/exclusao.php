<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Excluir aluno</title>

    <style>
        .forms{
            display: flex;
            flex-direction: column;
            gap: 2rem;
            align-items: start;
        }

        .input-group{
            display: flex;
            flex-direction: column;
        }

    </style>
</head>
<body>
    <h1>Exclusão de alunos</h1>

    <form method="post" action="controleAlunos.php?op=save">
        <div class="forms">
            <div class="input-group">
                <label for="ra">RA:</label>
                <input type="text" name="ra" id="">
            </div>
            
            <div class="input-group">
                <label for="nome">Nome:</label>
                <input type="text" name="nome" id="">
            </div>

            <div class="input-group">
                <label for="Curso">Curso:</label>
                <input type="text" name="curso" id="">
            </div>

            <div class="btn">
                <input type="submit" value="Cadastrar">
            </div>
        </div>
    </form>
</body>
</html>