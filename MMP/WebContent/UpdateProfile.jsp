<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<% response.setHeader("Cache-Control", "no-cache,no-strore,must-revalidate");
response.setHeader("Pragma","no-cache");
response.setHeader("Expires","0"); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<%String Uname=null;
if(session.getAttribute("username")==null){
	response.sendRedirect("login.jsp");
}
else{
	String name=String.valueOf(session.getAttribute("name"));
 String error=String.valueOf(session.getAttribute("error"));
 Uname=String.valueOf(session.getAttribute("username"));
 System.out.println(Uname);
}%>
	<!-- Meta, title, CSS, favicons, etc. -->
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="description" content="">
	<meta name="author" content="">
	<title>update profile</title>
	
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
		<button class="navbar-toggle" type="button" data-toggle="collapse" data-target=".bs-navbar-collapse">
		<span class="sr-only">Toggle navigation</span>
		<span class="icon-bar"></span>
		<span class="icon-bar"></span>
		<span class="icon-bar"></span>
		</button>
		<!-- Your Logo -->
		<a href="welcome.jsp#hero" class="navbar-brand">MAKEME<span class="lighter">PERFECT</span></a>
	</div>
	<!-- Start Navigation -->
	<nav class="collapse navbar-collapse bs-navbar-collapse navbar-right" role="navigation">
	<ul class="nav navbar-nav">
		<li>
		<a href="#hero">Home</a>
		</li>
		<li>       
        <a href="profile.jsp" class="navbar-brand">${name}</a>
        </li>
        <li><form id="login" action="logout">       
        <input id="submit" type="submit" value="LOGOUT" class="btn-logout"/></form>
        </li>
	</ul>
	</nav>
</div>
</header>
<!-- Intro
	================================================== -->
<section id="hero" class="section">
<div class="container">
	<div class="row">
		<div class="col-md-12">
			<div class="herotext">
				<h1 class="wow bounceInDown" data-wow-duration="1s" data-wow-delay="0.1s">MAKE ME <span class="lighter">PERFECT</span></h1>
				<p class="lead wow zoomIn" data-wow-duration="2s" data-wow-delay="0.5s">
				${name} you are going to update details!!
				</p>
			</div>
		</div>
	</div>
</div>
</section>
<section id="contactarea" class="parallax section">
<div class="wrapsection">
	<div class="parallax-overlay" style="background-color: #01b0d1;"></div>
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<div class="maintitle">
					<h3 class="section-title">update profile </h3>
					<p class="lead">
						update your profile in just seconds!
					</p>
				</div>
				<div class="service-box wow zoomIn" data-wow-duration="1.5s" data-wow-delay="0.1s">
				<form id="login" method="post" action="UpdateProfile"  class="text-left">
					<fieldset>
					<div class="row error"><p>${error}</p>
					</div>
						<div class="row">
							<div class="col-md-6 wow fadeIn animated animated" data-wow-delay="0.1s" data-wow-duration="2s" style="margin: auto;">
								<label for="name"> name<span class="required">*</span></label>
								<input type="text" name="name" id="name" size="30" placeholder="name" required/>
								<input type="hidden" name="Uname" value="<% out.print(Uname); %>" required/>
							</div>
						</div>
						<div class="row">
							<div class="col-md-6 wow fadeIn animated" data-wow-delay="0.3s" data-wow-duration="2s">
								<label for="username">username<span class="required">*</span></label>
								<input type="text" name="username" id="username" size="30" placeholder="new username" required/>
							</div>
						</div>
						<div class="row">
							<div class="col-md-6 wow fadeIn animated" data-wow-delay="0.3s" data-wow-duration="2s">
								<label for="email">email<span class="required">*</span></label>
								<input type="text" name="email" id="email" size="30" placeholder="new email" required/>
							</div>
						</div>
						<div class="row">
							<div class="col-md-12 wow fadeIn animated" data-wow-delay="0.3" data-wow-duration="1.5s">
								<input id="submit" type="submit" name="submit" value="perform Change"/>
							</div>
						</div>
						</fieldset>
				</form>
				</div>									
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