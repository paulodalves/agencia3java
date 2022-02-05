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
				<form action="DCriarEPesquisar" method="get" class="d-flex">
		        <input name="pesquisa" class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
		        <button class="btn btn-outline-success" type="submit">Pesquisar</button>
		      	</form>
				<h1>Destinos</h1>

				<section>
						<c:forEach items="${destinos}" var="destino">
							<div>
								<div>
									<p class="esconder-id">${destino.idDestino}</p>
									
									<p>${destino.descricao}</p>
									<p>${destino.valor}<p>
								</div>
								<div>
									<a href="DConsultar?idDestino=${destino.idDestino}">Detalhes</a>
								</div>
							</div>
						</c:forEach>
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