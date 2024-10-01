<%@page import="org.libertas.CardapioDao"%>
<%@page import="org.libertas.Cardapio"%>
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
<%
		int id = Integer.parseInt(request.getParameter("id"));
		Cardapio c = new Cardapio();
		CardapioDao cdao = new CardapioDao();
		if (id > 0){
			c = cdao.consultar(id);
		}else{
			//limpa os dados para novo
			c.setNome(" ");
			c.setTipo(" ");
			c.setDescricao(" ");
			c.setPreco(" ");
	};
	%>

<div class= ''>
	<form action="gravar.jsp" method="post">
	<input type = "hidden" name="id" value= "<%= c.getId() %>"/>
	<div class="form-group">
  		<label for="nm">Nome:</label>
  		<input type="text" class="form-control" name="nome" value= "<%= c.getNome() %>">
	</div>
	<div class="form-group">
  		<label for="tp">Tipo:</label>
  		<input type="text" class="form-control" name="tipo" value= "<%= c.getTipo() %>">
	</div>
	<div class="form-group">
  		<label for="desc">Descrição:</label>
  		<textarea class="form-control" rows="5" name="descricao" <%= c.getDescricao() %>></textarea>
	</div>
	<div class="form-group">
  		<label for="pc">Preço:</label>
  		<input type="text" class="form-control" name="preco" value= "<%= c.getPreco() %>">
	</div>
		<input type="submit" class="btn btn-primary" value="salvar"/>
	</form>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" 
integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>
</html>
