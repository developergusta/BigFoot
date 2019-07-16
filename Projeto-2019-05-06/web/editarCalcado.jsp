<%-- 
    Document   : editarcalcados
    Created on : 20/04/2019, 11:58:42
    Author     : Usuario
--%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@page import="Model.Calcado"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>outra JSP Page</title>
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    </head>
    <h1> Editar Produto </h1>

    <form action="editarcalcados" method="Post">  
        <div class="col-md-6 offset-md-3">
            <div class="col-auto">
                <label class="sr-only" for="inlineFormInputGroup">ID</label>
                <div class="input-group mb-2">
                    <div class="input-group-prepend">
                        <div class="input-group-text">ID</div>
                    </div>
                    <input type="text" class="form-control" id="inlineFormInputGroup" name="id" value=${calcado.id} readonly="true" placeholder="Username">
                </div>
            </div>
            <div class="col-auto">
                <label class="sr-only" for="inlineFormInputGroup">Descricao</label>
                <div class="input-group mb-2">
                    <div class="input-group-prepend">
                        <div class="input-group-text">Descricão</div>
                    </div>
                    <input type="text" class="form-control" id="inlineFormInputGroup" name="descricao"  value=${calcado.descricao} placeholder="Descrição">
                </div>
            </div>
            <div class="col-auto">
                <label class="sr-only" for="inlineFormInputGroup">Preço</label>
                <div class="input-group mb-2">
                    <div class="input-group-prepend">
                        <div class="input-group-text">$</div>
                    </div>
                    <input type="text" class="form-control" id="inlineFormInputGroup" step="0.01" name="preco" value=${calcado.preco} placeholder="Preço">
                </div>
            </div>   
            <div class="col-auto">
                <label class="sr-only" for="inlineFormInputGroup">Marca</label>
                <div class="input-group mb-2">
                    <div class="input-group-prepend">
                        <div class="input-group-text">Marca</div>
                    </div>
                    <select class="form-control" name="marca" id="inlineFormInputGroup" value=${calcado.marca} placeholder="Marca" >
                        <option value="Nike">Nike</option>
                        <option value="Adidas">Adidas</option>
                        <option value="Asics">Asics</option>
                        <option value="Olympikus">Olympicus</option>
                    </select>
                </div>
            </div>
            <div class="col-auto">
                <label class="sr-only" for="inlineFormInputGroup">Genero</label>
                <div class="input-group mb-2">
                    <div class="input-group-prepend">
                        <div class="input-group-text">Genero</div>
                    </div>

                    <select class="form-control" id="inlineFormInputGroup" name="genero" value=${calcado.genero} placeholder="Genero">
                        <option value="Masculino">Masculino</option>
                        <option value="Feminino">Feminino</option>
                        <option value="Unissex">Unissex</option>
                    </select>

                </div>
            </div>
            <div class="col-auto">
                <label class="sr-only" for="inlineFormInputGroup">Tamanho</label>
                <div class="input-group mb-2">
                    <div class="input-group-prepend">
                        <div class="input-group-text">Tamanho</div>
                    </div>
                    <input type="text" class="form-control" id="inlineFormInputGroup" name="tamanho" value=${calcado.tamanho}  placeholder="Tamanho">
                </div>
            </div>
            <div class="col-auto">
                <label class="sr-only" for="inlineFormInputGroup">Categoria</label>
                <div class="input-group mb-2">
                    <div class="input-group-prepend">
                        <div class="input-group-text">Categoria</div>
                    </div>
                    <select class="form-control" name="categoria" id="inlineFormInputGroup" value=${calcado.categoria} placeholder="Imagem">
                        <option value="Casual">Casual</option>
                        <option value="Corrida">Corrida</option>
                        <option value="Basquete">Basquete</option>
                        <option value="Sapatenis">Sapatenis</option>
                    </select>
                </div>
            </div> 
            <div class="col-auto">
                <label class="sr-only" for="inlineFormInputGroup">Imagem</label>
                <div class="input-group mb-2">
                    <div class="input-group-prepend">
                        <div class="input-group-text">Imagem</div>
                    </div>
                    <input type="text" class="form-control" id="inlineFormInputGroup" name="imagem" value=${calcado.imagem} placeholder="Imagem">
                </div>
            </div> 


            <input class="btn btn-success btn-block" type="submit" name="editarcalcado" value="Confirmar"><br>
        </div>
    </form>

</html>
