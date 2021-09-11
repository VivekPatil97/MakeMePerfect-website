<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
    <% String st,st1;
    if(session.getAttribute("username")==null){
    	st="login/register";
    	st1="login.jsp";
    }
    else{
    	st=String.valueOf(session.getAttribute("username"));
    	st1=st+".jsp";
    }
    %>
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
		<a href="${st1}">${st}</a>
		</li>
	</ul>
	</nav>
</div>
</header>
