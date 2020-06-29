<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%//autor: Gabriele Rocha %>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Cadastro de Informações</title>
	<link rel="stylesheet" type="text/css" href="css/cadInfor.css"/>
	<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css"/>
</head>
<body>

<%@ include file="menuAuxiliar.jsp"%>
		<video autoplay='autoplay' loop class='bg_video'>
		<source src='videos/Basketball.webm' type='video/webm'>
			<source src='videos/Basketball.mp4' type='video/mp4'>
		</video>	

	
		<div class="container-fluid">
			<div class="container">
				<div class='titleCad text-center'>
					<h1>Cadastro de Informações</h1>
				</div>
			
				
				<div id='opcoes'>
					<a href="jeq.jsp" class='opcoes'>Jogadores em Quadra</a>
				</div>
				
				
				<div id='opcoes'>
					<a target= _blank href="alte.jsp" class='opcoes'>Placar</a>
				</div>
				
				<div id='opcoes'>
					<a href="ServPont?metodo=selecionarTimes" class='opcoes'>Pontos</a>
				</div>
				
				<div id='opcoes'>
					<a href="ServPf?cargo=Auxiliar" class='opcoes'>Resumo de Partida</a>
				</div>
			</div>
		</div>
	
	
	<%@ include file="footer.jsp"%>
</body>
</html>