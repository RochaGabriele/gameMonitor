<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%//autor: Gabriele Rocha %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Alterar Placar</title>
<link rel="stylesheet" type="text/css" href="css/style.css"/>

<link rel="stylesheet" type="text/css" href="css/cadInfor.css"/>
  <!-- Bootstrap Core CSS -->
        <link href="css/Tbootstrap.min.css" rel="stylesheet">
        <!-- Custom Fonts -->
        <link href="css/font-awesome.min.css" rel="stylesheet" type="text/css">
        <!-- Custom CSS -->
        <link href="css/custom.css" rel="stylesheet">
        <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
            <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
            <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
        <![endif]-->
</head>
<body>

		<video autoplay='autoplay' loop class='bg_video'>
			<source src='videos/Basketball.mp4' type='video/mp4'>
		</video>	

	<div class='titleAlt'>
		<h1>Alterar Placar</h1>
	</div>

        <div class="container-fluid">
            <div class="row">
                <section class="section-full">
                    <div class="col-xs-5 col-md-5 text-center">
                        <div class="row">
                            <h2 style="color: white; border-bottom-style: solid;	border-bottom-width: 1px;">Time A</h2>
                            <div class="col-xs-6 col-md-6">
                                <img src="./img/0.png" style="height: 400px; margin-left: 50px;" alt="" class="img-responsive" id="img2-time1"/>
                            </div>
                            <div class="col-xs-6 col-md-6">
                                <img src="./img/0.png" style="height: 400px" alt="" class="img-responsive" id="img1-time1"/>
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
                            <h2 style="color: white; border-bottom-style: solid;	border-bottom-width: 1px;">Time B</h2>
                            <div class="col-xs-6 col-md-6">
                                <img src="./img/0.png" style="height: 400px" alt="" class="img-responsive" id="img2-time2"/>
                            </div>
                            <div class="col-xs-6 col-md-6">
                                <img src="./img/0.png" style="height: 400px" alt="" class="img-responsive" id="img1-time2"/>
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
        <a href='cadInfor.jsp'><button style="margin-top: -50px; text-align: center;  	text-decoration: none;  	border: solid 1px transparent;  	border-radius: 4px;  	padding: 0.5em 1em;  	color: #ffffff;  	background-color: hsla(0, 100%, 90%, 0.3);  	cursor: pointer;">Voltar</button></a>
        <!-- jQuery -->
        <script src="js/jquery.min.js"></script>
        <!-- Bootstrap Core JavaScript -->
        <script src="js/bootstrap.min.js"></script>
        <!-- Placar JavaScript -->
        <script src="js/placar.js"></script>
	
	<!--<div class='al'>
		<form class="form-inline" action="/action_page.php">
		  <input type="number" id="time" placeholder="0" name="time" min="0">
		  <input type="number" id="adv" placeholder="0" name="adv" min="0">
		 
		  <button type="submit">Enviar</button>
		</form>
	</div>

	 <div class='altPla' id='pad'>
		<h1>Alterar Placar</h1>
	</div>-->
	
</body>
</html>