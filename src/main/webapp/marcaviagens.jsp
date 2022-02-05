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
<title>Insert title here</title>
</head>
<body>
	<%@ include file="navbar.html"%>

	<div class="container">
		<div class="row">
			<div class="cold-md-7">

				<h1>Destinos</h1>
				<form action="VCriarEPesquisar" method="post">
				
					<label>Usuário:</label>
					<select name="idUsuario">
						<option selected>-- Selecionar --</option>
					<c:forEach items="${usuarios}" var="usuario">
						<option value="${usuario.idUsuario }">${usuario.nome }</option>
					</c:forEach>
					</select> <br/>
					<label>Destino:</label>
					<select name="idDestino">
						<option selected>-- Selecionar --</option>
					<c:forEach items="${destinos}" var="destino">
						<option value="${destino.idDestino }">${destino.descricao }</option>
					</c:forEach>
					</select> <br/>
					<label>Data de Partida:</label>
					<input type="date" name="dataPartida" />
					<label>Data de Retorno:</label>
					<input type="date" name="dataRetorno" />
					<label>Tipo de Trasnporte:</label>
					<select name="transporte">
						<option selected>-- Selecione --</option>
						<option value="Aviao">Avião</option>
						<option value="Onibus">Ônibus</option>
					</select>
					<input type="submit" value="cadastrar"/>
				</form>
			</div>
		</div>
	</div>




	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
		crossorigin="anonymous"></script>
</body>
</html>