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

<title>Insert title here</title>
</head>
<body>
<%@ include file="navbar.html" %>
<div class="container">
		<div class="row">
			<div class="cold-md-7">
			
			
			
				<!-- Consulta por id -->
				
				
				
				<h1>Atualizar de Usuário</h1>
				
				<form action="UAtualizar" method="post">
					<input type="text" value="${usuario.idUsuario}" name="id" style="display: none;"/>
					<label>Nome: </label>
					<input value="${usuario.nome}" type="text" name="nome" maxlength="50" /> <br/>
					<label>CPF: </label> 
					<input type="text" value="${usuario.cpf}" name="cpf" maxlength="14" /> <br/>
					<label>Sexo: </label>
					<select name="sexo">
						<option value="m" selected>-- Selecionar --</option>
						<option value="M">Masculino</option>
						<option value="F">Feminino</option>
						<option value="">Outros</option>
					</select> <br/>
					<label>Data de Nascimento: </label> 
					<input type="date" value="${usuario.dataNascimento}" name="dtNascimento" /> <br/> 
					<label> Telefone: </label> 
					<input type="text" value="${usuario.telefone}" name="telefone" maxlength="11" /> <br/>
					<label>E-mail:</label> 
					<input type="email" value="${usuario.email}" name="email" maxlength="50" /> <br/>
					<label>Senha: </label> 
					<input type="password" value="${usuario.senha}" name="senha" maxlength="8" /><br />
					<input type="submit" value="Cadastrar"/>
				</form>
				
				<table>
				
					<thead>
						<tr>
							<th>id</th>
							<th>Data de partida</th>
							<th>Data de chegada</th>
							<th>Transporte</th>
						</tr>
					</thead>
					<tbody>
					<c:forEach items="${viagens}" var="viaja">
						<tr>
							<td>${viaja.idViagem }</td>
							<td>${viaja.dataPartida }</td>
							<td>${viaja.dataRetorno }</td>
							<td>${viaja.transporte }</td>
						</tr>
					</c:forEach>
					</tbody>
				
				</table>
			</div>
		</div>
	</div>


<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
		crossorigin="anonymous"></script>
</body>
</html>