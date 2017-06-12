
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scaled=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <link rel="stylesheet" href="bootstrap.min.css">
        <link rel="stylesheet" href="layout.css">
        <title>Home</title>
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
                        <li class="active"><a href="Home">Home</a></li>
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
            <h1 class="titulo">Nossos Produtos</h1>
            <h2 class="sub-titulo">Templates e Aplicativos</h2>
            <ul class="nav nav-pills">
                <li class="active"><a data-toggle="pill" href="#menu1">Templates de Portifólio</a></li>
                <li><a data-toggle="pill" href="#menu2">Templates p/ E-Commerce</a></li>
                <li><a data-toggle="pill" href="#menu3">Templates p/ Empresas</a></li>
                <li ><a data-toggle="pill" href="#menu4">Apps Sociais</a></li>
                <li ><a data-toggle="pill" href="#menu5">Games Mobile</a></li>
                <li ><a data-toggle="pill" href="#menu6">Apps Empresariais</a></li>
            </ul>

            <div class="tab-content" align="center">

                <div id="menu1" class="tab-pane fade in active">
                    <c:forEach var="produto" items="${produtos}">
                        <c:if test="${produto.tipo eq 'Portifólio'}">
                            <div class="col-md-4 produto">
                                <img src="imagens/${produto.id}.jpg" classalt="${produto.nome}" height="200">
                                <button type="button" class="btn btn-info btn-ver" data-toggle="modal" data-target="#${produto.id}">Ver</button>
                                <div class="modal fade" id="${produto.id}" role="dialog">
                                    <div class="modal-dialog modal-lg">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <button type="button" class="close" data-dismiss="modal">&times;</button>
                                                <h4 class="modal-title">Vizualização de Produto</h4>
                                            </div>
                                            <div class="modal-body">
                                                <img src="imagens/${produto.id}.jpg" class="img-responsive" alt="${produto.nome}" height=400">
                                                <h4>Nome: ${produto.nome}</h4>
                                                <h4>Categoria: ${produto.categoria}</h4>
                                                <h4>Tipo: ${produto.tipo}</h4>
                                                <h4>Valor: R$ ${produto.valor}</h4>
                                                <a href="Compra?id=${produto.id}"><button  class="btn btn-success">Comprar</button></a>                                               
                                            </div>
                                            <div class="modal-footer">
                                                <button type="button" class="btn btn-default" data-dismiss="modal">Fechar</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </c:if>
                    </c:forEach>
                </div>

                <div id="menu2" class="tab-pane fade">
                    <c:forEach var="produto" items="${produtos}">
                        <c:if test="${produto.tipo eq 'E-Commerce'}">
                            <div class="col-md-4 produto">
                                <img src="imagens/${produto.id}.jpg" classalt="${produto.nome}" height="200">
                                <button type="button" class="btn btn-info btn-ver" data-toggle="modal" data-target="#${produto.id}">Ver</button>
                                <div class="modal fade" id="${produto.id}" role="dialog">
                                    <div class="modal-dialog modal-lg">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <button type="button" class="close" data-dismiss="modal">&times;</button>
                                                <h4 class="modal-title">Vizualização de Produto</h4>
                                            </div>
                                            <div class="modal-body">
                                                <img src="imagens/${produto.id}.jpg" class="img-responsive" alt="${produto.nome}" height=400">
                                                <h4>Nome: ${produto.nome}</h4>
                                                <h4>Categoria: ${produto.categoria}</h4>
                                                <h4>Tipo: ${produto.tipo}</h4>
                                                <h4>Valor: R$ ${produto.valor}</h4>
                                                <a href="Compra?id=${produto.id}"><button  class="btn btn-success">Comprar</button></a>                                               
                                            </div>
                                            <div class="modal-footer">
                                                <button type="button" class="btn btn-default" data-dismiss="modal">Fechar</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </c:if>
                    </c:forEach>
                </div>
                <div id="menu3" class="tab-pane fade">
                    <c:forEach var="produto" items="${produtos}">
                        <c:if test="${produto.categoria eq 'Template' && produto.tipo eq 'Empresarial'}">
                            <div class="col-md-4 produto">
                                <img src="imagens/${produto.id}.jpg" classalt="${produto.nome}" height="200">
                                <button type="button" class="btn btn-info btn-ver" data-toggle="modal" data-target="#${produto.id}">Ver</button>
                                <div class="modal fade" id="${produto.id}" role="dialog">
                                    <div class="modal-dialog modal-lg">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <button type="button" class="close" data-dismiss="modal">&times;</button>
                                                <h4 class="modal-title">Vizualização de Produto</h4>
                                            </div>
                                            <div class="modal-body">
                                                <img src="imagens/${produto.id}.jpg" class="img-responsive" alt="${produto.nome}" height=400">
                                                <h4>Nome: ${produto.nome}</h4>
                                                <h4>Categoria: ${produto.categoria}</h4>
                                                <h4>Tipo: ${produto.tipo}</h4>
                                                <h4>Valor: R$ ${produto.valor}</h4>
                                                <a href="Compra?id=${produto.id}"><button  class="btn btn-success">Comprar</button></a>                                               
                                            </div>
                                            <div class="modal-footer">
                                                <button type="button" class="btn btn-default" data-dismiss="modal">Fechar</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </c:if>
                    </c:forEach>
                </div>
                <div id="menu4" class="tab-pane fade">
                    <c:forEach var="produto" items="${produtos}">
                        <c:if test="${produto.tipo eq 'Social'}">
                            <div class="col-md-4 produto">
                                <img src="imagens/${produto.id}.jpg" classalt="${produto.nome}" height="200">
                                <button type="button" class="btn btn-info btn-ver" data-toggle="modal" data-target="#${produto.id}">Ver</button>
                                <div class="modal fade" id="${produto.id}" role="dialog">
                                    <div class="modal-dialog modal-lg">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <button type="button" class="close" data-dismiss="modal">&times;</button>
                                                <h4 class="modal-title">Vizualização de Produto</h4>
                                            </div>
                                            <div class="modal-body">
                                                <img src="imagens/${produto.id}.jpg" class="img-responsive" alt="${produto.nome}" height=400">
                                                <h4>Nome: ${produto.nome}</h4>
                                                <h4>Categoria: ${produto.categoria}</h4>
                                                <h4>Tipo: ${produto.tipo}</h4>
                                                <h4>Valor: R$ ${produto.valor}</h4>
                                                <a href="Compra?id=${produto.id}"><button  class="btn btn-success">Comprar</button></a>                                            
                                            </div>
                                            <div class="modal-footer">
                                                <button type="button" class="btn btn-default" data-dismiss="modal">Fechar</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </c:if>
                    </c:forEach>
                </div>

                <div id="menu2" class="tab-pane fade">
                    <c:forEach var="produto" items="${produtos}">
                        <c:if test="${produto.tipo eq 'E-Commerce'}">
                            <div class="col-md-4 produto">
                                <img src="imagens/${produto.id}.jpg" classalt="${produto.nome}" height="200">
                                <button type="button" class="btn btn-info btn-ver" data-toggle="modal" data-target="#${produto.id}">Ver</button>
                                <div class="modal fade" id="${produto.id}" role="dialog">
                                    <div class="modal-dialog modal-lg">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <button type="button" class="close" data-dismiss="modal">&times;</button>
                                                <h4 class="modal-title">Vizualização de Produto</h4>
                                            </div>
                                            <div class="modal-body">
                                                <img src="imagens/${produto.id}.jpg" class="img-responsive" alt="${produto.nome}" height=400">
                                                <h4>Nome: ${produto.nome}</h4>
                                                <h4>Categoria: ${produto.categoria}</h4>
                                                <h4>Tipo: ${produto.tipo}</h4>
                                                <h4>Valor: R$ ${produto.valor}</h4>
                                                <a href="Compra?id=${produto.id}"><button  class="btn btn-success">Comprar</button></a>                                               
                                            </div>
                                            <div class="modal-footer">
                                                <button type="button" class="btn btn-default" data-dismiss="modal">Fechar</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </c:if>
                    </c:forEach>
                </div>

                <div id="menu2" class="tab-pane fade">
                    <c:forEach var="produto" items="${produtos}">
                        <c:if test="${produto.tipo eq 'E-Commerce'}">
                            <div class="col-md-4 produto">
                                <img src="imagens/${produto.id}.jpg" classalt="${produto.nome}" height="200">
                                <button type="button" class="btn btn-info btn-ver" data-toggle="modal" data-target="#${produto.id}">Ver</button>
                                <div class="modal fade" id="${produto.id}" role="dialog">
                                    <div class="modal-dialog modal-lg">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <button type="button" class="close" data-dismiss="modal">&times;</button>
                                                <h4 class="modal-title">Vizualização de Produto</h4>
                                            </div>
                                            <div class="modal-body">
                                                <img src="imagens/${produto.id}.jpg" class="img-responsive" alt="${produto.nome}" height=400">
                                                <h4>Nome: ${produto.nome}</h4>
                                                <h4>Categoria: ${produto.categoria}</h4>
                                                <h4>Tipo: ${produto.tipo}</h4>
                                                <h4>Valor: R$ ${produto.valor}</h4>
                                                <a href="Compra?id=${produto.id}"><button  class="btn btn-success">Comprar</button></a>                                                
                                            </div>
                                            <div class="modal-footer">
                                                <button type="button" class="btn btn-default" data-dismiss="modal">Fechar</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </c:if>
                    </c:forEach>
                </div>
                <div id="menu3" class="tab-pane fade">
                    <c:forEach var="produto" items="${produtos}">
                        <c:if test="${produto.categoria eq 'Template' && produto.tipo eq 'Empresarial'}">
                            <div class="col-md-4 produto">
                                <img src="imagens/${produto.id}.jpg" classalt="${produto.nome}" height="200">
                                <button type="button" class="btn btn-info btn-ver" data-toggle="modal" data-target="#${produto.id}">Ver</button>
                                <div class="modal fade" id="${produto.id}" role="dialog">
                                    <div class="modal-dialog modal-lg">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <button type="button" class="close" data-dismiss="modal">&times;</button>
                                                <h4 class="modal-title">Vizualização de Produto</h4>
                                            </div>
                                            <div class="modal-body">
                                                <img src="imagens/${produto.id}.jpg" class="img-responsive" alt="${produto.nome}" height=400">
                                                <h4>Nome: ${produto.nome}</h4>
                                                <h4>Categoria: ${produto.categoria}</h4>
                                                <h4>Tipo: ${produto.tipo}</h4>
                                                <h4>Valor: R$ ${produto.valor}</h4>
                                                <a href="Compra?id=${produto.id}"><button  class="btn btn-success">Comprar</button></a>                                                
                                            </div>
                                            <div class="modal-footer">
                                                <button type="button" class="btn btn-default" data-dismiss="modal">Fechar</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </c:if>
                    </c:forEach>
                </div>
                <div id="menu3" class="tab-pane fade">
                    <c:forEach var="produto" items="${produtos}">
                        <c:if test="${produto.categoria eq 'Template' && produto.tipo eq 'Empresarial'}">
                            <div class="col-md-4 produto">
                                <img src="imagens/${produto.id}.jpg" classalt="${produto.nome}" height="200">
                                <button type="button" class="btn btn-info btn-ver" data-toggle="modal" data-target="#${produto.id}">Ver</button>
                                <div class="modal fade" id="${produto.id}" role="dialog">
                                    <div class="modal-dialog modal-lg">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <button type="button" class="close" data-dismiss="modal">&times;</button>
                                                <h4 class="modal-title">Vizualização de Produto</h4>
                                            </div>
                                            <div class="modal-body">
                                                <img src="imagens/${produto.id}.jpg" class="img-responsive" alt="${produto.nome}" height=400">
                                                <h4>Nome: ${produto.nome}</h4>
                                                <h4>Categoria: ${produto.categoria}</h4>
                                                <h4>Tipo: ${produto.tipo}</h4>
                                                <h4>Valor: R$ ${produto.valor}</h4>
                                                <a href="Compra?id=${produto.id}"><button  class="btn btn-success">Comprar</button></a>                      
                                            </div>
                                            <div class="modal-footer">
                                                <button type="button" class="btn btn-default" data-dismiss="modal">Fechar</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </c:if>
                    </c:forEach>
                </div>
                <div id="menu5" class="tab-pane fade">
                    <c:forEach var="produto" items="${produtos}">
                        <c:if test="${produto.tipo eq 'Games'}">
                            <div class="col-md-4 produto">
                                <img src="imagens/${produto.id}.jpg" classalt="${produto.nome}" height="200">
                                <button type="button" class="btn btn-info btn-ver" data-toggle="modal" data-target="#${produto.id}">Ver</button>
                                <div class="modal fade" id="${produto.id}" role="dialog">
                                    <div class="modal-dialog modal-lg">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <button type="button" class="close" data-dismiss="modal">&times;</button>
                                                <h4 class="modal-title">Vizualização de Produto</h4>
                                            </div>
                                            <div class="modal-body">
                                                <img src="imagens/${produto.id}.jpg" class="img-responsive" alt="${produto.nome}" height=400">
                                                <h4>Nome: ${produto.nome}</h4>
                                                <h4>Categoria: ${produto.categoria}</h4>
                                                <h4>Tipo: ${produto.tipo}</h4>
                                                <h4>Valor: R$ ${produto.valor}</h4>
                                                <a href="Compra?id=${produto.id}"><button  class="btn btn-success">Comprar</button></a>                                                
                                            </div>
                                            <div class="modal-footer">
                                                <button type="button" class="btn btn-default" data-dismiss="modal">Fechar</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </c:if>
                    </c:forEach>
                </div>
                <div id="menu6" class="tab-pane fade">
                    <c:forEach var="produto" items="${produtos}">
                        <c:if test="${produto.categoria eq 'Aplicativo' && produto.tipo eq 'Empresarial'}">
                            <div class="col-md-4 produto">
                                <img src="imagens/${produto.id}.jpg" classalt="${produto.nome}" height="200">
                                <button type="button" class="btn btn-info btn-ver" data-toggle="modal" data-target="#${produto.id}">Ver</button>
                                <div class="modal fade" id="${produto.id}" role="dialog">
                                    <div class="modal-dialog modal-lg">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <button type="button" class="close" data-dismiss="modal">&times;</button>
                                                <h4 class="modal-title">Vizualização de Produto</h4>
                                            </div>
                                            <div class="modal-body">
                                                <img src="imagens/${produto.id}.jpg" class="img-responsive" alt="${produto.nome}" height=400">
                                                <h4>Nome: ${produto.nome}</h4>
                                                <h4>Categoria: ${produto.categoria}</h4>
                                                <h4>Tipo: ${produto.tipo}</h4>
                                                <h4>Valor: R$ ${produto.valor}</h4>
                                                <a href="Compra?id=${produto.id}"><button  class="btn btn-success">Comprar</button></a>                     
                                            </div>
                                            <div class="modal-footer">
                                                <button type="button" class="btn btn-default" data-dismiss="modal">Fechar</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </c:if>
                    </c:forEach>
                </div>
            </div>

            <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
            <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    </body>
</html>
