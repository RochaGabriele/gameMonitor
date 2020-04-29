<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%//autor: Gabriele Rocha %>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Pontos</title>
<link rel="stylesheet" type="text/css" href="css/style.css"/>
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css"/>
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
			
			<form method="POST" action="Datas" class="container">
				<div class=" txt-sd text-center mb-3">
					<h3 class="txt-saudacao">Pontos a adicionar</h3>
				</div>
				<div class="campos">
				    <div class="form-group" id="dados">
		  				<input class="form-control" placeholder="Digite aqui..." type="text" name="dados[]" size="29" autocomplete="off" >
					</div>
				</div>
				<div class="botoes">
					<button  class="bt mt-3 " type="button" id="adicionar">Add outro ponto</button>
			  		<button  class="sub mt-3" type="submit">Enviar</button>
			  	</div>
			</form>
			
			<a  href='cadInfor.jsp'><button class="voltar mb-5" >Voltar</button></a>
			
		</div>
	</div>
	<%@ include file="footer.jsp"%>
<script src="js/jquery.min.js"></script>
<script src="js/pontos.js"></script>


</body>
</html>