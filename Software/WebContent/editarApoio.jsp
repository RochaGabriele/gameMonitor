<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%//autor: Waycon Sales %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Editar Dados</title>
</head>
<body>
	<% 
		String id = (String) session.getAttribute("id");
		String cargo = (String) session.getAttribute("cargo");
		if(cargo.equals("Apoio")){
			if(id != null){
				%>
					<%@ include file="menuApoio.jsp"%>
					<%@ include file="editarAtor.jsp"%>
					<footer>
						<%@ include file="footer.jsp"%>
					</footer>

				<% 
			}else{
				response.sendRedirect("deslogar.jsp");
			}
		}else{
			out.print("Sua sess�o n�o permite o acesso as funcionalidades de Apoio"+"<br/>");
			
		}
		
	
	%>



</body>
</html>