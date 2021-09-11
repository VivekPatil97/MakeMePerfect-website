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
			conn=DBCon.db();
			String name=String.valueOf(session.getAttribute("username"));
			String dn=null,n=null;String aName=null,aIntro=null,cName=null,aMain=null,aSyntax=null,aEg=null,aOut=null,aId=null;
			String que=null,option1=null,option2=null,option3=null,option4=null,id=null;
			n=String.valueOf(request.getParameter("n"));
			String cname=String.valueOf(request.getParameter("m"));
			String uid=null;
			try{           
				   conn=DBCon.db(); 
			       PreparedStatement pst = conn.prepareStatement("Select * from article where A_id=?");
			       //PreparedStatement pstque = conn.prepareStatement("Select * from questions where A_id=?");
			       PreparedStatement pstuser = conn.prepareStatement("Select U_id from users where U_username=?  or U_email=?");
			       pst.setString(1, n);
			       //pstque.setString(1, n);
			       pstuser.setString(1, name);
			       pstuser.setString(2, name);
			       ResultSet rs = pst.executeQuery();  
			      // ResultSet rsque = pstque.executeQuery();
			       ResultSet rsuser = pstuser.executeQuery();
			       while(rsuser.next()){
			    	   uid=rsuser.getString("U_id");
			    	}
			       while(rs.next()){
			    	   aId=rs.getString("A_id");
			    	   cName=rs.getString("C_name");
			    	   aName=rs.getString("A_heading");
			    	   aIntro=rs.getString("A_description");
			    	   aMain=rs.getString("A_main");
			    	   aSyntax=rs.getString("A_syntax");
			    	   aEg=rs.getString("A_eg");
			    	   aOut=rs.getString("A_output");
			       }
			       //while(rsque.next()){
			    	//   id=rsque.getString("id");
			    	//   que=rsque.getString("question");
			    	//   option1=rsque.getString("optionA");
			    	//   option2=rsque.getString("optionB");
			    	//   option3=rsque.getString("optionC");
			    	//   option4=rsque.getString("optionD");
			      // }
			       if(cName.equals("cpp")){cName="c++";}
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
	<title><% out.print(aName);%></title>
	
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
		<a href="welcome.jsp">Home</a>
		</li>
		<li>
		<a href="#courses">Courses</a>
		</li>
		<li>
		<a href="blog.jsp">Blogs</a>
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
				<h1 class="wow bounceInDown" data-wow-duration="1s" data-wow-delay="0.1s"><% out.print(cName); %><span class="lighter">  programming</span></h1>
				<p class="lead wow zoomIn" data-wow-duration="2s" data-wow-delay="0.5s">
				<% out.print(aName); %>
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
					<h3 class="section-title"><strong><% out.print(aName);%><span class="lighter"></span></strong></h3>
					<p class="lead">                 
					</p>
				</div>
			</div>
			<div class="col-md-12 col-sm-6">
				<div class="service-box wow zoomIn" data-wow-duration="1.5s" data-wow-delay="0.1s">
						<h3>Introduction</h3>
							<div class="lead">
								<p class="text-left"><% out.print(aIntro); %></p>
							</div>
						<hr><h3>Information</h3>
							<div class="lead">
								<p class="text-left"><% out.print(aMain); %></p>
							</div>
						<hr>
						<%
						if(aSyntax!=null){
							out.print("<div class=\"lead service-box outbox\">");
							out.print("<p class=\"text-center\">"+(aSyntax)+"</p>");
							out.print("</div>");
						}
						if(aEg!=null){
							out.print("<div class=\"lead service-box outbox\">");
							out.print("<p class=\"text-center\">"+(aEg)+"</p>");
							out.print("</div>");
						}
						if(aOut!=null){
							out.print("<div class=\"lead service-box outbox\">");
							out.print("<p class=\"text-center\">"+(aOut)+"</p>");
							out.print("</div>");
						} 
						%>							
				</div>
				<a href="LRNC.jsp?n=<%out.print(cname); %>" class="btn btn-default btn-lg wow fadeInLeft" role="button">All topics</a>
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