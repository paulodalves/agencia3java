<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<!-- CSS only -->
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
				
				<h1>Cadastro de Usuário</h1>
				
				<form action="UCriarEPesquisar" method="post">
					<label>Nome: </label> 
					<input type="text" name="nome" maxlength="50" /> <br/>
					<label>CPF: </label> 
					<input type="text" name="cpf" maxlength="14" /> <br/>
					<label>Sexo: </label>
					<select name="sexo">
						<option selected>-- Selecionar --</option>
						<option value="M">Masculino</option>
						<option value="F">Feminino</option>
						<option value="">Outros</option>
					</select> <br/>
					<label>Data de Nascimento: </label> 
					<input type="date" name="dtNascimento" /> <br/> 
					<label> Telefone: </label> 
					<input type="text" name="telefone" maxlength="11" /> <br/>
					<label>E-mail:</label> 
					<input type="email" name="email" maxlength="50" /> <br/>
					<label>Senha: </label> 
					<input type="password" name="senha" maxlength="8" /><br />
					<input type="submit" value="Cadastrar"/>
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