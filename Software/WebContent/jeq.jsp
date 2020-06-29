<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%//autor: Gabriele Rocha %>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Cadastro de Informa��es - Jogadores Em Quadra</title>
	<link rel="stylesheet" type="text/css" href="css/cadInfor.css"/>
	<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css"/>
	<script src="js/sweetalert.min.js"></script>
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
				     <form method="POST" action="dads" id="formulario">
				       <input type='text' placeholder='Armador:' id='Armador' name='Armador' value="${Armador}" />
				       <input type='text' placeholder='Ala-armador:' id='Alaarmador' name='Alaarmador' value="${Alaarmador}" />
				       <input type='text' placeholder='Ala:' id='Ala' name='Ala' value="${Ala}" />
				       <input type='text' placeholder='Ala-piv�:' id='Alapivo' name='Alapivo' value="${Alapivo}" />
				       <input type='text' placeholder='Piv�:' id="Pivo" name='Pivo' value="${Pivo}" />
				       <div class="fter">
				       		<button type="button" id="tom">Salvar</button>
				       </div>
				     </form>
				     
				  </div>
				  
				</div>
				
			</div>
		</div>	
	</div>
<%@ include file="footer.jsp"%>
<script type="text/javascript">

document.getElementById("tom").onclick = function() {
	 var Armador = document.getElementById("Armador");
     var Alaarmador = document.getElementById("Alaarmador");
     var Ala = document.getElementById("Ala");
     var Alapivo = document.getElementById("Alapivo");
     var Pivo = document.getElementById("Pivo");
     var formulario = document.getElementById("formulario");
     
     

     if (Armador.value == "" || Armador.value.lenght < 3) {
    	 swal("","Armador n�o informado!", "warning");
    	 return;	
     }
     if (Alaarmador.value == "" || Alaarmador.value.lenght < 3) {
         swal("","Ala-armador n�o informado!", "warning");
         return;
       }
     if (Ala.value == "" || Ala.value.lenght < 3) {
         swal("","Ala n�o informado!", "warning");
         return;
       }
     if (Alapivo.value == "" || Alapivo.value.lenght < 3) {
         swal("","Ala-piv� n�o informado!", "warning");
         return;
       }
     if (Pivo.value == "" || Pivo.value.lenght < 3) {
         swal("","Piv� n�o informado!", "warning");
         return;
       }
     
    formulario.submit();
};

</script>
</body>
</html>