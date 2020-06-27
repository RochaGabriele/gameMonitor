<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%//autor: Gabriele Rocha %>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Cadastro de Informa��es</title>
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
		<h1>Cadastro de Informa��es</h1>
	</div>

	
	<div id='opcoes'>
		<a href="jeq.jsp" class='opcoes'>Jogadores em Quadra</a>
	</div>
	
	
	<div id='opcoes'>
		<a target= _blank href="alte.jsp" class='opcoes'>Alterar Placar</a>
	</div>
	
	<div id='opcoes'>
		<a href="pontos.jsp" class='opcoes'>Pontos</a>
	</div>
	
	<div id='opcoes'>
		<a href="resumoAuxiliar.jsp" class='opcoes'>Resumo de Partida</a>
	</div>
	</div>
	</div>
	
	<!-- <div class='altPla' id='pad'>
		<h1>Alterar Placar</h1>
	</div>
	
	<div class='fal' id='pad'>
		<h1>Faltas</h1>
	</div> -->
	
	<%@ include file="footer.jsp"%>
</body>
</html>