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
						<span class="avatar"><a href="homePageRedirect"><img src="resources/images/profilePicture.png" alt="" /></a></span>
						<ul class="icons">
							<li><a href="/YouConnect-SocialNetworking/editprofile.html" class="fa fa-pencil-square-o"><span class="label"> View/Edit Profile</span></a></li>
							<li><a href="#" class="fa fa-camera-retro"><span class="label"> Edit Photo</span></a></li>
							<li><a href="/YouConnect-SocialNetworking/logOut" class="fa fa-sign-out"><span class="label"> Sign Out</span></a></li>
						</ul>
						</header>

				<!-- Main -->
					<section id="main">
					<form name="forum" method="post" action="/YouConnect-SocialNetworking/ForumSubmit">
						Title: <input type="text" name="title" />
						<br>
						<br>
						Content:<textarea name="content"rows="10" cols="10">
						</textarea>
						<br>
						<br>
						<input type="submit" value="Submit" />	
					</form>
					<br>
					<br>
					<table style="width:100%" border=yes>
				<tr>	
					<td><h2>Topic</h2></td>
					<td><h2>Comments</h2></td>
				<!-- 	<td><h2>Title</h2></td>
					<td><h2>Author</h2></td>
					<td><h2>Quantity</h2></td>
					<td><h2>Price</h2></td>
					<td><h2>Year of Publication</h2></td>
					<td><h2>BuyThis</h2></td> -->
				</tr>
				<c:forEach items="${forumList}" var="map">
			    <tr>	
			        <td><a href="/YouConnect-SocialNetworking/viewForum?forumId=${map.getForumId()}&ownerEmailId=${map.getEmailId()}">${map.getTitle()}</a></td>
					<td><h3>${map.getCommentCount()}</h3></td>
					 
			        
			         <tr>
				</c:forEach>
				</table>
					</section>

			<footer class="global-footer" role="contentinfo">
			  <div class="container">
			    <img id="corporate-logo" src="https://epic.uncc.edu/sites/epic.uncc.edu/files/media/UNCC.jpg" alt="UNCC" width="1000" height="100">
			  </div>
			</footer>

			</div>

		

	</body>
</html>