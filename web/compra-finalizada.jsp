<%-- 
    Document   : compra-finalizada
    Created on : 04/06/2017, 14:35:26
    Author     : Betinho
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scaled=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <link rel="stylesheet" href="bootstrap.min.css">
        <link rel="stylesheet" href="layout.css">
        <title>Compra Finalizada</title>
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
                        <li><a href="EditarCliente?id=${cliente.id}">Alterar Perfil</a></li>
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
            <div class="col-md-offset-3 col-md-6">
                <div class="panel panel-success">
                    <div class="panel-heading">
                        <h3 class="panel-title">Compra Finalizada!</h3>
                    </div>
                    <div class="panel-body">
                        <img src="imagens/${venda.id_produto}.jpg" class="img-responsive" alt="${venda.produto_nome}" height=500>
                        <h5>Nome do Produto: ${venda.produto_nome}</h5>
                        <h5>Valor da Compra: ${venda.produto_valor}</h5>
                        <h5>Nome do Cliente: ${venda.cliente_nome}</h5>
                        <h5>Email do Cliente: ${venda.cliente_email}</h5>
                        <h5>Forma de Pagamento: ${venda.forma_pag}</h5>
                        <h5>Dados da Compra: ${venda.dados_pag}</h5>
                    </div>
                    <div class="panel-footer">
                        <div class="text-center">
                            <a href="Home"><button class="btn btn-lg btn-warning">Voltar</button></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
