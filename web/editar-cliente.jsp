<%-- 
    Document   : editar-cliente
    Created on : 03/06/2017, 19:55:16
    Author     : Betinho
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <link rel="stylesheet" href="bootstrap.min.css">
        <link rel="stylesheet" href="layout.css">
        <title>Alterando Dados</title>
    </head>
    <body>
        <div class="container header">
            <nav class="navbar navbar-inverse">
                <div class="container-fluid">
                    <div class="navbar-header">
                        <a href="index.jsp" class="navbar-brand logotipo">
                        <img src="imagens/logo.png" alt="Division" height="30">
                    </a>
                    </div>
                    <ul class="nav navbar-nav">
                        <li><a href="Home">Home</a></li>
                        <li class="active"><a href="EditarCliente?id=${cliente.id}">Alterar Perfil</a></li>
                        <li><a href="PedidosCliente?id=${cliente.id}">Meus Pedidos</a></li>
                    </ul>
                    <ul class="nav navbar-nav navbar-right">
                        <li><a href="#"><span class="glyphicon glyphicon-user"></span>${cliente.nome}</a></li>
                        <li><a href="Logout"><span class="glyphicon glyphicon-log-in"></span>  Sair</a></li>
                    </ul>
                </div>
            </nav> 
        </div>

        <div class="form container">
            <form action="AlteraDadosCliente?id=${cliente.id}" method="POST" class="form-horizontal">
                <div class="form-group">
                    <label class="control-label col-sm-2" for="nome">Nome:</label>
                    <div class="col-sm-10 col-md-6">
                        <input type="text" class="form-control" name="nome" id="nome" value="${cliente.nome}" required>
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-sm-2" for="email">Email:</label>
                    <div class="col-sm-10 col-md-6">
                        <input type="email" class="form-control" name="email"  id="email" value="${cliente.email}" required>
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-sm-2" for="senha">Senha:</label>
                    <div class="col-sm-10 col-md-6">
                        <input type="password" class="form-control" name="senha"  id="senha" value="${cliente.senha}" required>
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-sm-2" for="cpf">CPF:</label>
                    <div class="col-sm-10 col-md-6">
                        <input type="text" class="form-control" name="cpf" id="cpf" value="${cliente.cpf}" required>
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-sm-2" for="telefone">Telefone:</label>
                    <div class="col-sm-10 col-md-6">
                        <input type="text" class="form-control" name="telefone" id="telefone" value="${cliente.telefone}" required>
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-sm-2" for="endereco">Endereço:</label>
                    <div class="col-sm-10 col-md-6">
                        <input type="text" class="form-control" name="endereco" id="endereco" value="${cliente.endereco}" required>
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-sm-offset-2 col-sm-10">
                        <button type="submit" class="btn btn-success">Alterar</button>
                        <button type="button" class="btn btn-danger" onclick="history.go(-1)">Voltar</button>
                    </div>
                </div>
            </form> 
        </div>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    </body>
</html>
