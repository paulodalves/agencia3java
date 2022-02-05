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
				
				
				
				<h1>Atualizar de Destino</h1>
				
				<form action="DAtualizar" method="post">
					<input type="text" value="${destino.idDestino}" name="id" style="display: none;"/>
					<label>Descrição: </label>
					<input value="${destino.descricao}" type="text" name="descricao" maxlength="50" /> <br/>
					<label>Valor: </label> 
					<input type="number" value="${destino.valor}" name="valor" maxlength="14" /> <br/>
					<input type="submit" value="Atualizar"/>
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