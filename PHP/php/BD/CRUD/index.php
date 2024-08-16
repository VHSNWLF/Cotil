<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Inicio</title>
    <style>
        body{
            height: 100vh;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
        }
        div{
            border: 2px solid black;
            width: 30%;

            display: flex;
            flex-direction: column;
            justify-content: space-around;
            align-items: center;

            padding: 3%;
        }

    </style>
</head>
<body>
    <div>
        
            <h2>Controle de Alunos</h2>
            <input type="button" value="Cadastrar" onclick="window.open('cadastro.php','_top');">
            <input type="button" value="Consultar" onclick="window.open('consulta.php','_top');">
        
    </div>
</body>
</html>