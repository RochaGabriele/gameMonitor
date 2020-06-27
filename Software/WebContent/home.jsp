<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home</title>
<link rel="stylesheet" type="text/css" href="css/home.css">
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
</head>
<body>
<% 
		String idH = (String) session.getAttribute("id");
			if(idH != null){
				%>

	<section>
		<div class="container-fluid img">
			
		</div>
		<div class="container allInfo">
			<div class="titulo"><h3> Basquete Web </h3></div>
			<div class="txt">
				<p>
					 Essa aplica��o na web ajuda o usu�rio no desempenho de sua fun��o, como por exemplo o cadastramento de partidas no caso do Apoio, controle de pontos no caso do Auxiliar...
				</p>
				<p>
					Esparamos que voc� fa�a um bom uso da aplica��o e seja um amante de basquete assim como n�s.
					Para um melhor uso disponibilizamos um tutorial de como usar, <a class="link" href="#">acesse-o.</a>
				</p>
			</div>	
		</div>	
		
			
			<div class="container imagens">
				<div class="psimg">
					<img src="imagens/img-home2.jpg" class="img-fluid img3 rounded " alt="...">
				</div>
				<div class="psimg">
					<div class="right">
						<img src="imagens/img-home3.jpg" class="img-fluid img3 rounded " alt="...">
					</div>
				</div>
			</div>
  			
		
		
	
	</section>
	
			<% 
			}else{
				response.sendRedirect("deslogar.jsp");
			}
		
		
	
	%>	

</body>
</html>