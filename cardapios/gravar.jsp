<%@page import="org.libertas.Cardapio"%>
<%@page import="org.libertas.CardapioDao"%>
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
	    CardapioDao dao = new CardapioDao();
	    Cardapio c = new Cardapio();
	    c.setId(Integer.parseInt(request.getParameter("id")));
	    c.setNome(request.getParameter("nome"));
	    c.setTipo(request.getParameter("tipo"));
	    c.setDescricao(request.getParameter("descricao"));
	    c.setPreco(request.getParameter("preco");

	    if (c.getId() > 0) {
	        dao.alterar(c);
	    } else {
	        dao.inserir(c);
	    }
	%>

	<div class="d-flex flex-column justify-content-center align-items-center vh-100">
		<div class="text-center mb-3">
			<h1>Cardápio salvo com sucesso!</h1>
			<a href="index.jsp" class="btn btn-primary">OK</a>
		</div>
	</div>

	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" 
	integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>

</body>
</html>
