<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
						<ul class="icons">
							<li><a href="/YouConnect-SocialNetworking/logOut" class="fa fa-sign-out"><span class="label"> Sign Out</span></a></li>
						</ul>
						<form method="get" action="/YouConnect-SocialNetworking/results.html">
							<div>
								<input type="text" name="searchstring"/>
								<br/>
								<input type="submit" value="Search" />
							</div>
						</form>
					</header>
					<form>
	<div>
	${displayContent}
	</div>
</form>

			<footer class="global-footer" role="contentinfo">
			  <div class="container">
			    <img id="corporate-logo" src="https://epic.uncc.edu/sites/epic.uncc.edu/files/media/UNCC.jpg" alt="UNCC" width="1000" height="100">
			  </div>
			</footer>

			</div>
</body>
</html>