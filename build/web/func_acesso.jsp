<%-- 
    Document   : func_produtos
    Created on : 04/06/2017, 17:01:29
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
        <title>Produtos</title>
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
                    </ul>
                    <ul class="nav navbar-nav navbar-right">
                        <li><a href="#"><span class="glyphicon glyphicon-user"></span>${funcionario.nome}</a></li>
                        <li><a href="Logout"><span class="glyphicon glyphicon-log-in"></span>  Sair</a></li>
                    </ul>
                </div>
            </nav> 
        </div>

        <div class="form container">
            <h1 class="titulo">Acesso do Funcionário</h1>
            <h2 class="sub-titulo">Dados da Empresa</h2>
            <ul class="nav nav-pills">
                <li class="active"><a data-toggle="pill" href="#menu1">Funcionarios</a></li>
                <li><a data-toggle="pill" href="#menu2">Clientes</a></li>
                <li><a data-toggle="pill" href="#menu3">Vendas</a></li>
                <li><a data-toggle="pill" href="#menu4">Produtos</a></li>
            </ul>

            <div class="tab-content" align="center">
                <div id="menu1" class="tab-pane fade in active">
                    <c:choose>
                        <c:when test="${not empty funcionarios}">
                            <div class="table-responsive">
                                <table class="table table-striped table-bordered table-hover">
                                    <thead>
                                        <tr>
                                            <th>ID</th>
                                            <th>Nome Funcionario</th>
                                            <th>Email</th>
                                            <th>Telefone</th>
                                            <th>Cargo</th>
                                        </tr>
                                    </thead>
                                    <c:forEach var="funcionario" items="${funcionarios}">
                                        <tbody>
                                            <tr>
                                                <td>${funcionario.id}</td>
                                                <td>${funcionario.nome}</td>
                                                <td>${funcionario.email}</td>
                                                <td>${funcionario.telefone}</td>
                                                <td>${funcionario.cargo}</td>
                                            </tr>
                                        </tbody>
                                    </c:forEach>
                                </table>          
                            </c:when>
                            <c:otherwise>
                                <h1 class="sub-titulo">Nenhum Funcionario Encontrado.</h1>
                            </c:otherwise>
                        </c:choose> 
                        <div class="row">
                            <div class="text-center">
                                <button class="btn btn-lg btn-warning" onclick="history.go(-1)">Voltar</button>
                            </div>
                        </div>
                    </div>
                </div>

                <div id="menu2" class="tab-pane fade">
                    <c:choose>
                        <c:when test="${not empty clientes}">
                            <div class="table-responsive">
                                <table class="table table-striped table-bordered table-hover">
                                    <thead>
                                        <tr>
                                            <th>ID</th>
                                            <th>Nome Cliente</th>
                                            <th>Email</th>
                                            <th>CPF</th>
                                            <th>Telefone</th>
                                            <th>Endereço</th>
                                        </tr>
                                    </thead>
                                    <c:forEach var="cliente" items="${clientes}">
                                        <tbody>
                                            <tr>
                                                <td>${cliente.id}</td>
                                                <td>${cliente.nome}</td>
                                                <td>${cliente.email}</td>
                                                <td>${cliente.cpf}</td>
                                                <td>${cliente.telefone}</td>
                                                <td>${cliente.endereco}</td>
                                            </tr>
                                        </tbody>
                                    </c:forEach>
                                </table>          
                            </c:when>
                            <c:otherwise>
                                <h1 class="sub-titulo">Nenhum Cliente Encontrado.</h1>
                            </c:otherwise>
                        </c:choose> 
                        <div class="row">
                            <div class="text-center">
                                <button class="btn btn-lg btn-warning" onclick="history.go(-1)">Voltar</button>
                            </div>
                        </div>
                    </div>
                </div>
                <div id="menu3" class="tab-pane fade">
                    <c:choose>
                        <c:when test="${not empty vendas}">
                            <div class="table-responsive">
                                <table class="table table-striped table-bordered table-hover">
                                    <thead>
                                        <tr>
                                            <th>ID</th>
                                            <th>Nome Cliente</th>
                                            <th>Nome do Produto</th>
                                            <th>Valor da Compra</th>
                                            <th>Forma de Pagamento</th>
                                            <th>Dados do Pagamento</th>
                                        </tr>
                                    </thead>
                                    <c:forEach var="venda" items="${vendas}">
                                        <tbody>
                                            <tr>
                                                <td>${venda.id}</td>
                                                <td>${venda.cliente_nome}</td>
                                                <td>${venda.cliente_email}</td>
                                                <td>${venda.produto_valor}</td>
                                                <td>${venda.forma_pag}</td>
                                                <td>${venda.dados_pag}</td>
                                            </tr>
                                        </tbody>
                                    </c:forEach>
                                </table>          
                            </c:when>
                            <c:otherwise>
                                <h1 class="sub-titulo">Nenhuma Venda Encontrada.</h1>
                            </c:otherwise>
                        </c:choose> 
                        <div class="row">
                            <div class="text-center">
                                <button class="btn btn-lg btn-warning" onclick="history.go(-1)">Voltar</button>
                            </div>
                        </div>
                    </div>
                </div>

                <div id="menu4" class="tab-pane fade">
                    <c:choose>
                        <c:when test="${not empty produtos}">
                            <div class="table-responsive">
                                <table class="table table-striped table-bordered table-hover">
                                    <thead>
                                        <tr>
                                            <th>ID</th>
                                            <th>Nome do Produto</th>
                                            <th>Categoria do Produto</th>
                                            <th>Tipo do Produto</th>
                                            <th>Valor da Compra</th>
                                        </tr>
                                    </thead>
                                    <c:forEach var="produto" items="${produtos}">
                                        <tbody>
                                            <tr>
                                                <td>${produto.id}</td>
                                                <td>${produto.nome}</td>
                                                <td>${produto.categoria}</td>
                                                <td>${produto.tipo}</td>
                                                <td>R$ ${produto.valor}</td>
                                            </tr>
                                        </tbody>
                                    </c:forEach>
                                </table>          
                            </c:when>
                            <c:otherwise>
                                <h1 class="sub-titulo">Nenhuma Produto Encontrado.</h1>
                            </c:otherwise>
                        </c:choose> 
                        <div class="row">
                            <div class="text-center">
                                <button class="btn btn-lg btn-warning" onclick="history.go(-1)">Voltar</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            
            <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
            <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    </body>
</html>
