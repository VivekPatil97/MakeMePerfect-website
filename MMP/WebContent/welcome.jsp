
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
	<!-- Meta, title, CSS, favicons, etc. -->
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="description" content="">
	<meta name="author" content="">
	<title>welcome</title>
	
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
<%	if(session.getAttribute("username")!=null){
	response.sendRedirect("index.jsp");
}
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
		<a href="#hero">Home</a>
		</li>
		<li>
		<a href="#features">Features</a>
		</li>
		<li>
		<a href="#courses">Courses</a>
		</li>
		<li>
		<a href="login.jsp">LOGIN</a>
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
					Take great online courses from any where in the world
				</p>
				<p>
					<a href="register.jsp" class="btn btn-default btn-lg wow fadeInLeft" role="button">JOIN FOR FREE</a>
					<a href="login.jsp" class="btn btn-default btn-lg wow fadeInLeft" role="button">Login</a>
				</p>
				
			</div>
		</div>
		<div class="col-md-5">
                    <div class="herotext">
                        <p class="lead bottom0 wow bounceInUp">
                            Learning Online Becomes Easier
                        </p>
                        <p class="lead bottom0 wow bounceInUp">
                           Learn to code for free.
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
<!-- Text Carousel
	================================================== -->
<section id="slider" class="parallax section" style="background-image: url(assets/img/bg-3.jpg);">
<div class="wrapsection">
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<div id="Carousel" class="carousel slide">
					<ol class="carousel-indicators">
						<li data-target="#Carousel" data-slide-to="0" class="active"></li>
						<li data-target="#Carousel" data-slide-to="1"></li>
						<li data-target="#Carousel" data-slide-to="2"></li>
					</ol>
					<div class="carousel-inner">
						<div class="item active">
							<blockquote>
								<p class="lead">
									You have not lived today until you have done something for someone who can never repay you.
								</p>
								<small>John Bunyan, Marathon</small>
							</blockquote>
						</div>
						<div class="item">
							<blockquote>
								<p class="lead">
									The simplest acts of kindness are by far more powerful then a thousand heads bowing in prayer.
								</p>
								<small>Mahatma Gandhi</small>
							</blockquote>
						</div>
						<div class="item">
							<blockquote>
								<p class="lead">
									There is no exercise better for the heart than reaching down and lifting people up.
								</p>
								<small>John Holmes, Organizer</small>
							</blockquote>
						</div>
					</div>
					<a class="left carousel-control" href="#Carousel" data-slide="prev">
					<span class="glyphicon glyphicon-chevron-left"></span>
					</a>
					<a class="right carousel-control" href="#Carousel" data-slide="next">
					<span class="glyphicon glyphicon-chevron-right"></span>
					</a>
				</div>
			</div>
		</div>
	</div>
</div>
</section>
<!-- courses ================================================== -->
<section id="courses" class="parallax section">
<div class="wrapsection">
	<div class="parallax-overlay" style="background-color:#01b0d1;"></div>
	<div class="container">
		<div class="row">
			<div class="col-md-12" data-wow-duration="1.5s" data-wow-delay="0.1s">
				<div class="maintitle">
					<h3 class="section-title">Learn powerful skills</h3>
					<p class="lead wow flipInX">
						
					</p>
				</div>
			</div>

			<div class="col-md-4 wow zoomIn">
                            <img src="assets/img/cpp1.png" alt="c++ image" class="image-course image-responsive ">
					<div class="description">                           
						<span class="caption">This is <b>C++</b></span>
						<span class="camera"><i class="fa fa-heart"></i></span> 						
						<div class="clearfix"></div>
					</div>							
			</div>
			<div class="col-md-4 wow zoomIn">
                            <img src="assets/img/java1.png" alt="java image" class="image-course image-responsive">
					<div class="description">
						<span class="caption">This is <b>JAVA</b></span>
						<span class="camera"><i class="fa fa-heart"></i></span>						
						<div class="clearfix"></div>
					</div>				
			</div>
			<div class="col-md-4 wow zoomIn">
                            <img src="assets/img/php.png" alt="php image" class="image-course image-responsive">
					<div class="description">
						<span class="caption">This is <b>PHP</b></span> 
						<span class="camera"><i class="fa fa-heart"></i></span>
						<div class="clearfix"></div>
					</div>
				
			</div>
			<div class="col-md-4 wow zoomIn">
                            <img src="assets/img/js.png" alt=" javascript image" class="image-course image-responsive">
					<div class="description">
						<span class="caption">This is <b> JavaScript</b></span> 
						<span class="camera"><i class="fa fa-heart"></i></span>
						<div class="clearfix"></div>
					</div>
				
			</div>
			<div class="col-md-4 wow zoomIn">
                            <img src="assets/img/cs.png" alt="c sharp image" class="image-course image-courseimage-responsive">
					<div class="description">
						<span class="caption">This is <b>C#</b></span> 
						<span class="camera"><i class="fa fa-heart"></i></span>
						<div class="clearfix"></div>
					</div>
				
			</div>
			<div class="col-md-4 wow zoomIn">
                            <img src="assets/img/Py.png" alt="python image" class="image-course image-responsive">
					<div class="description">
						<span class="caption">This is <b>python</b></span> 
						<span class="camera"><i class="fa fa-heart"></i></span>
						<div class="clearfix"></div>
					</div>
			</div>
			<div class="col-md-12 sol-sm-12">
				<div class="maintitle">
				<p class="lead">
				<div class="clearfix"></div>
						<p class="caption">and much more cources. Join our community today!
					</p>
						<a  href="login.jsp" class=" maintitle btn btn-default btn-lg wow flipInX" role="button">Start LEARNING(it's free) </a>
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