<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<title>YouConnect</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		<link rel="stylesheet" href="resources/css/main.css" />
	</head>
	<body>

		<!-- Wrapper -->
			<div id="wrapper">

				<!-- Header -->
					<header id="header">
						<span class="avatar"><a href="homePageRedirect"><img src="/YouConnect-SocialNetworking/getProfilePic" alt="" /></a></span>
						<ul class="icons">
							<li><a href="/editprofile.html" class="fa fa-pencil-square-o"><span class="label"> View/Edit Profile</span></a></li>
							<li><a href="#" class="fa fa-camera-retro"><span class="label"> Edit Photo</span></a></li>
							<li><a href="#" class="fa fa-sign-out"><span class="label"> Sign Out</span></a></li>
						</ul>
						<form method="get" action="/YouConnect-SocialNetworking/results.html">
							<div>
								<input type="text" name="searchstring"/>
								<br/>
								<input type="submit" value="Search" />
							</div>
						</form>
					</header>

				<!-- Main -->
					<section id="main">

							<h2>YouConnect members list </h2>
	
								<table style="width:100%" border=yes>
				<tr>	
					<td><h2>Name</h2></td>
					<td><h2>EmailId</h2></td>
				<!-- 	<td><h2>Title</h2></td>
					<td><h2>Author</h2></td>
					<td><h2>Quantity</h2></td>
					<td><h2>Price</h2></td>
					<td><h2>Year of Publication</h2></td>
					<td><h2>BuyThis</h2></td> -->
				</tr>
				<c:forEach items="${al}" var="map">
			    <tr>	
			        <td><a href="/YouConnect-SocialNetworking/viewProfile?emailId=${map.getEmailId()}">${map.getMemberLastName()}, ${map.getmemberFirstName()}</a></td>
					<td><h3>${map.getEmailId()}</h3></td>
					 
			        
			         <tr>
				</c:forEach>
				</table>

					</section>

			

			</div>

		<!-- Scripts -->
			<script src="resources/js/jquery.min.js"></script>
			<script src="resources/js/jquery.poptrox.min.js"></script>
			<script src="resources/js/skel.min.js"></script>
			<script src="resources/js/main.js"></script>

	</body>
</html>