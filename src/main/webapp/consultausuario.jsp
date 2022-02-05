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

				<h1>Dados pessoais e viagens marcadas</h1>
				
				<a href="UAtualizar?idUsuario=${usuario.idUsuario}">Atualizar</a>
				<a href="UApagar?idUsuario=${usuario.idUsuario}">Apagar</a>
				
				<section>
				
					<div>
						<p class="esconder-id">
							<strong>id:</strong> ${usuario.idUsuario}
						<p>
						<p>
							<strong>Nome:</strong> ${usuario.nome}
						<p>
						<p>
							<strong>CPF:</strong> ${usuario.cpf}
						<p>
						<p>
							<strong>Gênero:</strong> ${usuario.sexo}
						<p>
						<p>
							<strong>Data de Nascimento:</strong> ${usuario.dataNascimento}
						<p>
						<p>
							<strong>Telefone:</strong> ${usuario.telefone}
						<p>
						<p>
							<strong>E-mail:</strong> ${usuario.email}
						<p>
						<div>
							<p>
								<strong>senha:</strong> ${usuario.senha}
							<p>
								<button>&#128065;</button>
						</div>
					</div>

					<table>
						<thead>
							<tr>
								<th>Destino</th>
								<th>Transporte</th>
								<th>Data de partida</th>
								<th>Data de chegada</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${viagens}" var="viaja">
								<tr>
									<td>${viaja.destinoU }</td>
									<td>${viaja.transporte }</td>
									<td>${viaja.dataPartida }</td>
									<td>${viaja.dataRetorno }</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
					
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