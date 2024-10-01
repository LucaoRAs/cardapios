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
	
	<jsp:useBean id="c" class="org.libertas.Cardapio" scope="page"/>
	<jsp:useBean id="cdao" class="org.libertas.CardapioDao" scope="page"/>
	<jsp:setProperty property="*" name="c"/>
	${cdao.excluir(c)}
	
	<div class="d-flex flex-column justify-content-center align-items-center vh-100">
		<div class="text-center mb-3">
			<h1>Excluído com sucesso!</h1>
			<a href="index.jsp" class="btn btn-primary">OK</a>
		</div>
	</div>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" 
integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>
</html>