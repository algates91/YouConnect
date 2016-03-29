<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE HTML>
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
						<span class="avatar"><a href="homePageRedirect"><img src="resources/images/profilePicture.png" alt="" /></a></span>
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

							<h2>Details submitted by you: </h2>
	
							${count}

					</section>

				<!-- Footer -->
					<footer id="footer">
						<p>&copy; Untitled. All rights reserved. Design: <a href="http://templated.co">TEMPLATED</a>. Demo Images: <a href="http://unsplash.com">Unsplash</a>.</p>
					</footer>

			</div>

		<!-- Scripts -->
			<script src="resources/js/jquery.min.js"></script>
			<script src="resources/js/jquery.poptrox.min.js"></script>
			<script src="resources/js/skel.min.js"></script>
			<script src="resources/js/main.js"></script>

	</body>
</html>