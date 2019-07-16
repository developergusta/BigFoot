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
        <input type="button" value="Home" onclick="window.location = 'AtendHome.jsp'" >
        <table border=1 class="table">
            <tr>
                <th>Id</th>
                <th>Descrição</th>
                <th>Genero
            <form action="filtrar" method="Get">

                <select name="filtro" class="frmCmb1">
                    <option value="">..</option>
                    <c:forEach var="item" items="${todosGeneros}">
                        <option value="${item}">

                            ${item}
                        </option>
                    </c:forEach>
                </select</th>
                </br>
                <input  type="hidden" name="coluna" value="genero">  
                <input type="submit" class="btn btn-info mb-2" name="colunaButton" value="Filtrar"><br>
            </form>

        </th>
        <th>Preço</th>
        <th>Categoria
        <form action="filtrar" method="Get">

            <select name="filtro" class="frmCmb1">
                <option value="">..</option>
                <c:forEach var="item" items="${todosCategorias}">
                    <option value="${item}">

                        ${item}
                    </option>
                </c:forEach>
            </select</th>
            </br>
            <input  type="hidden" name="coluna" value="categoria">  
            <input type="submit" class="btn btn-info mb-2" name="colunaButton" value="Filtrar"><br>


        </form></th>
    <th>Marca
    <form action="filtrar" method="Get">

        <select name="filtro" class="frmCmb1">
            <option value="">..</option>
            <c:forEach var="item" items="${todosMarcas}">
                <option value="${item}">

                    ${item}
                </option>
            </c:forEach>
        </select</th>
        </br>
        <input  type="hidden" name="coluna" value="marca">  
        <input type="submit" class="btn btn-info mb-2" name="colunaButton" value="Filtrar"><br>
    </form>
</th>
<th>Tamanho</th>
<th>Imagem</th>
<th>Opcoes</th>
            <c:forEach items="${todos}" var="p">

                <tr>
                    <td>${p.id}</td>
                    <td>${p.descricao}</td>
                    <td>${p.genero}</td>
                    <td><fmt:formatNumber value="${p.preco}"  type = "currency"/></td>
                    <td>${p.categoria}</td>
                    <td>${p.marca}</td>
                    <td>${p.tamanho}</td>
                    <td>${p.imagem}</td>
                </tr>

            </c:forEach>


        </table>
        </br>
        <form action="cadastrarCalcado" method="Post">  
            <input type="hidden" name="enumerator" value=0>
            <input class="btn btn-block btn-dark" type="submit" name="adicionar" value="Adiconar Produto">
        </form>
    </form>
</body>
</html>
