<html>
<head>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>

<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1" />
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css"
	type="text/css">
<link rel="stylesheet"
	href="http://fonts.googleapis.com/css?family=Varela+Round"
	type="text/css">

<link href="resources/css/bootstrap.min.css" rel="stylesheet"
	type="text/css">
<link href="resources/css/header.css" rel="stylesheet" type="text/css">
<link href="resources/css/footer.css" rel="stylesheet" type="text/css">
<link href="resources/css/carousel.css" rel="stylesheet" type="text/css">
<link href="resources/css/loginRegister.css" rel="stylesheet"
	type="text/css">
<link href="resources/css/columnDivider.css" rel="stylesheet"
	type="text/css">

<script type="text/javascript" src="resources/js/loginRegister.js"></script>
<script type="text/javascript" src="resources/js/header.js"></script>

<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.13.1/jquery.validate.min.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script src="resources/js/bootstrap.min.js"></script>

</head>
<body>
	<header>
		<div class="container-fluid">
			<nav class="navbar navbar-inverse">
				<div class="navbar-header">
					<button class="navbar-toggle" type="button" data-toggle="collapse"
						data-target=".js-navbar-collapse">
						<span class="sr-only">Toggle navigation</span> <span
							class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
					<a class="navbar-brand" href="home">AutoTraderIN</a>
				</div>
				<div class="collapse navbar-collapse js-navbar-collapse">
					<ul class="nav navbar-nav">
						<li class="dropdown mega-dropdown"><a href="#"
							class="dropdown-toggle" data-toggle="dropdown">Products <span
								class="caret"></span></a>
							<ul class="dropdown-menu mega-dropdown-menu">
								<li class="col-sm-3">
									<ul>
										<li class="dropdown-header">BMW</li>
										<li><a href="#">BMW i8</a></li>
										<li><a href="#">BMW Z4</a></li>
										<li><a href="#">BMW GT</a></li>
										<li><a href="#">BMW M4 GTS</a></li>
									</ul>
								</li>
								<li class="col-sm-3">
									<ul>
										<li class="dropdown-header">Ferrari</li>
										<li><a href="#">Ferrari LaFerrari</a></li>
										<li><a href="#">Ferrari F12 TDF</a></li>
										<li><a href="#">Ferrari GTC 4 Lusso</a></li>
										<li><a href="#">Ferrari Product 4</a></li>
									</ul>
								</li>
								<li class="col-sm-3">
									<ul>
										<li class="dropdown-header">UnknownCompany</li>
										<li><a href="#">UnknownCompany Product 1</a></li>
										<li><a href="#">UnknownCompany Product 2</a></li>
										<li><a href="#">UnknownCompany Product 3</a></li>
										<li><a href="#">UnknownCompany Product 4</a></li>
									</ul>
								</li>
							</ul>
							</li>
						<li><a href="aboutus">About Us</a></li>
					</ul>
					<ul class="nav navbar-nav navbar-right">
						<li class="dropdown"><a href="login" class="dropdown-toggle"
							data-toggle="dropdown" role="button" aria-expanded="false">My
								Account <span class="caret"></span>
						</a>
							<ul class="dropdown-menu" role="menu">
								<c:if test="${empty loginMessage}">
									<li><a href="login">Login</a></li>
									<li><a href="register">Register</a></li>
								</c:if>
								<c:if test="${not empty loginMessage}">
									<li><a href="logout">Logout</a></li>
								</c:if>
							</ul>
							</li>
						<li><a href="mycart">My Cart</a></li>
						
					</ul>
				</div>
			</nav>
		</div>
	</header>