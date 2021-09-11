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
String name=null;
String[] Bid= new String[20];
String[] title= new String[20];
String[] intro= new String[20];
String[] descrip= new String[20];
String[] createdBy= new String[20];
String[] regtime= new String[20];
String[] C_id= new String[200];
String[] C_pid= new String[200];
String[] comments= new String[200];
String[] postedBy= new String[200];
int i=0,j=0,k=0;
if(session.getAttribute("username")==null){
	response.sendRedirect("login.jsp");
}
else{
	name=String.valueOf(session.getAttribute("name"));
	Connection conn;
	conn=DBCon.db();
	String n=null;

	try{           
			conn=DBCon.db(); 
	       PreparedStatement pst = conn.prepareStatement("Select * from blog");
	       PreparedStatement pst1 = conn.prepareStatement("Select * from comments");	      
	       ResultSet rs = pst.executeQuery();
	       ResultSet rs1 = pst1.executeQuery();
	       while(rs.next()&&i<20){
	    	   Bid[i]=rs.getString("id");
	    	   title[i]=rs.getString("title");
	    	   intro[i]=rs.getString("introduction");
	    	   descrip[i]=rs.getString("description");
	    	   createdBy[i]=rs.getString("createdBy");
	    	   regtime[i]=rs.getString("postTime");
	    	   i++;j++;
	       }
	       
	       i=0;
	       while(rs1.next()&&(i<100)){
	    	   C_id[i]=rs1.getString("id");
	    	   C_pid[i]=rs1.getString("pid");
	    	   comments[i]=rs1.getString("comment");
	    	   postedBy[i]=rs1.getString("postedBy");
	    	   i++;k++;
	       }
	      
	   }
	   catch(Exception e){
		   e.printStackTrace();
	   }
	 conn.close();
}%>
	<!-- Meta, title, CSS, favicons, etc. -->
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="description" content="">
	<meta name="author" content="">
	<title>Blogs</title>
	
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
		<a href="course.jsp">Courses</a>
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
				<h1 class="wow bounceInDown" data-wow-duration="1s" data-wow-delay="0.1s">MAKE ME <span class="lighter">PERFECT</span></h1>
				<p class="lead wow zoomIn" data-wow-duration="2s" data-wow-delay="0.5s">
				${name} post here that is in your mind!
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
					<h3 class="section-title"><strong>Posted by<span class="lighter"> Others</span></strong></h3>
					<p class="lead">FOR YOU                  
					</p>
				</div>
			</div>
			<%
			i=0;int c=0,s;
			while(j>0){
			out.print("<div class=\"col-md-12 col-sm-6\"><div class=\"service-box wow zoomIn\" data-wow-duration=\"1.5s\" data-wow-delay=\"0.1s\">");						
			out.print("<div class=\"row\"><div class=\"col-md-12\">");								
			out.print("<h3>"+title[i]+"</h3></div>");
			out.print("<div class=\"col-md-12\"><p class=\"text-center\">"+intro[i]+"</p>");														
			out.print("</div><div class=\"col-md-8\"><p class=\"lead\">"+descrip[i]+"</p></div><div class=\"col-md-2\"><p class=\"lead\">posted by:"+createdBy[i]+"</p></div>");								
			out.print("<div class=\"col-md-2\"><p class=\"lead\">time:"+regtime[i]+"</p></div>");
			for(s=100;s>0;s--){
				if(c==0){out.print("<div class=\"col-md-12\"><p class=\"lead\">Comments</p></div>");c++;}
				if(Bid[i].equals(C_pid[s])){
					out.print("<div class=\"col-md-12\"><h3>"+postedBy[s]+"</h3><div class=\"outbox\"></<p class=\"lead\">"+comments[s]+"</p></div></div>");
					}		
			}
			out.print("<div class=\"col-md-12\"><h3>Add comment</h3>");
			out.print("<form id=\"login\" action=\"Postcomment\" method=\"POST\" >");
			out.print("<input type=\"text\" name=\"com\" >");
			out.print("<input type=\"hidden\" name=\"Pid\" value=\""+Bid[i]+"\" >");
			out.print("<input type=\"hidden\" name=\"name\" value=\""+name+"\">");
			out.print("<input type=\"submit\" value=\"post comment\" >");
			out.print("</form>");out.print("</div>");		
			out.print("</div>");
			out.print("</div>");
			out.print("</div>");
			j--;i++;
			}
					
					 %>
	</div>
</div>
</section>
<!-- Contact
	================================================== -->
<section id="contactarea" class="parallax section" style="background-image: url(http://themepush.com/demo/runcharity/assets/img/map.png);">
<div class="wrapsection">
	<div class="parallax-overlay" style="background-color: #1cbb9b;opacity:0.95;"></div>
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<div class="maintitle">
					<h3 class="section-title">POST HERE</h3>
					<p class="lead">
						post what is in your mind!
					</p>
				</div>
				<form id="login" action="Posts" method="post" class="text-left">
					<fieldset>
						<div class="row">
							<div class="col-md-4 wow fadeIn animated animated" data-wow-delay="0.1s" data-wow-duration="2s">
								<label for="name">Name<span class="required">*</span></label>  <% out.print(name); %>
								<input type="hidden" name="name" id="name" size="30" value="<% out.print(name); %>" required/>
							</div>
							<div class="col-md-4 wow fadeIn animated" data-wow-delay="0.3s" data-wow-duration="2s">
								<label for="title">Title<span class="required">*</span></label>
								<input type="text" name="title" id="title" size="30" value="" required/>
							</div>
							<div class="col-md-4 wow fadeIn animated" data-wow-delay="0.3s" data-wow-duration="2s">
								<label for="Introduction">Introduction</label>
								<input type="text" name="Introduction" id="Introduction" size="300" value=""/>
							</div>
						</div>
						<div class="wow fadeIn animated" data-wow-delay="0.3s" data-wow-duration="1.5" style="margin-top:15px;">
							<label for="Description">Description<span class="required">*</span></label>
							<textarea name="Description" id="Description" required></textarea>
						</div>
						<div class="wow fadeIn animated" data-wow-delay="0.3" data-wow-duration="1.5s">
							<input id="submit" type="submit" name="submit" value="POST"/>
						</div>
					</fieldset>
				</form>
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