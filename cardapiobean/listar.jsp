<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="pt-br">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>Lista de Cardápios</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
	crossorigin="anonymous">

<style>
body {
	background-color: #f5f7fa;
}

.container {
	background: #fff;
	padding: 2rem;
	border-radius: 8px;
	box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
}

h1 {
	color: #343a40;
	font-weight: 700;
}

.btn-action {
	font-size: 0.875rem;
}

.table th {
	background-color: #6c757d;
	color: #fff;
}

.navbar {
	background-color: #343a40;
}

.navbar-brand, .navbar-nav .nav-link {
	color: white;
}

.navbar-brand:hover, .navbar-nav .nav-link:hover {
	color: #adb5bd;
}
</style>
</head>

<body>

	<jsp:useBean id="c" scope="page" class="org.libertas.Cardapio" />
	<jsp:useBean id="cdao" scope="page" class="org.libertas.CardapioDao" />

	<nav class="navbar navbar-expand-lg navbar-dark">
		<div class="container-fluid">
			<a class="navbar-brand" href="index.jsp">Sistema de Cardápios</a>
			<div class="collapse navbar-collapse">
				<ul class="navbar-nav ms-auto">
					<li class="nav-item"><a class="nav-link"
						href="formulario.jsp?id=0">Cadastrar Novo</a></li>
					<li class="nav-item"><a class="nav-link" href="index.jsp">Início</a>
					</li>
				</ul>
			</div>
		</div>
	</nav>

	<div class="container mt-5">
		<h1 class="mb-4 text-center">Lista de Cardápios</h1>
		<table class="table table-bordered table-hover">
<!-- 			<thead> -->
				<tr>
					<th>ID</th>
					<th>Nome</th>
					<th>Tipo</th>
					<th>Descrição</th>
					<th>Preço (R$)</th>
					<th class="text-center">Ações</th>
				</tr>
			</thead> 
 			<tbody> 
				
						
				 
				
				<c:forEach var='c' items='${cdao.listar()}'>
					<tr>
						<td>${c.id}</td> 
						<td>${c.nome}</td> 
						<td>${c.tipo}</td> 
						<td>${c.descricao}</td> 
						<td>${c.preco}</td> 
						
						
 						
 						<td class="text-center"><a class="btn btn-warning btn-action" 
							href="formulario.jsp?id=${c.id}"> <i 
 								class="bi bi-pencil-square"></i> Alterar 
 						</a> <a class="btn btn-danger btn-action"
 							href="excluir.jsp?id=${c.id}"> <i class="bi bi-trash"></i> 
 								Excluir 
 						</a></td>
 					</tr> 
 				</c:forEach> 
 			</tbody> 
		</table>
	</div>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-icons/1.10.3/font/bootstrap-icons.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
		crossorigin="anonymous"></script>
</body>

</html>
