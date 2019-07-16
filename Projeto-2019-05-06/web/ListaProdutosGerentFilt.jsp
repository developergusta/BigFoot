<%-- 
    Document   : listarprodutos
    Created on : 19/04/2019, 20:52:19
    Author     : Usuario
--%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@page import="java.util.List"%>
<%@page import="Model.Calcado"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>outra outra JSP Page</title>
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    </head>
    <body>
        <h1>Lista de Calcados</h1>
        <input type="button" value="Home" onclick="window.location = 'GerenteHome.jsp'" >
        <table border=1 class="table">
            <tr>
                <th>Id</th>
                <th>Descrição</th>
                <th>Genero</th>
                <th>Preço</th>
                <th>Categoria
            <form action="filtrar" method="Get">

                <select name="filtro" class="frmCmb1">
                    <option value="">..</option>
                    <c:forEach var="filtro" items="${colunasBox}">
                        <option value="${filtro}">

                            ${filtro}
                        </option>
                    </c:forEach>
                </select</th>
                </br>
                <input  type="hidden" name="coluna" value="categoria">  
                <input type="submit" class="btn btn-info mb-2" name="addcalcado" value="Filtrar"><br>


            </form>
            <th>Marca</th>
            <th>Tamanho</th>
            <th>Imagem</th>
            <th>Opcoes</th>

        </tr>
        <c:forEach items="${todosfiltrados}" var="p">

            <tr>
                <td>${p.id}</td>
                <td>${p.descricao}</td>
                <td>${p.genero}</td>
                <td><fmt:formatNumber value="${p.preco}"  type = "currency"/></td>
                <td>${p.categoria}</td>
                <td>${p.marca}</td>
                <td>${p.tamanho}</td>
                <td>${p.imagem}</td>
                <td>
                    <form action="iniciaredicao" method="Get">
                        <input class="form-control" type="hidden" name="id" value=${p.id} >
                        <button class="btn btn-block btn-info" type="submit" name="editar" value="Editar"><i class="fas fa-pencil-alt"></i></button>
                    </form>

                    <form action="excluirProdutos" method="Get">
                        <input class="form-control" type="hidden" name="id" value=${p.id}>   
                        <button class="btn btn-block btn-danger" type="submit" name="excluir" value="Excluir"><i class="far fa-trash-alt"></i></button>
                    </form>
                    <a href="adicionarNoCarrinho?id=${p.id}">Comprar</a>
                </td>
            </tr>

        </c:forEach>


    </table>
    </br>
    <form action="cadastrarCalcado" method="Post">  
        <input type="hidden" name="enumerator" value=1>
        <input class="btn btn-block btn-dark" type="submit" name="adicionar" value="Adiconar Produto">
    </form>
</body>
</html>
