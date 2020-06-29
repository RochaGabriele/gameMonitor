<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<% // autor: Waycon Sales %>
<!DOCTYPE html>
<html lang="pt-br">
<head>
<meta charset="utf-8">
<title>Cadastro</title>
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
			<form action="ServAtor" method="post" class="form container">
				<div class="text-center mb-1">
					<h3 class="txt-saudacao">Seja Bem Vindo</h3>
					<img alt="imagem de um avatar representando uma foto de perfil" class="img-fluid imgProfile" src="imagens/avatar.svg"/>
					<div>
						<span class="medium font log-cad">cadastre-se</span>
					</div>
				</div>
				<div class="campos">
					<input type="hidden" readonly="readonly" name="metodo"  value="inserir" />
					<div class="form-group">
				    	<label for="user" class="font">Usuário</label>
				    	<input type="text" class="form-control" name="user" id="user"  placeholder="Seu nome de usuário" required/>
				  	</div>
				  	<div class="form-group ">
				    	<label for="nomeCompleto" class="font">Nome Completo</label>
				    	<input type="text" class="form-control" name="nome" id="nome"  placeholder="Seu nome completo" required/>
				  	</div>
				  	<div class="form-group">
				    	<label for="cpf" class="font">CPF</label>
				    	<input type="text" class="form-control" name="cpf" id="cpf"  placeholder="Seu cpf sem caracteres como '.' ou '-', por favor." required/>
				  	</div>
				  	<div class="form-group">
				    	<label for="email" class="font">Email</label>
				    	<input type="text" class="form-control" name="email" id="email"  placeholder="Seu email..." required/>
				  	</div>
				  	<div class="form-group">
					  	<label class="font">Cargo</label>
					  	<select name="cargo" id="cargo" class="form-control">	
		  					<option value="Tecnico" >Técnico</option>
		  					<option value="Auxiliar">Auxiliar</option>
		  					<option value="Apoio" >Apoio</option>
						</select>
					</div>
					<div class="form-group">
				    	<label for="end" class="font">Endereço</label>
				    	<input type="text" class="form-control" name="end" id="end"  placeholder="Cidade, rua, numero da casa" required/>
				  	</div>
				  	<div class="form-group">
				    	<label for="senha" class="font">Senha</label>
				    	<input type="password" class="form-control" name="senha" id="senha" placeholder="Senha" required/>
				    </div>
				    <div class="form-group">
				    	<label for="tel" class="font">Telefone</label>
				    	<input type="text" class="form-control" name="tel" id="tel"  placeholder="DDD e número sem caracteres especiais como '('  ')'  '.'  '-' " required/>
				  	</div>
				  	<div class="form-group">
				    	<label for="confsenha" class="font">Confirmação de senha</label>
				    	<input type="password" class="form-control" name="confsenha" id="confsenha" placeholder="Confirme a sua senha" required/>
				  	</div>
				  	<div class="form-group">
	  				<input type="submit" id="cadastrar" class="btn text-center" value="Cadastrar"/>
	  				</div>
	  			<div class="link-login medium mt-1 ">
			    	<a class="font link" href="index.jsp">Já é cadastrado? Faça login!</a>
				</div>
				</div>
			</form>
			
		</div>
	</section>
	<footer>
		<%@ include file="footer.jsp"%>
	</footer>

</body>
	<c:import url="includes/scripts.jsp"></c:import>
</html>