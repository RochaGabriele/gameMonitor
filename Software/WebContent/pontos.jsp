<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
<!DOCTYPE html>
<%//autor: Gabriele Rocha %>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Pontos</title>
	<link rel="stylesheet" type="text/css" href="css/style.css"/>
	<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css"/>
	<script src="js/sweetalert.min.js"/></script>
</head>
<body>
<%@ include file="menuAuxiliar.jsp"%>
	<video autoplay='autoplay' loop class='bg_video'>
		<source src='videos/Basketball.webm' type='video/webm'>
		<source src='videos/Basketball.mp4' type='video/mp4'>
	</video>	
	<div class="container-fluid mt-4">
	<div class="container">
			<div class='titlePt text-center'>
				<h1>Pontos</h1>
			</div>
			
			<form method="POST" action="ServMsa" class="container" name="form1">
				<div class=" txt-sd text-center mb-3">
					<h3 class="txt-saudacao">Pontos a adicionar</h3>
				</div>
				<div class="campos" style="max-width: 500px; margin: auto;">
				   
					<div class="form-group" id="dados">
					
					<c:if test="${red}">
					 	<select name="time" id="time" class="form-control">	
			  					<option value="<c:out value="${choo}" />"><c:out value="${choo}" /></option>
						</select>
					</c:if>
					
					<c:if test="${!red}">
					<select name="time" id="time" class="form-control" onchange="javascript:document.form1.submit();">	
		  						<option value="" >Escolha o time</option>
		  						<c:forEach items="${times}" var="time">
			  						<option value="<c:out value="${time.nome}" />"><c:out value="${time.nome}" /></option>
					            </c:forEach>
						</select>
					</c:if>
					
					<select name="partida" id="partida" class="form-control">	
		  					<c:forEach items="${partidas}" var="partida">
			  						<option value="<c:out value="${partida.id}" />"><c:out value="${partida.nomeTime} x ${partida.timeAdversario} - ${partida.data}" /></option>
					            </c:forEach>
						</select> 
						
					<c:if test="${red}">	
						<select name="jogador" id="jogae" class="form-control">	
							<option value="" >Escolha um Jogador</option>
		  					<c:forEach items="${jogs}" var="jogador">
			  						<option value="<c:out value="${jogador.cpf}" />"><c:out value="${jogador.nome}" /></option>
					            </c:forEach>
						</select>	
					</c:if>
					
					<c:if test="${!red}">	
						<select name="jogador" id="jogador" class="form-control">	
		  					<c:forEach items="${jogs}" var="jogador">
			  						<option value="<c:out value="${jogador.cpf}" />"><c:out value="${jogador.nome}" /></option>
					            </c:forEach>
						</select>	
					</c:if>
						
						<select name="quarto" id="quarto" class="form-control">	
		  					<option value="1" >1° quarto</option>
		  					<option value="2" >2° quarto</option>
		  					<option value="3" >3° quarto</option>
		  					<option value="4" >4° quarto</option>
						</select>
						
						<select name="tipo" id="tipo" class="form-control" onchange="modificaPonto(this.value);">	
		  					<option value="livre"  selected="selected">Arremesso livre</option>
		  					<option value="pequena-media">Arremesso pequena-média distância</option>
		  					<option value="longa" >Arremesso longa distância</option>
						</select>
						
						<select name="valor" id="valor" class="form-control">	
		  					<option value="1">1 ponto</option>
						</select>
												
					</div>
					
				</div>
				<div class="botoes">
			  		<button  class="sub mt-3" type="button" id="tom">Enviar</button>
			  	</div>
			  	
			</form>
					
		</div>
	</div>
	<%@ include file="footer.jsp"%>
<script src="js/jquery.min.js"></script>
<script src="js/pointBM.js"></script>
<script type="text/javascript">

document.getElementById("tom").onclick = function() {
	 var jogae = document.getElementById("jogae");

     if (jogae.value == "") {
       swal("","Jogador não informado","warning");
       return;
     }
     
     form1.submit();
};

</script>

</body>
</html>