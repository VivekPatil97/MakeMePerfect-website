<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<% response.setHeader("Cache-Control", "no-cache,no-strore,must-revalidate");
response.setHeader("Pragma","no-cache");
response.setHeader("Expires","0"); %>
<%@ page import="java.io.IOException"%>
<%@ page import="java.sql.*"%>
<%@ page import="com.DBCon"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<%
if(session.getAttribute("username")==null){
	response.sendRedirect("login.jsp");
}
else{
	String name=String.valueOf(session.getAttribute("name"));
}
Connection conn;
int n=Integer.parseInt(request.getParameter("n"));;
int i=0,j=0;
String[] question= new String[20];
String[] option1= new String[20];
String[] option2= new String[20];
String[] option3= new String[20];
String[] option4= new String[20];
String[] ans= new String[20];
conn=DBCon.db();
PreparedStatement pst = conn.prepareStatement("Select * from questions where C_id=?");
pst.setInt(1, n);
ResultSet rs = pst.executeQuery();                        
while(rs.next()&&i<20){
	   question[i]=rs.getString("question");
	   option1[i]=rs.getString("optionA");
	   option2[i]=rs.getString("optionB");
	   option3[i]=rs.getString("optionC");
	   option4[i]=rs.getString("optionD");
	   i++;
	   j++;
}
conn.close();
%>
	<!-- Meta, title, CSS, favicons, etc. -->
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="description" content="">
	<meta name="author" content="">
	<title>Quiz</title>
	
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
		<a href="#hero" class="navbar-brand">MAKEME<span class="lighter">PERFECT</span></a>
	</div>
	<!-- Start Navigation -->
	<nav class="collapse navbar-collapse bs-navbar-collapse navbar-right" role="navigation">
	<ul class="nav navbar-nav">
		<li>
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
				${name} it's time to test your knowlwdge.
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
					<h3 class="section-title"><strong>quiz<span class="lighter">started</span></strong></h3>
					<p class="lead">					
					</p>
				</div>
			</div>
			<%
			i=0;
			while(j>0&&i<20){
			out.print("<div class=\"col-md-6 col-sm-6\">");
			out.print("<div id=\"que\" class=\"service-box wow zoomIn\" data-wow-duration=\"1.5s\" data-wow-delay=\"0.1s\">");
			out.print("<div class=\"row\">");
			out.print("<div class=\"col-md-12\">");					
			out.print("<h3>Q."+(i+1)+" "+question[i]+"</h3>");
			out.print("<form id=\"quiz\" methode=\"POST\" action=\"quizresult.jsp\">");
			out.print("<input type=\"hidden\" name=\"id\" value=\""+(n)+"\">");
			out.print("<div class=\"col-md-5 outbox\"><div class=\"col-md-6\">"+option1[i]+"</div><div class=\"col-md-6\"><input class=\"radio-btn\" name=\"ans"+(i)+"\" type=\"radio\" value=\"A\"></div></div>");
			out.print("<div class=\"col-md-1\"></div>");
			out.print("<div class=\"col-md-5 outbox\"><div class=\"col-md-6\">"+option2[i]+"</div><div class=\"col-md-6\"><input class=\"radio-btn\" name=\"ans"+(i)+"\" type=\"radio\" value=\"B\"></div></div>");
			out.print("<div class=\"col-md-12\"><br/></div>");
			out.print("<div class=\"col-md-5 outbox\"><div class=\"col-md-6\">"+option3[i]+"</div><div class=\"col-md-6\"><input class=\"radio-btn\" name=\"ans"+(i)+"\" type=\"radio\" value=\"C\"></div></div>");
			out.print("<div class=\"col-md-1\"></div>");	
			out.print("<div class=\"col-md-5 outbox\"><div class=\"col-md-6\">"+option4[i]+"</div><div class=\"col-md-6\"><input class=\"radio-btn\" name=\"ans"+(i)+"\" type=\"radio\" value=\"D\"></div></div>");
			out.print("</div>");
			out.print("</div>");
			out.print("</div>");
			out.print("</div>");
			i++;
			j--;
			}
			%>
			<div class="row">
			<div class="col-md-4">
			<div class="service-box wow zoomIn" data-wow-duration="1.5s" data-wow-delay="0.1s">
			<input class="btn btn-default btn-primary wow fadeInLeft" type="submit" value="finish" ></form>
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