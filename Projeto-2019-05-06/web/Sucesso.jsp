<%-- 
    Document   : GerenteSucesso
    Created on : 19/05/2019, 00:03:12
    Author     : Usuario
--%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Operação Bem sucedida!</h1>
        <input type="button" value="Home" onclick="window.location = 'AtendHome.jsp'" >

        <form action="cadastrarCalcado" method="Post">  
            <input type="hidden" name="enumerator" value=1>
            <input class="btn btn-block btn-dark" type="submit" name="adicionar" value="Adiconar Mais um Produto">

        </form>

        <form action="consultarGerente" method="Get">  

            <input type="hidden" name="enumerator" value=1>
            <input type="submit" name="consultar" value="Consultar Calçados"><br>

        </form>

    </body>
</html>
