<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%//autor: Waycon Sales %>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Gerenciar Jogadores</title>
	<link rel="stylesheet" type="text/css" href="css/gerenciarJog.css">
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
			<div class="container form">
			<form action="servCadastros" method="post" class="container">
				<div class=" txt-sd text-center mb-1">
					<h3 class="txt-saudacao">Gerencie os jogadores</h3>
				</div>
				<div class="camposTime">
				<input type="hidden" readonly="readonly" name="metodo"  value="selecionarPorTime" />
				    <div class="form-group">
					  	<label for="nome" class="font">Nome do time</label>
					  	<select name="NomeDoTime" id="NomeDoTime" class="form-control">	
		  					
		  					<c:forEach items="${times}" var="time">
		  						<option value="<c:out value="${time.nome}" />"><c:out value="${time.nome}" /></option>
				            </c:forEach>
		  					
						</select>
					</div>
				  	<div class="form-group">
	  					<input type="submit" id="enviar" class="btn text-center" value="Enviar"/>
	  				</div>
				</div>
			</form>
			<div class="container-fluid">
					<div class="table-responsive">
					<table class="table">
  						<thead>
						    <tr>
						      
						      <th scope="col">Nome</th>
						      <th scope="col">N°Camisa</th>
						      <th scope="col">Telefone</th>
						      <th scope="col">Idade</th>
						      <th scope="col">Time</th>
						      <th scope="col">Editar</th>
						      <th scope="col">Deletar</th>
						    </tr>
  						</thead>
  						<tbody>
				            <c:forEach items="${jogadores}" var="jogador">
				                <tr>
				                    <td><c:out value="${jogador.nome}" /></td>
				                    <td><c:out value="${jogador.nCamisa}" /></td>
				                    <td><c:out value="${jogador.tel}" /></td>
				                    <td><c:out value="${jogador.idade}" /></td>
				                    <td><c:out value="${jogador.time}" /></td>
				                    <td><a class="bot-edit" href="servCadastros?metodo=editarJogador&&id=<c:out value="${jogador.cpf}"/>">Editar</a></td>
				                    <td><a  onclick="return confirm('Deseja mesmo excluir o jogador?')" class="bot-del" href="servCadastros?metodo=excluirJogador&&id=<c:out value="${jogador.cpf}"/>">Deletar</a></td>
				                </tr>
				            </c:forEach>
  						
							
	  					</tbody>
					</table>
				</div>
				</div>
			
			</div>
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