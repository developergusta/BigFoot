<%-- 
    Document   : AtendHome
    Created on : 12/05/2019, 11:11:15
    Author     : Usuario
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Bem vindo Atendente! :)</h1>

        <form action="cadastrarCalcado" method="Post">
            <input type="hidden" name="enumerator" value=0>
            <input type="submit" name="cadastrar" value="cadastrar"><br>

        </form>

        <form action="consultarProdutos" method="Get">
            <input type="hidden" name="enumerator" value=0>
            <input type="submit" name="consultar" value="consultar"><br>
        </form>


    </body>
</html>
