<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
 
<%
if(session.getAttribute("username")!=null){
	response.sendRedirect("index.jsp");
}
else{
	String error=String.valueOf(session.getAttribute("error"));
}%>
	<!-- Meta, title, CSS, favicons, etc. -->
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="description" content="">
	<meta name="author" content="">
	<title>Register</title>
	
	<!-- Styles -->
	<link rel='stylesheet' href='assets/css/bootstrap.min.css'>
	<link rel='stylesheet' href='assets/css/animate.min.css'>
	<link rel='stylesheet' href="assets/css/font-awesome.min.css"/>
	<link rel='stylesheet' href="assets/css/style.css"/>
	
	<!-- Fonts -->
	<link href='http://fonts.googleapis.com/css?family=Raleway:200,300,400,500,600,700,800' rel='stylesheet' type='text/css'>

	<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
	<!--[if lt IE 9]>
		  <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
		  <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
	<![endif]-->
			
	<!-- Favicon -->
	<link rel="shortcut icon" href="assets/img/logo.png">
</head>
<body>
<!-- Begin Hero Bg -->
<div id="parallax"  style="background-image: url(assets/img/bg-2.jpg);">
</div>
<!-- End Hero Bg
	================================================== -->
<!-- Start Header
	================================================== -->
<header id="header" class="navbar navbar-inverse navbar-fixed-top" role="banner">
<div class="container">
	<div class="navbar-header">
		<!-- Your Logo -->
		<a href="welcome.jsp#hero" class="navbar-brand">MAKEME<span class="lighter">PERFECT</span></a>
	</div>
</div>
</header>
<!-- Intro
	================================================== -->
<section id="hero" class="section">
<div class="container">
	<div class="row">
		<div class="col-md-6">
			<div class="herotext">
				<h1>REGISTER <span class="lighter">IN TO</span></h1>
				<h1 class="wow bounceInDown" data-wow-duration="1s" data-wow-delay="0.1s">MAKE ME <span class="lighter">PERFECT</span></h1>
                    </div>
		</div>
	</div>
</div>
</section>

<!-- Contact ================================================== -->
<section id="contactarea" class="parallax section">
<div class="wrapsection">
	<div class="parallax-overlay" style="background-color: #01b0d1;"></div>
	<div class="container">
		<div class="row">
		<div class="col-md-12 sol-sm-12">
				<div class="maintitle">
					<h3 class="section-title">REGISTER HERE</h3>
					<p class="lead wow flipInX">
						create new account.
					</p>
				</div>
			</div>
		<div class="col-md-4"></div>
			<div class="col-md-12 service-box wow zoomIn" data-wow-duration="1.5s" data-wow-delay="0.1s">
			
				<form  id="login" method="post" action="Reg" class="text-left">
					<fieldset>
					<div class="row error"><p>${error}</p>
					</div>
						<div class="row">
							<div class="col-md-5 wow fadeIn animated" data-wow-delay="0.3s" data-wow-duration="2s">
								<label for="name">name<span class="required">*</span></label>
								<input type="text" name="name" id="name" size="30" placeholder="e.g.: vivek" value="" required/>
							</div>
							<div class="col-md-5 wow fadeIn animated" data-wow-delay="0.3s" data-wow-duration="2s">
								<label for="username">Username<span class="required">*</span></label>
								<input type="text" name="username" id="username" size="30" placeholder="e.g:vivek123" value="" required/>
							</div>
						</div>
						<div class="row">
							<div class="col-md-5 wow fadeIn animated" data-wow-delay="0.3s" data-wow-duration="2s">
								<label for="email">Email<span class="required">*</span></label>
								<input type="text" name="email" id="email" size="30" placeholder="e.g:vivek@gmail.com" value="" required/>
							</div>		
						</div>
						<div class="row">
							<div class="col-md-5 wow fadeIn animated animated" data-wow-delay="0.1s" data-wow-duration="2s">
								<label for="password">password<span class="required">*</span></label>
								<input type="password" name="password" id="password" size="30" placeholder="password" value="" required/>
							</div>
							<div class="col-md-5 wow fadeIn animated animated" data-wow-delay="0.1s" data-wow-duration="2s">
								<label for="cpassword">Confirm password<span class="required">*</span></label>
								<input type="password" name="cpassword" id="password" size="30" placeholder="re-enter your password" value="" required/>
							</div>
						</div>
						<div class="wow fadeIn animated" data-wow-delay="0.3" data-wow-duration="1.5s">
							<input id="submit" type="submit" name="submit" value="REGISTER"/>
						</div>
					</fieldset>
				</form>
				
			</div>
			<div class="col-md-12">
					<a href="login.jsp" class="btn btn-default btn-lg wow fadeInLeft" role="button"> <p><<</p> Go to Login</a>
			</div>
		</div>
	</div>
</div>
</section>
<!-- Credits  =============================================== -->
<jsp:include page="footer.html" />
<!-- Bootstrap core JavaScript
	================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
<script src="assets/js/jquery.min.js"></script>
<script src="assets/js/bootstrap.min.js"></script>
<script src="assets/js/waypoints.min.js"></script>
<script src="assets/js/jquery.scrollTo.min.js"></script>
<script src="assets/js/jquery.localScroll.min.js"></script>
<script src="assets/js/jquery.magnific-popup.min.js"></script>
<script src="assets/js/validate.js"></script>
<script src="assets/js/common.js"></script>
</body>
</html>