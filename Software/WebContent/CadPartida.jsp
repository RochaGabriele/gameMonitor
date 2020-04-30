<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%//autor: Everton Rocha %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Cadastro das partidas</title>
		<link href="css/cadJogador.css"  rel="stylesheet"  type="text/css">
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" 
		integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
		 <script src='https://kit.fontawesome.com/56f370dbb1.js' crossorigin='anonymous'></script>
	</head>
	<body>
	<%@ include file="menuApoio.jsp"%>
        <div class="container-fluid h-100">
            <div class="row form-cadastro justify-content-center p-4">
                <div class="col-md-3 align-self-center area-form">

				<div class="row justify-content-center mb-4">
    		<img src="imagens/partida.png" alt="bola de futebol" class="img-fluid user">
		</div>
		<span class="small d-block text-center"><b>Bem vindo(a)</b></span>
		<span class="small d-block text-center">Cadastro das partidas</span>

				<form method="post"  action="serv"  class="form">
					    <div class="input-group mt-2">
					        <input type="date" class="form-control bg-light btn-outline-transparent"  name="data"  placeholder="Data">
					    </div>
					    <div class="input-group mt-2">
					        <input type="time" class="form-control bg-light btn-outline-transparent"  name="horario"  placeholder="Hor�rio">
					    </div>
					    <div class="input-group mt-2">
					        <input type="text" class="form-control bg-light btn-outline-transparent" name="localidade"  placeholder="Localidade">
					    </div>
					   <div class="input-group mt-2">
					        <input type="text" class="form-control bg-light btn-outline-transparent"  name="nomeTime" placeholder="Nome do time">
					    </div>
					    <div class="input-group mt-2">
					        <input type="text" class="form-control bg-light btn-outline-transparent"  name="nomeAdversario"  placeholder="Nome do time advers�rio">
					    </div>
					    <div class="input-group mt-2">
					        <input type="text" class="form-control bg-light btn-outline-transparent"  name="nomeArbitro"  placeholder="Nome do �rbitro">
					    </div>
					    <div class="input-group mt-2">
					        <input type="text" class="form-control bg-light btn-outline-transparent"  name="nomeApoio"  placeholder="Nome do apoio">
					    </div>
					    <div class="input-group mt-2">
					        <input type="text" class="form-control bg-light btn-outline-transparent"  name="nomeAuxiliar"  placeholder="Nome do auxiliar">
					    </div>
					    <div class="row">
					        <div class="col-md-6">
					                <button type="button" class="btn btn-secondary btn-block mt-2">Cancelar</button>
					        </div>
					        <div class="col-md-6">
					                <input type="submit" class="btn btn-info btn-block mt-2" value="Cadastrar">
					        </div>
					    </div>
					</form>
                </div>
            </div>
        </div>
        <%@ include file="footer.jsp"%>
    	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
		<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
	</body>
</html>