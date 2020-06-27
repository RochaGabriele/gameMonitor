<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <% // autor: Waycon Sales %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
<link rel="stylesheet" type="text/css" href="css/cadlog.css">
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
</head>
<body>

	<div class="container-fluid cabeca">	
		<div class="nome-site" id="nome-site">		
			<h2 class="bs">Basquete Web</h2>
		</div>
	</div>
	<section>
		<div class="container-fluid">
			<form action="validarLogin.jsp" method="post" class="form  container">
				<div class="text-center mb-1">
					<h3 class="txt-saudacao">Seja Bem Vindo</h3>
					<img alt="imagem de um avatar representando uma foto de perfil" class="img-fluid imgProfile" src="imagens/avatar.svg"/>
					<div>
						<span class="medium font log-cad">logue-se</span>
					</div>
				</div>
				<div class="campos camposLogin">
					<div class=" loginform-group">
				    	<label for="cpf" class="font">CPF</label>
				    	<input type="text" class="form-control" name="cpf" id="cpf"  placeholder="Seu cpf, apenas n�meros" required/>
				  	</div>
				  	
				  	<div class=" loginform-group">
				    	<label for="senha" class="font">Senha</label>
				    	<input type="password" class="form-control" name="senha" id="senha" placeholder="Senha" required/>
				    </div>
				  	<div class=" loginform-group">
	  				<input type="submit" id="logar" class="btn text-center" value="Enviar"/>
	  				</div>
	  			<div class="link-login medium mt-3 ">
			    	<a class="font link" href="cadastro.jsp">N�o � cadastrado? Fa�a o cadastro clicando aqui!</a>
				</div>
				</div>
			</form>
			
		</div>
	</section>
	<footer>
		<%@ include file="footer.jsp"%> 
	</footer>

</body>
</html>