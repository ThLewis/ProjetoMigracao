<%-- 
    Document   : cadastro
    Created on : 12/05/2017, 10:57:09
    Author     : internet
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <link rel="stylesheet" href="layout.css">
        <title>Cadastre-se na Division</title>
    </head>
    <body>

        <div class="form container">
            <header>
                <h1><img class="img-responsive icone" src="imagens/logo.png"></h1>
                <h1 class="titulo">Cadastre-se na Division!</h1>
            </header>
            <form action="Cadastrar" method="POST" class="form-horizontal" name="form">
                <div class="form-group">
                    <label class="control-label col-sm-2" for="nome">Nome:</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" name="nome" id="nome" value="${cliente.nome}" required>
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-sm-2" for="email">Email:</label>
                    <div class="col-sm-10">
                        <input type="email" class="form-control" name="email"  id="email" value="${cliente.email}" required>
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-sm-2" for="senha">Senha:</label>
                    <div class="col-sm-10">
                        <input type="password" class="form-control" name="senha"  id="senha" value="${cliente.senha}" required>
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-sm-2" for="cpf">CPF:</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" name="cpf" id="cpf" value="${cliente.cpf}" maxlength="14" onkeypress="mascara_cpf()" required>
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-sm-2" for="telefone">Telefone:</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" name="telefone" id="telefone" value="${cliente.telefone}" maxlength="13" onkeypress="mascara_telefone()" required>
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-sm-2" for="endereco">Endereço:</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" name="endereco" id="endereco" value="${cliente.endereco}" required>
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-sm-offset-2 col-sm-10">
                        <button type="submit" class="btn btn-success">Cadastrar</button>
                        <a href="index.jsp"><button type="button" class="btn btn-warning">Voltar</button></a>
                    </div>
                </div>
            </form>
        </div>   

        <script>
            function mascara_cpf() {
                if (document.form.cpf.value.length == 3) {
                    document.form.cpf.value += '.';
                }
                if (document.form.cpf.value.length == 7) {
                    document.form.cpf.value += '.';
                }
                if (document.form.cpf.value.length == 11) {
                    document.form.cpf.value += '-';
                }
            }
            function mascara_telefone() {
                if (document.form.telefone.value.length == 2) {
                    document.form.telefone.value += ' ';
                }
                if (document.form.telefone.value.length == 8) {
                    document.form.telefone.value += '-';
                }
            }
        </script>

    </body>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</html>
