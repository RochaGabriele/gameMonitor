<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Novo Time</title>
<link rel="stylesheet" type="text/css" href="css/cadTime.css">
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
</head>
<body>
<%@ include file="menuApoio.jsp"%>
	<section>
		<div class="container-fluid">
			<form action="ServTime" method="post" class="form  container">
				<div class=" txt-sd text-center mb-1">
					<h3 class="txt-saudacao">Cadastre um Novo Time</h3>
				</div>
				<div class="camposTime">
					<div class="form-group">
				    	<label for="nome" class="font">Nome do time</label>
				    	<input type="text" class="form-control" name="nome" id="nome"  placeholder="Nome do time"/>
				  	</div>
				  	
				  	<div class="form-group">
				    	<label for="origem" class="font">Origem(Localidade)</label>
				    	<input type="text" class="form-control" name="origem" id="origem" placeholder="País, estado, cidade, bairro"/>
				    </div>
				    <div class="form-group">
					  	<label class="font">Nome do Técnico</label>
					  	<select class="form-control">	
		  					<option value="cpfdotecnico" id="tec">Técnico</option> <%//foeach do select nome dos tecnicos %>
						</select>
					</div>
				  	<div class="form-group">
	  				<input type="submit" id="cadastrar" class="btn text-center" value="Cadastrar"/>
	  				</div>
				</div>
			</form>
			
		</div>
	</section>
<%@ include file="footer.jsp"%>
</body>
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/sweetalert.min.js"></script>
<script type="text/javascript" src="js/cadTime.js"></script>
</html>