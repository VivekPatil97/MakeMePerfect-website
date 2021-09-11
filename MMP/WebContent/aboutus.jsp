<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
	<!-- Meta, title, CSS, favicons, etc. -->
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="description" content="">
	<meta name="author" content="">
	<title>About us</title>
	
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
<%@ page import="java.io.IOException"%>
<%@ page import="java.sql.*"%>
<%@ page import="com.DBCon" %>
<%
String username=null;String email=null;
if(session.getAttribute("username")==null){
	response.sendRedirect("login.jsp");
}
else{
	String name=String.valueOf(session.getAttribute("name"));
	username=String.valueOf(session.getAttribute("username"));
}
Connection conn;
conn=DBCon.db();

PreparedStatement pst = conn.prepareStatement("Select U_email from users where U_username=? or U_email=?");
pst.setString(1, username);
pst.setString(2, username);
ResultSet rs = pst.executeQuery();
if(rs.next()){
email=rs.getString("U_email");
}
conn.close();
%>
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
		<a href="index.jsp#hero">Home</a>
		</li>
		<li>
		<a href="course.jsp#courses">Courses</a>
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
		<div class="col-md-6">
			<div class="herotext">
				<h1 class="wow bounceInDown" data-wow-duration="1s" data-wow-delay="0.1s">MAKE ME <span class="lighter">PERFECT</span></h1>
				<p class="lead wow zoomIn" data-wow-duration="2s" data-wow-delay="0.5s">
				WANT TO KNOW ABOUT US ?
				</p>		
					<UL>					
					<li><a href="#privacy"><u>Privacy Statement</u></a></li>
					<li><a href="#contactarea"><u>Contact Us</u></a></li>
					<li><a href="#faq"><u>FAQs</u></a></li>				
					</UL>						
			</div>
		</div>
		<div class="col-md-5">
                    <div class="herotext">
                        <p class="lead bottom0 wow bounceInUp">
                           This website is created by vivek patil. for any inquiry contact us.
                        </p>
                        <p class="lead bottom0 wow bounceInUp">
                          Mob no.: 9619479007</p>
                          <p class="lead bottom0 wow bounceInUp">
                          E-mail.: vivekpatil340440@gmail.com 
                        </p>
                        <p class="lead bottom0 wow bounceInUp">
                          Address: mothe bhom, Chirner, Uran,<br/> pin:400 702 ,Navi Mumbai
                        </p>                         
                    </div>
		</div>
	</div>
</div>
</section>
<!-- About
	================================================== -->
<section id="features" class="parallax section">
<div class="wrapsection">
	<div class="parallax-overlay" style="background-color: #01b0d1;opacity:1;"></div>
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<!-- Title -->
				<div class="maintitle">
					<h3 class="section-title"><strong>FEATURES<span class="lighter">INCLUDED</span></strong></h3>
					<p class="lead">
                                            
					</p>
				</div>
			</div>
			<div class="col-md-4 col-sm-6">
				<div class="service-box wow zoomIn" data-wow-duration="1.5s" data-wow-delay="0.1s">
					<img src="assets/img/book.png" alt="book image">
					<h3>AVAILABILITY<br/>ALL TOPICS</h3>
					<div class="text-left">
						<p>
							I will place all the necessary content related to particular course, including question &amp; so on.
						</p>
						<p>
							If not enough room, I will link to learn more.
						</p>
						<p>
							Yap. Really looking goody awesome!
						</p>
						<p class="text-center">
							<button type="button" class="btn btn-info btn-md"><a href="#">Learn More</a></button>
						</p>
					</div>
				</div>
			</div>
			<div class="col-md-4 col-sm-6">
				<div class="service-box wow flipInY" data-wow-duration="1.5s" data-wow-delay="0.1s">
					
					<span class="glyphicon glyphicon-tree-deciduous"></span>
					<h3>video courses</h3>
					<p>
						videos available for the related topics.
					</p>
					<button type="button" class="btn btn-info btn-md"><a href="#">Learn More</a></button>
				</div>
			</div>
			<div class="col-md-4 col-sm-6">
				<div class="service-box wow flipInY" data-wow-duration="1.5s" data-wow-delay="0.2s">
					<span class="glyphicon glyphicon-stats"></span>
					<h3>TEST YOUR KNOWLEDGE</h3>
					<p>
						test your knowledge by giving test.
					</p>
					<button type="button" class="btn btn-info btn-md"><a href="#">Learn More</a></button>
				</div>
			</div>
			<div class="col-md-4 col-sm-6">
				<div class="service-box wow flipInY" data-wow-duration="1.5s" data-wow-delay="0.3s">
					<span class="glyphicon glyphicon-heart"></span>
					<h3>ACCESS FROM ANYWHERE</h3>
					<p>
						You can access your account from anywhere ,using your account.
					</p>
					<button type="button" class="btn btn-info btn-md"><a href="#">Learn More</a></button>
				</div>
			</div>
			<div class="col-md-4 col-sm-6">
				<div class="service-box wow flipInY" data-wow-duration="1.5s" data-wow-delay="0.4s">
					<span class="glyphicon glyphicon-usd"></span>
					<h3>FREE OF COST</h3>
					<p>
						No charges required to register.
					</p>
					<button type="button" class="btn btn-info btn-md"><a href="#">Learn More</a></button>
				</div>
			</div>
		</div>
	</div>
</div>
</section>
<!--  privacy statment and terms and condition-->
<section id="privacy" class="parallax section" style="background-image: url(http://themepush.com/demo/runcharity/assets/img/map.png);">
<div class="wrapsection">
	<div class="parallax-overlay" style="background-color: #1cbb9b;opacity:0.95;"></div>
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<div class="maintitle">
					<h3 class="section-title">privacy statement | Terms and Conditions</h3>
					<p class="lead">
						MAKEMEPERFECT INC.
						Last Revised: April 11, 2018
					</p>
				</div>
				<h6 class="section-title">Our commitment to Privacy</h6>
				<p class="lead">Protecting your privacy and your information is a top priority for MAKEMEPERFECT, Inc. ("MAKEMEPERFECT"). 
				The purpose of this Privacy Policy to explain how your business data and other information that you provide to us ("Business Information") is protected,
				 what information is collected and how it is used by eLearning Industry. 
				Those Privacy Policy provisions are part of our TOS.
				</p>
				<p class="lead">
						By registering on our Website, you consent to our collection and use of your Business Information in accordance with this Privacy Policy and you are agreeing to the practices described herein. 
						We do not transfer,sell or rent your business information to third parties in any way other than what it is stated in this Privacy Policy.
				</p>	
			</div>
		</div>
	</div>
</div>
</section>

<!-- faq -->
<section id="faq" class="section">
<div class="wrapsection">
	<div class="container">
		<div class="row">
			<div class="col-md-12 sol-sm-12">
				<div class="maintitle">
					<h3 class="section-title">FREQUENTLY ASKED <span class="wow bounceInRight">QUESTIONS</span></h3>
					<p class="lead">
						Below you can find answers to some of the most frequently asked questions.
					</p>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-md-6 col-sm-12">
				<div class="faq-block wow bounceInDown" data-wow-duration="1.5s" data-wow-delay="0s">
					<div class="panel-group">
						<div class="panel panel-default">
							<div class="panel-heading">
								<h4 class="panel-title">
								<a data-toggle="collapse" data-parent="#accordion" href="#collapseOne">
								What is eLearning ? </a>
								</h4>
							</div>
							<div id="collapseOne" class="panel-collapse collapse">
								<div class="panel-body">
									 To put it simply, eLearning is electronic learning, and it typically includes a combination of electronic media and educational technology. E-learning is computer based and makes use of multimedia sources such as text, audio, animations, images and so on.
It is an intranet or an extranet web-based learning that combines information and communication systems on either a free standing or network based Learning Management System (LMS). E-Learning is synonymous with the use of ICT (information and communication technology) in education. Today, eLearning is used extensively in the education and the corporate worlds.
								</div>
							</div>
						</div>
						<div class="panel panel-default">
							<div class="panel-heading">
								<h4 class="panel-title">
								<a data-toggle="collapse" data-parent="#accordion" href="#collapseTwo">
								 Why should I consider eLearning-based training ? </a>
								</h4>
							</div>
							<div id="collapseTwo" class="panel-collapse collapse">
								<div class="panel-body">
									 E-learning is anywhere learning! Classroom training sessions require face to face interaction, which usually takes place during working hours, hindering working schedules. With eLearning, you have the freedom to to take the course at the place and time of your choice, without affecting work schedules. E-learning is pocket friendly and saves time; it saves the money spent on printed material and classroom supplies,and the best part is that it is cheaper to develop and can be used frequently.
								</div>
							</div>
						</div>
						<div class="panel panel-default">
							<div class="panel-heading">
								<h4 class="panel-title">
								<a data-toggle="collapse" data-parent="#accordion" href="#collapseThree">
								Are eLearning courses available in languages other than English ?</a>
								</h4>
							</div>
							<div id="collapseThree" class="panel-collapse collapse">
								<div class="panel-body">
									 No? there are lots of limitatiom of this system.
									 but english is international language so don't worry about that.
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="col-md-6 col-sm-12">
				<div class="faq-block wow bounceInDown" data-wow-duration="1.5s" data-wow-delay="0.1s">
					<div class="panel-group">
						<div class="panel panel-default">
							<div class="panel-heading">
								<h4 class="panel-title">
								<a data-toggle="collapse" data-parent="#accordion" href="#collapseFour">
								Can I customize eLearning courses ? </a>
								</h4>
							</div>
							<div id="collapseFour" class="panel-collapse collapse">
								<div class="panel-body">
									 N0 ! there are lots of limitatiom of this system.
								</div>
							</div>
						</div>
						<div class="panel panel-default">
							<div class="panel-heading">
								<h4 class="panel-title">
								<a data-toggle="collapse" data-parent="#accordion" href="#collapseFive">
								What are the hardware and software requirements for online training ? </a>
								</h4>
							</div>
							<div id="collapseFive" class="panel-collapse collapse">
								<div class="panel-body">
									 Well, to begin online training in your organization, you need have a platform that hosts your eLearning courses. This platform is called a Learning Management System (LMS). You also need eLearning course authoring tools, which are used to create and publish digital courses. Tools such as Articulate storyline and Adobe Captivate are SCORM compliant and can be used to develop courses that are easy to upload on LMSs.
								</div>
							</div>
						</div>
						<div class="panel panel-default">
							<div class="panel-heading">
								<h4 class="panel-title">
								<a data-toggle="collapse" data-parent="#accordion" href="#collapseSix">
								How much does an eLearning course cost? </a>
								</h4>
							</div>
							<div id="collapseSix" class="panel-collapse collapse">
								<div class="panel-body">
									There is no cost for learning in this system .you can learn for absolutly free.
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
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
					<h3 class="section-title">Get in Touch</h3>
					<p class="lead">
						If you have questions about our events, don't hesitate to send us your message. This is a real working contact form, test it!
					</p>
				</div>
				<form id="login" action="Feedback" method="post" class="text-left">
					<fieldset>
						<div class="row">
							<div class="col-md-4 wow fadeIn animated animated" data-wow-delay="0.1s" data-wow-duration="2s">
								<label for="name">Name<span class="required">*</span></label>
								<input type="text" name="name" id="name" size="30" value="${name}" required/>
							</div>
							<div class="col-md-4 wow fadeIn animated" data-wow-delay="0.3s" data-wow-duration="2s">
								<label for="email">Email<span class="required">*</span></label>
								<input type="text" name="email" id="email" size="30" value="<% out.print(email); %>" required/>
							</div>
							<div class="col-md-4 wow fadeIn animated" data-wow-delay="0.3s" data-wow-duration="2s">
								<label for="phone">Phone</label>
								<input type="text" name="phone" id="phone" size="30" value=""/>
							</div>
						</div>
						<div class="wow fadeIn animated" data-wow-delay="0.3s" data-wow-duration="1.5" style="margin-top:15px;">
							<label for="message">Message<span class="required">*</span></label>
							<textarea name="message" id="message" required></textarea>
						</div>
						<div class="wow fadeIn animated" data-wow-delay="0.3" data-wow-duration="1.5s">
							<input id="submit" type="submit" name="submit" value="Send"/>
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