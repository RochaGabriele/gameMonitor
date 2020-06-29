<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%//autor: Waycon Sales %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Editar Jogaddor</title>
	<link rel="stylesheet" type="text/css" href="css/cadlog.css">
	<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
</head>
<body>


	<% 
		String id = (String) session.getAttribute("id");
		String cargo = (String) session.getAttribute("cargo");
		if(cargo.equals("Apoio")){
			if(id != null){
				%>
<%@ include file="menuApoio.jsp"%>
	<section>
		<div class="container-fluid">

			<form action="servCadastros" method="post" class="form container">
				<div class="text-center mb-1">
					<h3 class="txt-saudacao">Editar Jogador</h3>
				</div>
				<div class="campos">
					<input type="hidden" readonly="readonly" name="metodo"  value="editarJogador" />
					<input type="hidden" readonly="readonly" name="id"  value="<c:out value="${jogEdit.cpf}"/>" />
					<div class="form-group">
				    	<label for="nome" class="font">Nome do Jogador</label>
				    	<input type="text" class="form-control" name="nome" id="nome"  value="<c:out value="${jogEdit.nome}"/>"/>
				  	</div>
				  	<div class="form-group">
				    	<label for="idade" class="font">Idade</label>
				    	<input type="text" class="form-control" name="idade" id="idade"  value="<c:out value="${jogEdit.idade}"/>"/>
				  	</div>
					<div class="form-group">
				    	<label for="nCamisa" class="font">N° da Camisa</label>
				    	<input type="text" class="form-control" name="nCamisa" id="nCamisa"  value="<c:out value="${jogEdit.nCamisa}"/>"/>
				  	</div>
				    <div class="form-group">
				    	<label for="tel" class="font">Telefone</label>
				    	<input type="text" class="form-control" name="tel" id="tel"  value="<c:out value="${jogEdit.tel}"/>"/>
				  	</div>
				  	<div class="form-group">
				    	<label for="time" class="font">Time</label>
				    	<input type="text" class="form-control" name="time" id="time"  value="<c:out value="${jogEdit.time}"/>"/>
				  	</div>
				  	<div class="form-group">
	  				<input type="submit" id="editar" class="btn text-center" value="Editar Dados"/>
	  				</div>
				</div>
			</form>	  	
		  </div>

	</section>
	
	<footer>
		<%@ include file="footer.jsp"%>
	</footer>
									
				<% 
			}else{
				response.sendRedirect("deslogar.jsp");
			}
		}else{
			out.print("Sua sessão não permite o acesso as funcionalidades de Apoio"+"<br/>");
			
		}
		
	
	%>



</body>
</html>