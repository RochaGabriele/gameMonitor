<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
<%//autor: Gabriele Rocha %>    

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Ranking</title>
	<link rel="stylesheet" type="text/css" href="css/lista.css">
	<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
</head>
<body>
	<section>
		<div class="container-fluid" id="printable">
			<div class="container print">
				<div class=" txt-sd text-center mb-1" id="yr">
					<h3 class="txt-saudacao">Maiores Pontuadores</h3>
				</div>
					<div class="container-fluid">
					<div class="table-responsive">
					<table class="table">
  						<thead>
						    <tr>
						      <th scope="col" style="text-align: center;">Classificação</th>
						      <th scope="col" style="text-align: center;">Jogador</th>
						      <th scope="col" style="text-align: center;">Pontuação</th>
						    </tr>
  						</thead>		
  								            
  						<tbody>
  								<c:forEach items="${uzas}" var="uza" varStatus="sel">
					          	 	<tr> 
					          	 		<td style="border-right: 1px #dee2e6 solid;"><c:out value="${sel.count}" /></td>
					          	 		<c:forEach items="${comparar}" var="compara">
					          	 			<c:if test="${compara.cpf == uza.jogador}">
							                    <td style="border-right: 1px #dee2e6 solid;"><c:out value="${compara.nome}" /></td>
						                    </c:if>
						                 </c:forEach>   
						                    
						                 <td><c:out value="${uza.soma}" /></td>
						           </tr>
					            </c:forEach>
	  					</tbody>
					</table>
					
				</div>
				</div>
									
		  </div>
		</div>
		
		<div class="container-fluid" id="printable">
			<div class="container print">
				<div class=" txt-sd text-center mb-1" id="yr">
					<h3 class="txt-saudacao">Somatória/Tipo de Ponto</h3>
				</div>
					<div class="container-fluid">
					<div class="table-responsive">
					<table class="table">
  						<thead>
						    <tr>
						      <th scope="col" style="text-align: center;">Lances Livres</th>
						      <th scope="col" style="text-align: center;">Pequenas Médias Distâncias</th>
						      <th scope="col" style="text-align: center;">Longa Distância</th>
						    </tr>
  						</thead>		
  								            
  						<tbody>
  							<tr>
  								<c:forEach items="${liv}" var="li">
		  							<td><c:out value="${li.soma}" /></td>
		  						</c:forEach>
		  						
		  						
		  						<c:forEach items="${peme}" var="pem">
		  							<td><c:out value="${pem.soma}" /></td>
		  						</c:forEach>
		  						
		  						
		  						<c:forEach items="${lng}" var="lo">
		  							<td><c:out value="${lo.soma}" /></td>
	  							</c:forEach>
	  							
  							</tr>
	  					</tbody>
					</table>
					
				</div>
				</div>
									
		  </div>
		</div>
		<button class="button floatRight" style="text-decoration: none;" id="btn">Imprimir</button>
	</section>
	 <script>
        document.getElementById('btn').onclick = function() {
            window.print();
        }
        </script>
</body>
</html>