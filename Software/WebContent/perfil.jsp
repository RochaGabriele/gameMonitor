<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<% // autor: Waycon Sales %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Perfil</title>
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="css/perfil.css">
</head>
<body>
<% 
		String idPerfil = (String) session.getAttribute("id");
			if(idPerfil != null){
				%>
	<section>
		<div class="perfil container">
			<div class="row">
	  			<div class="col-6 col-md-4 mb-3">
	  			<div class="centro">
	  				<img alt="imagem de um avatar representando uma foto de perfil" class="img-fluid imgProfile mb-3" src="imagens/avatar.svg"/>
	  			</div>
	  			<h4 class=" userName mb-2"><c:out value="${user.getNomeUser()}"/></h4>
	  			<div class="botoes">
	  				<a href="ServAtor?metodo=editarPerfil&&id=<%= idPerfil %>"><button class="btn mr-2">Editar dados</button></a>
	  				<a href="deslogar.jsp"><button class="btn sair ">Sair</button></a>
	  			</div>
	  			</div>
	  			<div class="col-12 col-md-8">
	  				<h2><c:out value="${user.getNomeCompleto()}"/></h2>
	  				<p><strong>Email:</strong> <c:out value="${user.getEmail()}"/> </p>
					<p><strong>Endere�o:</strong> <c:out value="${user.getEnd()}"/> </p>
					<p><strong>Telefone:</strong> <c:out value="${user.getTel()}"/> </p>
					<p><strong>Cargo:</strong> <c:out value="${user.getCargo()}"/> </p> 
	  			</div>
			</div>
		</div>
	</section>
							
				<% 
			}else{
				response.sendRedirect("deslogar.jsp");
			}
		
		
	
	%>
	





</body>
<script type="text/javascript" src="js/jquery.min.js"></script>
</html>