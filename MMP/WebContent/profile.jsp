<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<% response.setHeader("Cache-Control", "no-cache,no-strore,must-revalidate");
response.setHeader("Pragma","no-cache");
response.setHeader("Expires","0"); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<%@ page import="java.io.IOException"%>
<%@ page import="java.sql.*"%>
<%@ page import="com.DBCon"%>
<%
if(session.getAttribute("username")==null){
	response.sendRedirect("login.jsp");
}
Connection conn;
	String name=String.valueOf(session.getAttribute("name"));
	String id=null,uname=null,email=null,regtime=null;
	try{           
		conn=DBCon.db();
	       PreparedStatement pst = conn.prepareStatement("Select U_id,U_username,U_email,reg_time from users where U_name=?");
	       pst.setString(1, name);
	       ResultSet rs = pst.executeQuery();                        
	       if(rs.next()){
	    	   id=rs.getString("U_id");
	    	   uname=rs.getString("U_username");
	    	   email=rs.getString("U_email");
	    	   regtime=rs.getString("reg_time");   
	       }
	       else{
	    	   response.sendRedirect("login.jsp");
	       }
	   }
	   catch(Exception e){
		   e.printStackTrace();
	   }
%>
	<!-- Meta, title, CSS, favicons, etc. -->
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="description" content="">
	<meta name="author" content="">
	<title></title>
	
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
		<a href="index.jsp">Home</a>
		</li>
		<li>
		<a href="#courses">Courses</a>
		</li>
		<li>
		<a href="download.jsp">Downloads</a>
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
				 ${name}'s profile
				</p>
			</div>
		</div>
	</div>
</div>
</section>
<section id="courses" class="parallax section">
<div class="wrapsection">
	<div class="parallax-overlay" style="background-color: #01b0d1;opacity:1;"></div>
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<!-- Title -->
				<div class="maintitle">
					<h3 class="section-title"><strong>about<span class="lighter">${name}</span></strong></h3>
				</div>
			</div>
			<div class="col-md-11 col-sm-10">
				<div class="service-box wow zoomIn" data-wow-duration="1.5s" data-wow-delay="0.1s">
				<div class="row">
				<div class="col-md-3 col-sm-6">
				<img src="assets/img/profile.jpg" alt="profile image" class="image-course image-responsive">		
				</div>
				<div class="col-md-9 col-sm-6">			
				<h3>Personal information</h3>
				<div class="row">
				<div class="col-md-4 col-sm-6 text-left"><h3>User ID:</h3></div>
				<div class="col-md-8 col-sm-6 text-left"><p class="lead"><% out.print(id); %></p></div>
				</div>
				<div class="row">
				<div class="col-md-4 col-sm-6 text-left"><h3>Name:</h3></div>
				<div class="col-md-8 col-sm-6 text-left"><p class="lead">${name}</p></div>
				</div>
				<div class="row">
				<div class="col-md-4 col-sm-6 text-left"><h3>Username:</h3></div>
				<div class="col-md-8 col-sm-6 text-left"><p class="lead"><% out.print(uname); %></p></div>
				</div>
				<div class="row">
				<div class="col-md-4 col-sm-6 text-left"><h3>Email:</h3></div>
				<div class="col-md-8 col-sm-6 text-left"><p class="lead"><% out.print(email); %></p></div>
				</div>
				<div class="row">
				<div class="col-md-4 col-sm-6 text-left"><h3>Registration time:</h3></div>
				<div class="col-md-8 col-sm-6 text-left"><p class="lead"><% out.print(regtime); %></p></div>
				</div>
				<div class="row">
				<div class="col-md-4 col-sm-6 text-left"><a href="ResetPass.jsp" class="btn btn-default btn-primary wow fadeInLeft" role="button">Change password</a></div>
				<div class="col-md-4 col-sm-6 text-left"><a href="UpdateProfile.jsp" class="btn btn-default btn-primary wow fadeInLeft" role="button">Update profile</a></div>						
				</div>
				</div>
				</div>
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