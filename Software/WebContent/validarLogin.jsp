<%@page import="controle.AtorControle"%>
<%@page import="modelo.Ator"%>
<%

AtorControle control = new AtorControle();
String cpf = request.getParameter("cpf");
String senha = request.getParameter("senha");


	if(cpf!=null && cpf!=null && !cpf.isEmpty() && !senha.isEmpty()){
		Boolean verifica = control.login(cpf, senha);
		if(verifica == true){
			
			Ator ator = control.selecionarPorCPF(cpf);
			
			
			
		
			if(ator.getCargo().equals("Apoio")){
				session.setAttribute("id", cpf);
				session.setAttribute("cargo", ator.getCargo());
				response.sendRedirect("homeApoio.jsp");
				
			}else if(ator.getCargo().equals("Auxiliar")){
				session.setAttribute("id", cpf);
				session.setAttribute("cargo", ator.getCargo());
				response.sendRedirect("homeAuxiliar.jsp");
				
			}else if(ator.getCargo().equals("Tecnico")){
				session.setAttribute("id", cpf);
				session.setAttribute("cargo", ator.getCargo());
				response.sendRedirect("homeTecnico.jsp");
				
			}else{
				%>
				<h1>Voce n�o tem acesso</h1>
			
				<%
			}
			
		
			

		}else{
			%>
				<h1>Senha e user n encontrados</h1>
			
			<%
			//response.sendRedirect("cadastro.jsp");
		}
		
		
		
	}else{
		%>
			<h1>N�o burle o sistema</h1>
	
		<%
		//response.sendRedirect("cadastro.jsp");
	}
	
%>