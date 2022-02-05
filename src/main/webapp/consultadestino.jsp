<%@page import="com.destinocerto.model.Usuario"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c'%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<link href="style.css" rel="stylesheet">
<title>Insert title here</title>
</head>
<body>
	<%@ include file="navbar.html"%>
	<div class="container">
		<div class="row">
			<div class="cold-md-7">

				<!-- Consulta por id -->

				<h1>Detalhes do Destino</h1>

				<a href="DAtualizar?idDestino=${destino.idDestino}">Atualizar</a> 
				<a href="DApagar?idDestino=${destino.idDestino}">Apagar</a>
				<section>
					<div>
						<p class="esconder-id">
							<strong>id:</strong> ${destino.idDestino}
						<p>
						<p>
							<strong>Descrição:</strong> ${destino.descricao}
						</p>
						<p>
							<strong>Valor:</strong> ${destino.valor}
						</p>
					</div>
				</section>

			</div>
		</div>
	</div>


	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
		crossorigin="anonymous"></script>
</body>
</html>