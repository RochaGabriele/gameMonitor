<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%//autor: Gabriele Rocha %>    
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Placar</title>
	<link rel="stylesheet" type="text/css" href="css/style.css"/>
	
	<link rel="stylesheet" type="text/css" href="css/cadInfor.css"/>
    <link href="css/Tbootstrap.min.css" rel="stylesheet">
    <link href="css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="css/custom.css" rel="stylesheet">

</head>
<body>
	<%
		String id = (String) session.getAttribute("id");
		String cargo = (String) session.getAttribute("cargo");
		if(cargo.equals("Auxiliar")){
			if(id != null){
	%>
	<div class='titleAlt'>
		<h1>Placar</h1>
	</div>

        <div class="container-fluid">
            <div class="row">
                <section class="section-full">
                    <div class="col-xs-5 col-md-5 text-center">
                        <div class="row">
                            <h2 style="color: white; border-bottom-style: solid; border-bottom-width: 1px; ">Time A</h2>
                            <div class="col-xs-6 col-md-6">
                                <img src="./imagens/0.png" style="max-width:73%; height:auto; margin-left: 28%;" alt="" class="img-responsive" id="img2-time1"/>
                            </div>
                            <div class="col-xs-6 col-md-6">
                                <img src="./imagens/0.png" style="max-width:73%; height:auto;" alt="" class="img-responsive" id="img1-time1"/>
                            </div>
                            <div class="controles">
                                <button type="button" id="btn-mais-time1" name="button" class="btn-lg btn-success">+1</button>
                                <button type="button" id="btn-menos-time1" name="button" class="btn-lg btn-danger">-1</button>
                            </div>
                        </div>
                    </div>
                    <div class="col-xs-2 col-md-2 text-center">
                        <h1 style="color: white;">
                            X
                        </h1>
                    </div>
                    <div class="col-xs-5 col-md-5 text-center">
                        <div class="row">
                            <h2 style="color: white; border-bottom-style: solid; border-bottom-width: 1px;">Time B</h2>
                            <div class="col-xs-6 col-md-6">
                                <img src="./imagens/0.png" style="max-width:73%; height:auto; margin-left: 28%;" alt="" class="img-responsive" id="img2-time2"/>
                            </div>
                            <div class="col-xs-6 col-md-6">
                                <img src="./imagens/0.png" style="max-width:73%; height:auto;" alt="" class="img-responsive" id="img1-time2"/>
                            </div>
                            <div class="controles">
                                <button type="button" id="btn-mais-time2" name="button" class="btn-lg btn-success">+1</button>
                                <button type="button" id="btn-menos-time2" name="button" class="btn-lg btn-danger">-1</button>
                            </div>
                        </div>
                    </div>
                </section>
            </div>
        </div>
        <script src="js/jquery.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/placar.js"></script>
	
	<% 
			}else{
				response.sendRedirect("deslogar.jsp");
			}
		}else{
			out.print("Sua sessão não permite o acesso as funcionalidades de Auxiliar"+"<br/>");
			
		}
		
	
	%>
	
</body>
</html>