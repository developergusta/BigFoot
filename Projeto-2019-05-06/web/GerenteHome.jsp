<%-- 
    Document   : GerenteHome
    Created on : 12/05/2019, 11:11:15
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
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Bem vindo Gerente! :)</h1>

        <form action="cadastrarCalcado" method="Post">

            <input type="hidden" name="enumerator" value=1>
            <input type="submit" name="cadastrar" value="cadastrar">
        </form>
        <form action="consultarGerente" method="Get">
            <input type="hidden" name="enumerator" value=1>
            <input type="submit" name="consultar" value="consultar"><br>
        </form>
        <form action="consultarfunc" method="Post">
               

            
            <input type="hidden" name="enumerator" value=1>
            <input type="submit" name="consultarfunc" value="Listar Atendentes"><br>
        </form>
    </body>
</html>
