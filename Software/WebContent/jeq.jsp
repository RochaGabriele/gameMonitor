<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%//autor: Gabriele Rocha %>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Cadastro de Informações - Jogadores Em Quadra</title>
<link rel="stylesheet" type="text/css" href="css/cadInfor.css"/>
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css"/>
</head>
<body>
	<%@ include file="menuAuxiliar.jsp"%>
	
		<video autoplay='autoplay' loop class='bg_video'>
			<source src='videos/Basketball.mp4' type='video/mp4'>
		</video>	
		
	<div class="container-fluid">
		<div class="container">	
			<div class='titleJeq text-center'>
				<h1>Jogadores Em Quadra</h1>
				
			</div>
			
			<div class='jogQua' id='pad'>
				<div id='container'>
				  <div class='signup'>
				     <form>
				       <input type='text' placeholder='Jogador 1:'  />
				       <input type='text' placeholder='Jogador 2:'  />
				       <input type='text' placeholder='Jogador 3:'  />
				       <input type='text' placeholder='Jogador 4:'  />
				       <input type='text' placeholder='Jogador 5:'  />
				       <input type='submit' placeholder='SUBMIT' value='Salvar' />
				     </form>
				     
				  </div>
				  
				</div>
				
			</div>
			<a href='cadInfor.jsp'><button style="margin-top: -50px; margin-left: 10px; margin-bottom:50px; text-align: center;  	text-decoration: none;  	border: solid 1px transparent;  	border-radius: 4px;  	padding: 0.5em 1em;  	color: #ffffff;  	background-color: hsla(0, 100%, 90%, 0.3);  	cursor: pointer;">Voltar</button></a>
		</div>	
	</div>
<%@ include file="footer.jsp"%>
</body>
</html>