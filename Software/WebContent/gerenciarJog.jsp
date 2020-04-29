<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%//autor: Waycon Sales %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Gerenciar Jogadores</title>
<link rel="stylesheet" type="text/css" href="css/gerenciarJog.css">
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
</head>
<body>
<%@ include file="menuApoio.jsp"%>
	<section>
		<div class="container-fluid">
			<div class="container form">
			<form action="ServJog" method="post" class="container">
				<div class=" txt-sd text-center mb-1">
					<h3 class="txt-saudacao">Gerencie os jogadores</h3>
				</div>
				<div class="camposTime">
				    <div class="form-group">
					  	<label for="nome" class="font">Nome do time</label>
					  	<select class="form-control">	
		  					<option value="(nomeTime do banco)" id="time">(Esperando o select do banco)</option> <%//foeach do select nome dos tecnicos %>
						</select>
					</div>
				  	<div class="form-group">
	  					<input type="submit" id="enviar" class="btn text-center" value="Cadastrar"/>
	  				</div>
				</div>
			</form>
			<div class="container-fluid">
					<div class="table-responsive">
					<table class="table">
  						<thead>
						    <tr>
						      <th scope="col">id</th>
						      <th scope="col">Nome</th>
						      <th scope="col">N°Camisa</th>
						      <th scope="col">Telefone</th>
						      <th scope="col">Editar</th>
						      <th scope="col">Deletar</th>
						    </tr>
  						</thead>
  						<tbody>
							<tr>
								<th scope="row">1</th>
								<td>À espera</td>
								<td>de um</td>
								<td>foreach</td>
								<td><a class="bot-edit" href="">Editar</a></td>
								<td><a onclick="" href="" class="bot-del">Deletar</a></td>
							</tr>
	  					</tbody>
					</table>
				</div>
				</div>
			
			</div>
		</div>
	</section>

<%@ include file="footer.jsp"%>
</body>
</html>