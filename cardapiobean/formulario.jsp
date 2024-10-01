<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Insert title here</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" 
    rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
</head>
<body>

<jsp:useBean id="c" class="org.libertas.Cardapio" scope="page"/>
<jsp:useBean id="cdao" class="org.libertas.CardapioDao" scope="page"/>
<jsp:setProperty property="*" name="c"/>

<%
    c = cdao.consultar(c.getId());
%>

<div class='container'>
    <form action="gravar.jsp" method="post">
        <input type="hidden" name="id" value="${c.id}"/>
        
        <div class="form-group">
            <label for="nm">Nome:</label>
            <input type="text" class="form-control" name="nome" value="${c.nome}">
        </div>

        <div class="form-group">
            <label for="tp">Tipo:</label>
            <input type="text" class="form-control" name="tipo" value="${c.tipo}">
        </div>

        <div class="form-group">
            <label for="desc">Descrição:</label>
            <textarea class="form-control" rows="5" name="descricao">${c.descricao}</textarea>
        </div>

        <div class="form-group">
            <label for="pc">Preço:</label>
            <input type="text" class="form-control" name="preco" value="${c.preco}">
        </div>

        <input type="submit" class="btn btn-primary" value="Salvar"/>
    </form>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" 
integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>
</html>
