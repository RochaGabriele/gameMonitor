<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%//autor: Waycon Sales %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Editar Ator</title>
<link rel="stylesheet" type="text/css" href="css/cadlog.css">
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">

</head>
<body>
<%
	String idEditar = (String) session.getAttribute("id");

	if(idEditar != null){
		%>
<section>
		<div class="container-fluid">
		  <div class="form container" >
			<form action="ServAtor" method="post">
				<div class="text-center mb-1">
					<h3 class="txt-saudacao">Editar Dados</h3>
				</div>
				<div class="campos">
					<input type="hidden" readonly="readonly" name="metodo"  value="editarDados" />
					<input type="hidden" readonly="readonly" name="cpf"  value="<%= idEditar %>" />
					<div class="form-group">
				    	<label for="user" class="font">Usu�rio</label>
				    	<input type="text" class="form-control" name="user" id="user"  value="<c:out value="${userEdit.getNomeUser()}"/>"/>
				  	</div>
				  	<div class="form-group">
				    	<label for="email" class="font">Email</label>
				    	<input type="text" class="form-control" name="email" id="email"  value="<c:out value="${userEdit.getEmail()}"/>"/>
				  	</div>
					<div class="form-group">
				    	<label for="end" class="font">Endere�o</label>
				    	<input type="text" class="form-control" name="end" id="end"  value="<c:out value="${userEdit.getEnd()}"/>"/>
				  	</div>
				    <div class="form-group">
				    	<label for="tel" class="font">Telefone</label>
				    	<input type="text" class="form-control" name="tel" id="tel"  value="<c:out value="${userEdit.getTel()}"/>"/>
				  	</div>
				  	<div class="form-group">
	  				<input type="submit" id="editar" class="btn text-center" value="Editar Dados"/>
	  				</div>
				</div>
			</form>
			<form action="ServAtor" method="post">
				<div class="text-center mb-1">
					<h3 class="txt-saudacao">Editar Senha</h3>
				</div>
					<input type="hidden" readonly="readonly" name="metodo"  value="editarSenha" />
					<input type="hidden" readonly="readonly" name="cpf"  value="<%= idEditar %>" />
					<div class="form-group">
				    	<label for="senha" class="font">Senha</label>
				    	<input type="password" class="form-control" name="senha" id="senha" placeholder="Confirme a sua senha"/>
					</div>
				  	<div class="form-group">
				    	<label for="confsenha" class="font">Confirma��o de senha</label>
				    	<input type="password" class="form-control" name="confsenha" id="confsenha" placeholder="Confirme a sua senha"/>
				  	</div>	  	
				  	<input type="submit" id="editarSenha" class="btn mb-3 text-center" value="Editar Senha"/>
			</form>	  	
		  </div>
		</div>
	</section>
		<% 
			}else{
				response.sendRedirect("deslogar.jsp");
			}
		
		
	
	%>
	




</body>
</html>