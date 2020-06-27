<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<% // autor: Waycon Sales %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home Axiliar</title>
</head>
<body>
	<% 
		String id = (String) session.getAttribute("id");
		String cargo = (String) session.getAttribute("cargo");
		if(cargo.equals("Auxiliar")){
			if(id != null){
				
				%>
				<%@ include file="menuAuxiliar.jsp"%>
				<%@ include file="home.jsp"%>
				<%@ include file="footer.jsp"%>				
				<% 
			}else{
				response.sendRedirect("deslogar.jsp");
			}
		}else{
			out.print("Sua sess�o n�o permite o acesso as funcionalidades de Auxiliar"+"<br/>");
			
		}
		
	
	%>
	
</body>
</html>
