<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<% // autor: Waycon Sales %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Perfil</title>
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="css/perfil.css">
</head>
<body>
	<section>
		<div class="perfil container">
			<div class="row">
	  			<div class="col-6 col-md-4 mb-3">
	  			<div class="centro">
	  				<img alt="imagem de um avatar representando uma foto de perfil" class="img-fluid imgProfile mb-3" src="imagens/avatar.svg"/>
	  			</div>
	  			<h4 class=" userName mb-2">Waycon</h4>
	  			<div class="botoes">
	  				<a href="ServAtor?metodo=editar$id=1"><button class="btn mr-2")>Editar dados</button></a>
	  				<a href="#"><button class="btn sair ">Sair</button></a>
	  			</div>
	  			</div>
	  			<div class="col-12 col-md-8">
	  				<h2>...</h2>
	  				<p><strong>Email:</strong> ... </p>
					<p><strong>Endereço:</strong> ...</p>
					<p><strong>Telefone:</strong> ...</p>
					<p><strong>Cargo:</strong> ...</p> 
	  			</div>
			</div>
		</div>
	</section>






</body>
<script type="text/javascript" src="js/jquery.min.js"></script>
</html>