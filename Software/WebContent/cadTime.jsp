<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>   
<% // autor: Waycon Sales %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Novo Time</title>
	<link rel="stylesheet" type="text/css" href="css/cadTime.css">
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
			<form action="ServTime" method="post" class="form  container">
				<div class=" txt-sd text-center mb-1">
					<h3 class="txt-saudacao">Cadastre um Novo Time</h3>
				</div>
				<div class="camposTime">
					<div class="form-group">
				    	<label for="nome" class="font">Nome do time</label>
				    	<input type="text" class="form-control" name="nome" id="nome"  placeholder="Nome do time" required/>
				  	</div>
				  	
				  	<div class="form-group">
				    	<label for="origem" class="font">Origem(Localidade)</label>
				    	<input type="text" class="form-control" name="origem" id="origem" placeholder="País, estado, cidade, bairro" required/>
				    </div>
				    <div class="form-group">
					  	<label class="font">Nome do Técnico</label>
					  	<select name="tec" id="tec" class="form-control">	
		  					
		  					<c:forEach items="${tecnico}" var="tec">
		  						<option value="<c:out value="${tec.cpf}" />"><c:out value="${tec.nomeCompleto}" /></option>
				            </c:forEach>
				            
						</select>
					</div>
				  	<div class="form-group">
	  					<input type="submit" id="cadastrar" class="btn text-center" value="Cadastrar"/>
	  				</div>
				</div>
			</form>
			
		</div>
	</section>
<%@ include file="footer.jsp"%>				
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