
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viweport" content="width=device-width,initial-scale=1">
    <title>Division</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel="stylesheet" href="login.css">
</head>
<body>

    <div class="login-form col-xs-10 col-xs-offset-1 col-sm-6 col-xs-offset-3 col-md-4 col-md-offset-4">
        <header>
            <h1><img class="img-responsive icone" src="imagens/logo.png"></h1>
            <h2 class="text-center">Entre com seu <b>email</b> e <b>senha</b></h2>
        </header>
        
        <form action="Home" method="POST">
            <div class="form-group">
                <div class="input-group">
                    <div class="input-group-addon">
                        <span class="glyphicon glyphicon-user"></span>
                    </div>
                    <input type="text" name="email" class="form-control" placeholder="Email">
                </div>
            </div>
            <div class="form-group">
                <div class="input-group">
                    <div class="input-group-addon">
                        <span class="glyphicon glyphicon-option-horizontal"></span>
                    </div>
                    <input type="password" name="senha" class="form-control" placeholder="Senha">
                </div>
            </div>
            
            <footer>
                <div class="checkbox pull-left">
                    <label><input type="checkbox" name="lembrar">Lembrar de mim</label>
                </div>
                <button type="button" class="btn btn-info pull-right btn-cadastro" onclick="location.href='cadastro.jsp'">Cadastre-se</button>
                <button type="submit" class="btn btn-info pull-right">Entrar</button>
                
            </footer>
        </form>
    </div>
    
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</body>
