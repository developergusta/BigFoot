<%-- 
    Document   : cadastrarprodutos
    Created on : 20/04/2019, 08:45:39
    Author     : Usuario
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <title>Cadastro</title>
    </head>
    <body>

        <form action="confirmarCadastro" method="Post" style="padding: 25px 50px 25px">
            <h1> Cadastrar Calçado </h1>
            <div class="form-group row">
                <label class="col-2 col-form-label">Descrição</label>
                <div class="col-10">
                    <input class="form-control" type="text" name="descricao">
                </div>
            </div>            
            <div class="form-group row">
                <label for="example-search-input" class="col-2 col-form-label">Genero</label>
                <div class="col-10">
                    <select class="form-control" name="genero">
                        <option value="Masculino">Masculino</option>
                        <option value="Feminino">Feminino</option>
                        <option value="Unissex">Unissex</option>
                    </select>
                </div>
            </div>
            <div class="form-group row">
                <label class="col-2 col-form-label">Preço</label>
                <div class="col-10">
                    <input class="form-control" type="number" step="0.01" name="preco">
                </div>
            </div>
            <div class="form-group row">
                <label for="example-search-input" class="col-2 col-form-label">Categoria</label>
                <div class="col-10">
                    <select class="form-control" name="categoria">
                        <option value="Casual">Casual</option>
                        <option value="Corrida">Corrida</option>
                        <option value="Basquete">Basquete</option>
                        <option value="Sapatenis">Sapatenis</option>
                    </select>
                </div>
            </div>
            <div class="form-group row">
                <label for="example-search-input" class="col-2 col-form-label">Marca</label>
                <div class="col-10">
                    <select class="form-control" name="marca">
                        <option value="Nike">Nike</option>
                        <option value="Adidas">Adidas</option>
                        <option value="Asics">Asics</option>
                        <option value="Olympikus">Olympicus</option>
                    </select>
                </div>
            </div>
            <div class="form-group row">
                <label for="example-search-input" class="col-2 col-form-label">Tamanho</label>
                <div class="col-10">
                    <select class="form-control" name="tamanho">
                        <option value="35">35</option>
                        <option value="36">36</option>
                        <option value="37">37</option>
                        <option value="38">38</option>
                        <option value="38">39</option>
                        <option value="38">40</option>
                        <option value="38">41</option>
                        <option value="38">42</option>
                        <option value="38">43</option>
                        <option value="38">44</option>
                        <option value="38">45</option>
                    </select>
                </div>
            </div>
            <div class="form-group row">
            </div>
            <div class="form-group row">
                <label class="col-2 col-form-label">Imagem</label>
                <div class="col-10">
                    <input class="form-control" type="text" name="imagem">
                </div>
            </div>
            <input type="submit" class="btn btn-info mb-2" name="addcalcado" value="Adicionar Produto"><br>
        </form>
    </body>
</html>
