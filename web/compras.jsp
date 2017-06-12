
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri = "http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scaled=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <link rel="stylesheet" href="bootstrap.min.css">
        <link rel="stylesheet" href="layout.css">
        <title>Realizando Compra</title>
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
            <div class="row">

                <div class="col-sm-6">
                    <div class="panel panel-info">
                        <div class="panel-heading">
                            <h3 class="panel-title">Produto</h3>
                        </div>
                        <div class="panel-body">
                            <img src="imagens/${produto.id}.jpg" class="img-responsive" alt="${produto.nome}" height=500>
                            <h4>Nome: ${produto.nome}</h4>
                            <h4>Categoria: ${produto.categoria}</h4>
                            <h4>Tipo: ${produto.tipo}</h4>
                            <h4>Valor: R$ ${produto.valor}</h4>
                        </div>
                    </div>
                </div>



                <div class="col-sm-6">
                    <div class="row">
                        <div class="col-sm-12">
                            <div class="panel panel-primary">
                                <div class="panel-heading">
                                    <h3 class="panel-title">Cliente</h3>
                                </div>
                                <div class="panel-body">
                                    <h4>Nome: ${cliente.nome}</h4>
                                    <h4>Email: ${cliente.email}</h4>
                                    <h4>CPF: ${cliente.cpf}</h4>
                                    <h4>Telefone: ${cliente.telefone}</h4>
                                    <h4>Endereco: ${cliente.endereco}</h4>
                                </div>
                            </div>
                        </div>  
                        <div class="col-sm-12">  
                            <div class="panel panel-success">
                                <div class="panel-heading">
                                    <h3 class="panel-title">Finalizar Compra</h3>
                                </div>
                                <form action="FinalizaCompra" method="POST" class="" name="form">
                                    <div class="panel-body">
                                        <div class="form-group">
                                            <label for="forma_pag">Forma de Pagamento:</label>
                                            <select class="form-control" id="forma_pag" name="forma_pag" required>
                                                <option value="">Selecione a forma de Pagamento</option>
                                                <c:forEach var="forma" items="${formas}">
                                                    <option value="${forma}">${forma}</option>
                                                </c:forEach>
                                            </select>
                                        </div> 
                                        <div class="form-group">
                                            <label for="dados_pag">Dados do Cartão:</label>
                                            <input type="text" class="form-control" id="dados_pag" maxlength="19" name="dados_pag" onkeypress="mascara_cartao()" required>
                                        </div>
                                        <div class="form-group">
                                            <button type="submit" class="btn btn-success">Finalizar Compra</button>
                                            <button type="button" class="btn btn-danger" onclick="history.go(-1)">Cancelar</button>
                                        </div>
                                    </div>
                                </form>
                            </div>    
                        </div>
                    </div>  
                </div>          
            </div>      
        </div>
        <script>
            function mascara_cartao() {
                if (document.form.dados_pag.value.length === 4) {
                    document.form.dados_pag.value += ' ';
                }
                if (document.form.dados_pag.value.length === 9) {
                    document.form.dados_pag.value += ' ';
                }
                if (document.form.dados_pag.value.length === 14) {
                    document.form.dados_pag.value += ' ';
                }
            }
        </script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    </body>
</html>
