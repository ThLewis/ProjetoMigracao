<%-- 
    Document   : pedidos-cliente
    Created on : 04/06/2017, 00:55:12
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
        <title>Meus Pedidos</title>
    </head>
    <body>
        <div class="container header">
            <nav class="navbar navbar-inverse">
                <div class="container-fluid">
                    <div class="navbar-header">
                        <a href="Home" class="navbar-brand logotipo">
                        <img src="imagens/logo.png" alt="Division" height="30">
                    </a>
                    </div>
                    <ul class="nav navbar-nav">
                        <li><a href="Home">Home</a></li>
                        <li><a href="EditarCliente?id=${cliente.id}">Alterar Perfil</a></li>
                        <li class="active"><a href="PedidosCliente?id=${cliente.id}">Meus Pedidos</a></li>
                    </ul>
                    <ul class="nav navbar-nav navbar-right">
                        <li><a href="#"><span class="glyphicon glyphicon-user"></span>${cliente.nome}</a></li>
                        <li><a href="Logout"><span class="glyphicon glyphicon-log-in"></span>  Sair</a></li>
                    </ul>
                </div>
            </nav> 
        </div>

        <div class="form container">


            <c:choose>
                <c:when test="${not empty vendas}">
                    <div class="table-responsive">
                        <table class="table table-striped table-bordered table-hover">
                            <thead>
                                <tr>
                                    <th>ID</th>
                                    <th>Nome Produto</th>
                                    <th>Valor da Compra</th>
                                    <th>Dados do Pagamento</th>
                                    <th>Forma de Pagamento</th>
                                    <th>Alterar Dados</th>
                                    <th>Excluir Compra</th>
                                </tr>
                            </thead>
                            <c:forEach var="vendas" items="${vendas}">
                                <tbody>
                                    <tr>
                                        <td>${vendas.id}</td>
                                        <td>${vendas.produto_nome}</td>
                                        <td>${vendas.produto_valor}</td>
                                        <td>${vendas.dados_pag}</td>
                                        <td>${vendas.forma_pag}</td>
                                        <td class="text-center">
                                            <a href="AlterarDadosCompra?id=${vendas.id}" title="Editar"><span class="glyphicon glyphicon-pencil text-warning"></span></a>
                                        </td>
                                        <td class="text-center">
                                            <a href="RemoverCompra?id=${vendas.id}" title="Excluir"><span class="glyphicon glyphicon-trash text-danger"></span></a>
                                        </td>
                                    </tr>
                                </tbody>
                            </c:forEach>
                        </table>          
                    </c:when>
                    <c:otherwise>
                        <h1 class="sub-titulo">Nenhuma Compra foi Realizada</h1>
                    </c:otherwise>
                </c:choose> 
                <div class="row">
                    <div class="text-center">
                    <button class="btn btn-lg btn-warning" onclick="history.go(-1)">Voltar</button>
                    </div>
                </div>

            </div>

    </body>
</html>
