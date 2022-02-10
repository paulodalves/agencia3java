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
	<nav class="navbar navbar-expand-lg navbar-light">
		<div class="container-fluid">
			<a class="navbar-brand" href="index.jsp">Destino certo</a>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav me-auto mb-2 mb-lg-0">
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="index.jsp"> Home</a></li>
					<div class="dropdown">
						<button class="btn dropdown-toggle" type="button"
							id="dropdownMenuButton1" data-bs-toggle="dropdown"
							aria-expanded="false">Usuário</button>
						<ul class="dropdown-menu dropdown-menu mx-0 shadow"
							style="width: 200px;" aria-labelledby="dropdownMenuButton1">
							<li><a
								class="dropdown-item dropdown-item d-flex gap-2 align-items-center"
								href="cadastrousuario.jsp"> <svg
										xmlns="http://www.w3.org/2000/svg" width="16" height="16"
										fill="currentColor" class="bi bi-person-plus"
										viewBox="0 0 16 16">
					  <path
											d="M6 8a3 3 0 1 0 0-6 3 3 0 0 0 0 6zm2-3a2 2 0 1 1-4 0 2 2 0 0 1 4 0zm4 8c0 1-1 1-1 1H1s-1 0-1-1 1-4 6-4 6 3 6 4zm-1-.004c-.001-.246-.154-.986-.832-1.664C9.516 10.68 8.289 10 6 10c-2.29 0-3.516.68-4.168 1.332-.678.678-.83 1.418-.832 1.664h10z" />
					  <path fill-rule="evenodd"
											d="M13.5 5a.5.5 0 0 1 .5.5V7h1.5a.5.5 0 0 1 0 1H14v1.5a.5.5 0 0 1-1 0V8h-1.5a.5.5 0 0 1 0-1H13V5.5a.5.5 0 0 1 .5-.5z" />
					</svg> Cadastrar Usuário
							</a></li>
							<li><a
								class="dropdown-item dropdown-item d-flex gap-2 align-items-center"
								href="UCriarEPesquisar"> <svg
										xmlns="http://www.w3.org/2000/svg" width="16" height="16"
										fill="currentColor" class="bi bi-people" viewBox="0 0 16 16">
				  		<path
											d="M15 14s1 0 1-1-1-4-5-4-5 3-5 4 1 1 1 1h8zm-7.978-1A.261.261 0 0 1 7 12.996c.001-.264.167-1.03.76-1.72C8.312 10.629 9.282 10 11 10c1.717 0 2.687.63 3.24 1.276.593.69.758 1.457.76 1.72l-.008.002a.274.274 0 0 1-.014.002H7.022zM11 7a2 2 0 1 0 0-4 2 2 0 0 0 0 4zm3-2a3 3 0 1 1-6 0 3 3 0 0 1 6 0zM6.936 9.28a5.88 5.88 0 0 0-1.23-.247A7.35 7.35 0 0 0 5 9c-4 0-5 3-5 4 0 .667.333 1 1 1h4.216A2.238 2.238 0 0 1 5 13c0-1.01.377-2.042 1.09-2.904.243-.294.526-.569.846-.816zM4.92 10A5.493 5.493 0 0 0 4 13H1c0-.26.164-1.03.76-1.724.545-.636 1.492-1.256 3.16-1.275zM1.5 5.5a3 3 0 1 1 6 0 3 3 0 0 1-6 0zm3-2a2 2 0 1 0 0 4 2 2 0 0 0 0-4z" />
					</svg>Consultar Usuários
							</a></li>
						</ul>
					</div>
					<div class="dropdown">
						<button class="btn dropdown-toggle" type="button"
							id="dropdownMenuButton1" data-bs-toggle="dropdown"
							aria-expanded="false">Destino</button>
						<ul class="dropdown-menu dropdown-menu mx-0 shadow"
							style="width: 200px;" aria-labelledby="dropdownMenuButton1">
							<li><a
								class="dropdown-item dropdown-item d-flex gap-2 align-items-center"
								href="cadastrodestino.jsp"> <svg
										xmlns="http://www.w3.org/2000/svg" width="16" height="16"
										fill="currentColor" class="bi bi-map" viewBox="0 0 16 16">
					  <path fill-rule="evenodd"
											d="M15.817.113A.5.5 0 0 1 16 .5v14a.5.5 0 0 1-.402.49l-5 1a.502.502 0 0 1-.196 0L5.5 15.01l-4.902.98A.5.5 0 0 1 0 15.5v-14a.5.5 0 0 1 .402-.49l5-1a.5.5 0 0 1 .196 0L10.5.99l4.902-.98a.5.5 0 0 1 .415.103zM10 1.91l-4-.8v12.98l4 .8V1.91zm1 12.98 4-.8V1.11l-4 .8v12.98zm-6-.8V1.11l-4 .8v12.98l4-.8z" />
					</svg> Cadastrar Destino
							</a></li>
							<li><a
								class="dropdown-item dropdown-item d-flex gap-2 align-items-center"
								href="DCriarEPesquisar"> <svg
										xmlns="http://www.w3.org/2000/svg" width="16" height="16"
										fill="currentColor" class="bi bi-geo" viewBox="0 0 16 16">
					  <path fill-rule="evenodd"
											d="M8 1a3 3 0 1 0 0 6 3 3 0 0 0 0-6zM4 4a4 4 0 1 1 4.5 3.969V13.5a.5.5 0 0 1-1 0V7.97A4 4 0 0 1 4 3.999zm2.493 8.574a.5.5 0 0 1-.411.575c-.712.118-1.28.295-1.655.493a1.319 1.319 0 0 0-.37.265.301.301 0 0 0-.057.09V14l.002.008a.147.147 0 0 0 .016.033.617.617 0 0 0 .145.15c.165.13.435.27.813.395.751.25 1.82.414 3.024.414s2.273-.163 3.024-.414c.378-.126.648-.265.813-.395a.619.619 0 0 0 .146-.15.148.148 0 0 0 .015-.033L12 14v-.004a.301.301 0 0 0-.057-.09 1.318 1.318 0 0 0-.37-.264c-.376-.198-.943-.375-1.655-.493a.5.5 0 1 1 .164-.986c.77.127 1.452.328 1.957.594C12.5 13 13 13.4 13 14c0 .426-.26.752-.544.977-.29.228-.68.413-1.116.558-.878.293-2.059.465-3.34.465-1.281 0-2.462-.172-3.34-.465-.436-.145-.826-.33-1.116-.558C3.26 14.752 3 14.426 3 14c0-.599.5-1 .961-1.243.505-.266 1.187-.467 1.957-.594a.5.5 0 0 1 .575.411z" />
					</svg> Consultar Destinos
							</a></li>
						</ul>
					</div>

					<li class="nav-item"><a class="nav-link active"
						href="VCriarEPesquisar">Marcar Viagem</a></li>
				</ul>

			</div>
		</div>
	</nav>
	<div class="container">
		<div class="row">
			<div class="cold-md-7">

				<!-- Consulta por id -->

				<h1 id="titulo-padding" class="display-4">Dados pessoais e viagens marcadas</h1>

				<a class="btn btn-primary" href="UAtualizar?idUsuario=${usuario.idUsuario}">Atualizar</a> <a class="btn btn-danger"
					href="UApagar?idUsuario=${usuario.idUsuario}">Apagar</a>

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
								<strong>senha:</strong> ${usuario.senha}<button>&#128065;</button>
							<p>
								
						</div>
					</div>
					
						<table class="table table-hover">
							<thead  style="background: #90CBFB;">
								<tr>
									<th scope="col">Destino</th>
									<th scope="col">Transporte</th>
									<th scope="col">Data de partida</th>
									<th scope="col">Data de chegada</th>
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

	<footer class="py-3 my-4">
		<ul class="nav justify-content-center border-bottom pb-3 mb-3">
			<li class="nav-item"><a class="nav-link px-2 text-muted">Home</a>
		</ul>
		<p class="text-center text-muted">&copy; 2022 Destino Certo, LTDA</p>
	</footer>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
		crossorigin="anonymous"></script>
</body>
</html>