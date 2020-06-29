<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
<%//autor: Gabriele Rocha %>    

<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Resumo </title>
	<link rel="stylesheet" type="text/css" href="css/resumo.css">
	<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
</head>
<body>
<section>
		<div class="container-fluid">
			<div class="container print">
				<div class=" txt-sd text-center mb-1">
					<h3 class="txt-saudacao">Resumo da Partida</h3>
				</div>
				<%
					String cargo = (String) session.getAttribute("cargo");
				%>
					<form method="POST" action="ServDep?cargo=<%= cargo%>" class="container" name="form2">
						<select name="partida" id="partida" class="form-control" onchange="javascript:document.form2.submit();">	
							<c:if test="${gre}">
								<option value="">Escolha a Partida</option>
							</c:if>
			  					<c:forEach items="${partidas}" var="partida">
				  						<option value="<c:out value="${partida.id}" />"><c:out value="${partida.nomeTime} x ${partida.timeAdversario} - ${partida.data}" /></option>
						            </c:forEach>
							</select> 
						
					<div class="container-fluid">
					<div class="table-responsive">
					<table class="table">
  						<thead>
						    <tr>
						      <th scope="col">Time</th>
						      <th scope="col">Jogador</th>
						      <th scope="col">Ponto</th>
						      <th scope="col">Quarto</th>
						    </tr>
  						</thead>		
  								            
  						<c:if test="${!gre}">
					          <c:if test="${pontos != null}">	 
					          	 <c:forEach items="${pontos}" var="ponto">
					          	 	<tr> 
					          	 		<c:forEach items="${comparar}" var="compara">
					          	 			<c:if test="${compara.cpf == ponto.jogador}">
						          	 			<td><c:out value="${compara.time}" /></td>
							                    <td><c:out value="${compara.nome}" /></td>
						                    </c:if>
						                 </c:forEach>   
						                    
						                    <td><c:out value="${ponto.tipo}" /></td>
						                    <td><c:out value="${ponto.pSet}" /></td>
						             </tr>
					               </c:forEach>
					           </c:if>  
	  					</c:if>
	  					
					</table>
					<c:if test="${gre}">
						<h5 style="text-align: center;">Partida não Informada</h5>
					</c:if>
				</div>
				</div>
					
				</form>
				
		  </div>
		</div>
		<div>
		<%
			if(cargo.equals("Auxiliar")){
		%>
	    <div>
	        <a class="button floatLeft" href="ServPont?metodo=selecionarTimes" style="text-decoration: none;">Adicionar Ponto</a>
	    </div>
	    <%
				}
	    %>
	    
	    <c:if test="${!gre}">
		    <div>
		        <a class="button floatRight" target= _blank href="ServLis?partida=${id}" style="text-decoration: none; ">Finalizar Partida</a>
		    </div>
	    </c:if>
	</div>
	</section>
	

</body>
</html>