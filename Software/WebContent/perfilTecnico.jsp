<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<% // autor: Waycon Sales %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Perfil Técnico</title>
</head>
<body>

	<% 
		String id = (String) session.getAttribute("id");
		String cargo = (String) session.getAttribute("cargo");
		if(cargo.equals("Tecnico")){
			if(id != null){
				%>
					<%@ include file="menuTecnico.jsp"%>
					<%@ include file="perfil.jsp"%>
					<%@ include file="footer.jsp"%>
				<% 
			}else{
				response.sendRedirect("deslogar.jsp");
			}
		}else{
			out.print("Sua sessão não permite o acesso as funcionalidades de Tecnico"+"<br/>");
			
		}
	
	%>

</body>
</html>