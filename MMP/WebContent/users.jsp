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

String error=String.valueOf(session.getAttribute("errmsg"));


String name=null;
if(session.getAttribute("Ausername")==null){
	response.sendRedirect("Adminlogin.jsp");
}
else{
	name=String.valueOf(session.getAttribute("Aname"));
}
Connection conn;
conn=DBCon.db();
String dn=null,n=null;
String[] id= new String[100];
String[] Uname= new String[100];
String[] email= new String[100];
String[] username= new String[100];
int i=0,j=0;
try{           
		conn=DBCon.db(); 
       PreparedStatement pst = conn.prepareStatement("Select * from users");
       ResultSet rs = pst.executeQuery();               
       while(rs.next()&&(i<100)){
    	   id[i]=rs.getString("U_id");
    	   Uname[i]=rs.getString("U_name");
    	   username[i]=rs.getString("U_username");
    	   email[i]=rs.getString("U_email");
    	   i++;
    	   j++;
       }
       conn.close();
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
	<title>users</title>
	
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
		<a href="#hero" class="navbar-brand">MAKEME<span class="lighter">PERFECT</span></a>
	</div>
	<!-- Start Navigation -->
	<nav class="collapse navbar-collapse bs-navbar-collapse navbar-right" role="navigation">
	<ul class="nav navbar-nav">
		<li>
		<a href="admin.jsp">admin home</a>
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
				<h1 class="wow bounceInDown" data-wow-duration="1s" data-wow-delay="0.1s">logined<span class="lighter">as admin</span></h1>
				<p class="lead wow zoomIn" data-wow-duration="2s" data-wow-delay="0.5s">
				add,remove ,update
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
					<h3 class="section-title"><strong>Registered <span class="lighter">users</span></strong></h3>
					<p class="lead">you can delete users .                  
					</p>
				</div>
			</div>
			<div class="col-md-12">
				<div class="service-box wow zoomIn" data-wow-duration="1.5s" data-wow-delay="0.1s">
					<div class="row">
						<div class="col-md-1"><h3>User ID</h3>
						</div>
						<div class="col-md-3"><h3>name</h3>
						</div>
						<div class="col-md-3"><h3>Username</h3>
						</div>
						<div class="col-md-3"><h3>E-mail</h3>
						</div>
						<div class="col-md-2">*
						</div>					
					</div>
					<%
					i=0;
					while(i<j){
						if((i%2)==0){
					out.print("<div class=\"row outbox\" style=\"border-style: solid\">");
					out.print("<form method=\"POST\" action=\"Deleteuser\">");
					out.print("<input type=\"hidden\" name=\"id\" value=\""+id[i]+"\">");
					out.print("<div class=\"col-md-1\">"+id[i]);
					out.print("</div>");
					out.print("<div class=\"col-md-3\">"+Uname[i]);
					out.print("</div>");
					out.print("<div class=\"col-md-3\">"+username[i]);
					out.print("</div>");
					out.print("<div class=\"col-md-3\">"+email[i]);
					out.print("</div>");
					out.print("<div class=\"col-md-2\">");
					out.print("<input type=\"submit\" value=\"Delete user\">");
					out.print("</div>");
					out.print("</form>");
					out.print("</div>");
					out.print("<hr>");

						}
					else{
							out.print("<div class=\"row\" style=\"border-style: solid\">");
							out.print("<form method=\"POST\" action=\"Deleteuser\">");
							out.print("<input type=\"hidden\" name=\"id\" value=\""+id[i]+"\">");
							out.print("<div class=\"col-md-1\">"+id[i]);
							out.print("</div>");
							out.print("<div class=\"col-md-3\">"+Uname[i]);
							out.print("</div>");
							out.print("<div class=\"col-md-3\">"+username[i]);
							out.print("</div>");
							out.print("<div class=\"col-md-3\">"+email[i]);
							out.print("</div>");
							out.print("<div class=\"col-md-2\">");
							out.print("<input type=\"submit\" value=\"Delete user\">");
							out.print("</div>");
							out.print("</form>");
							out.print("</div>");
							out.print("<hr>");
					}
					i++;
					}
					%>
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