<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<% response.setHeader("Cache-Control", "no-cache,no-strore,must-revalidate");
response.setHeader("Pragma","no-cache");
response.setHeader("Expires","0"); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<%
String error=String.valueOf(session.getAttribute("errmsg"));
%>
<%
String name=null;
if(session.getAttribute("Ausername")==null){
	response.sendRedirect("Adminlogin.jsp");
}
else{
	name=String.valueOf(session.getAttribute("Aname"));
}%>
	<!-- Meta, title, CSS, favicons, etc. -->
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="description" content="">
	<meta name="author" content="">
	<title>admin</title>
	
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
		<li>
		<a href="users.jsp">users</a>
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
				<%out.print(name);%> you can add,remove ,update
				</p>
			</div>
		</div>
	</div>
</div>
</section>
<section id="insert" class="parallax section">
<div class="wrapsection">
	<div class="parallax-overlay" style="background-color: #01b0d1;opacity:1;"></div>
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<!-- Title -->
				<div class="maintitle">
					<h3 class="section-title"><strong>insert<span class="lighter">data</span></strong></h3>
					<p class="lead">into tables      
					</p>
				</div>
			</div>
			<div class="col-md-12 col-sm-6">
				<div class="service-box wow zoomIn" data-wow-duration="1.5s" data-wow-delay="0.1s">
						<h3>add record to article table</h3>
				<form  id="login" method="post" action="ArtInsert" class="text-left">
					<fieldset>
					<div id="error" class="error"><p class="contactalert">
						 Something went wrong ${error}</p>
					</div>
						<div class="row">
							<div class="col-md-5 wow fadeIn animated" data-wow-delay="0.3s" data-wow-duration="2s">
								
								<label for="cour">select course<span class="required">*</span></label>
								<select name="cour">
								<option>c++</option>
								<option>Java</option>
								<option>Javascript</option>
								<option>phython</option>
								<option>C#</option>
								</select>
								
								<!-- <label for="cname">course name<span class="required">*</span></label>
								<input type="text" name="cname" id="cname" size="30" value="" placeholder="article related to topic" required/>-->
							</div>
							<div class="col-md-5 wow fadeIn animated" data-wow-delay="0.3s" data-wow-duration="2s">
								<label for="heading">heading<span class="required">*</span></label>
								<input type="text" name="heading" id="heading" size="100" value="" required/>
							</div>
						</div>
						<div class="row">
							<div class="col-md-5 wow fadeIn animated" data-wow-delay="0.3s" data-wow-duration="2s">
								<label for="descrip">description<span class="required">*</span></label>
								<input type="text" name="descrip" id="descrip" size="500" value="" required/>
							</div>		
						</div>
						<div class="row">
							<div class="col-md-5 wow fadeIn animated animated" data-wow-delay="0.1s" data-wow-duration="2s">
								<label for="main">main information<span class="required">*</span></label>
								<input type="text" name="main" id="main" size="1000" value="" required/>
							</div>
							<div class="col-md-5 wow fadeIn animated animated" data-wow-delay="0.1s" data-wow-duration="2s">
								<label for="syntax">syntax of article if any<span class="required">*</span></label>
								<input type="text" name="syntax" id="syntax" size="300" value="" required/>
							</div>
							<div class="col-md-5 wow fadeIn animated animated" data-wow-delay="0.1s" data-wow-duration="2s">
								<label for="eg">example<span class="required">*</span></label>
								<input type="text" name="eg" id="eg" size="500" value="" required/>
							</div>
							<div class="col-md-5 wow fadeIn animated animated" data-wow-delay="0.1s" data-wow-duration="2s">
								<label for="output">output of example<span class="required">*</span></label>
								<input type="Text" name=""output"" id=""output"" size="500" value="" required/>
							</div>
						</div>
						<div class="wow fadeIn animated" data-wow-delay="0.3" data-wow-duration="1.5s">
							<input id="submit" type="submit" name="submit" value="insert"/>
						</div>
					</fieldset>
				</form>
				</div>
			</div>
			<div class="col-md-12 col-sm-6">
				<div class="service-box wow zoomIn" data-wow-duration="1.5s" data-wow-delay="0.1s">
						<h3>add questions related to c++</h3>
				<form  id="login" method="post" action="Addquestion" class="text-left">
					<fieldset>
					<div id="error" class="error"><p class="contactalert">
						 Something went wrong ${error}</p>
					</div>
						<div class="row">
							<div class="col-md-5 wow fadeIn animated" data-wow-delay="0.3s" data-wow-duration="2s">								
								<label for="cour">select course<span class="required">*</span></label>
								<select name="cour">
								<option>c++</option>
								<option>Java</option>
								<option>PHP</option>
								<option>Javascript</option>
								<option>phython</option>
								<option>C sharp</option>
								</select>
							</div>
						</div>
						<div class="row">
							<div class="col-md-5 wow fadeIn animated" data-wow-delay="0.3s" data-wow-duration="2s">
								<label for="question">Question<span class="required">*</span></label>
								<input type="text" name="question" id="question" size="500" value="" required/>
							</div>		
						</div>
						<div class="row">
							<div class="col-md-5 wow fadeIn animated animated" data-wow-delay="0.1s" data-wow-duration="2s">
								<label for="optionA">option A<span class="required">*</span></label>
								<input type="text" name="optionA" id="optionA" size="1000" value="" required/>
							</div>
							<div class="col-md-5 wow fadeIn animated animated" data-wow-delay="0.1s" data-wow-duration="2s">
								<label for="optionB">option B<span class="required">*</span></label>
								<input type="text" name="optionB" id="optionB" size="300" value="" required/>
							</div>
							<div class="col-md-5 wow fadeIn animated animated" data-wow-delay="0.1s" data-wow-duration="2s">
								<label for="optionC">option C<span class="required">*</span></label>
								<input type="text" name="optionC" id="optionC" size="500" value="" required/>
							</div>
							<div class="col-md-5 wow fadeIn animated animated" data-wow-delay="0.1s" data-wow-duration="2s">
								<label for="optionD">option D<span class="required">*</span></label>
								<input type="Text" name="optionD" id="optionD" size="500" value="" required/>
							</div>
							<div class="col-md-5 wow fadeIn animated" data-wow-delay="0.3s" data-wow-duration="2s">
							<label for="answer">Answer<span class="required">*</span></label>
								<select name="answer">
								<option>A</option>
								<option>B</option>
								<option>C</option>
								<option>D</option>
								</select>
							</div>
						</div>
						<div class="wow fadeIn animated" data-wow-delay="0.3" data-wow-duration="1.5s">
							<input id="submit" type="submit" name="submit" value="insert"/>
						</div>
					</fieldset>
				</form>
				</div>
			</div>
			<div class="col-md-12 col-sm-6">
				<div class="service-box wow zoomIn" data-wow-duration="1.5s" data-wow-delay="0.1s">
						<h3>add downloadable files</h3>
				<form  id="login" method="post" action="AddDownload" entype="multiport/form-data" class="text-left">
					<fieldset>
					<div id="error" class="error"><p class="contactalert">
						 Something went wrong ${error}</p>
					</div>
						<div class="row">
							<div class="col-md-5 wow fadeIn animated" data-wow-delay="0.3s" data-wow-duration="2s">								
								<label for="cour">file related to course<span class="required">*</span></label>
								<select name="cour">
								<option>c++</option>
								<option>Java</option>
								<option>PHP</option>
								<option>Javascript</option>
								<option>phython</option>
								<option>C sharp</option>
								</select>
							</div>
						</div>
						<div class="row">
							<div class="col-md-5 wow fadeIn animated" data-wow-delay="0.3s" data-wow-duration="2s">
								<label for="file">select file<span class="required">*</span></label>
								<input type="file" name="file" id="file" equired/>
							</div>		
						</div>
						<div class="row">
							<div class="col-md-5 wow fadeIn animated" data-wow-delay="0.3s" data-wow-duration="2s">								
								<label for="type">select type of file<span class="required">*</span></label>
								<select name="type">
								<option>PDF</option>
								<option>DOCX</option>
								<option>IMAGE</option>
								</select>
							</div>

							<div class="col-md-5 wow fadeIn animated animated" data-wow-delay="0.1s" data-wow-duration="2s">
								<label for="description">file description<span class="required">*</span></label>
								<input type="text" name="description" id="description" required/>
							</div>
						</div>
						<div class="wow fadeIn animated" data-wow-delay="0.3" data-wow-duration="1.5s">
							<input id="submit" type="submit" name="submit" value="insert"/>
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
<jsp:include page="footerA.html" />
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