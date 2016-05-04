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
							<li><a href="/YouConnect-SocialNetworking/editprofile.html" class="fa fa-pencil-square-o"><span class="label"> View/Edit Profile</span></a></li>
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

<!-- 						<div class="tabs">
    <ul class="tab-links">
        <li class="active"><a href="#tab1">Tab #1</a></li>
        <li><a href="#tab2">Tab #2</a></li>
        <li><a href="#tab3">Tab #3</a></li>
        <li><a href="#tab4">Tab #4</a></li>
    </ul>
 
    <div class="tab-content">
        <div id="tab1" class="tab active">
            <p>Tab #1 content goes here!</p>
            <p>Donec pulvinar neque sed semper lacinia. Curabitur lacinia ullamcorper nibh; quis imperdiet velit eleifend ac. Donec blandit mauris eget aliquet lacinia! Donec pulvinar massa interdum risus ornare mollis.</p>
        </div>
 
        <div id="tab2" class="tab">
            <p>Tab #2 content goes here!</p>
            <p>Donec pulvinar neque sed semper lacinia. Curabitur lacinia ullamcorper nibh; quis imperdiet velit eleifend ac. Donec blandit mauris eget aliquet lacinia! Donec pulvinar massa interdum risus ornare mollis. In hac habitasse platea dictumst. Ut euismod tempus hendrerit. Morbi ut adipiscing nisi. Etiam rutrum sodales gravida! Aliquam tellus orci, iaculis vel.</p>
        </div>
 
        <div id="tab3" class="tab">
            <p>Tab #3 content goes here!</p>
            <p>Donec pulvinar neque sed semper lacinia. Curabitur lacinia ullamcorper nibh; quis imperdiet velit eleifend ac. Donec blandit mauris eget aliquet lacinia! Donec pulvinar massa interdum ri.</p>
        </div>
 
        <div id="tab4" class="tab">
            <p>Tab #4 content goes here!</p>
            <p>Donec pulvinar neque sed semper lacinia. Curabitur lacinia ullamcorper nibh; quis imperdiet velit eleifend ac. Donec blandit mauris eget aliquet lacinia! Donec pulvinar massa interdum risus ornare mollis. In hac habitasse platea dictumst. Ut euismod tempus hendrerit. Morbi ut adipiscing nisi. Etiam rutrum sodales gravida! Aliquam tellus orci, iaculis vel.</p>
        </div>
    </div>
</div> -->
	<center><h2>FriendsList</h2></center>
				<table style="width:100%" border=yes>
			<c:forEach items="${al}" var="map" varStatus="count">
			
				<c:if test="${map.getSelfFlag()== 1 and map.getFriendsFlag()  ==1}">
				
			    <tr>	
			        <td><a href="/YouConnect-SocialNetworking/viewProfile?emailId=${map.getFriendId()}">${map.getLastName()}, ${map.getFirstName()}</a></td>
					<td><h3>${map.getEmailId()}</h3></td>
					 
			        
			         <tr>
			         </c:if>
				</c:forEach>
				
				</table>
					<center><h2>Request Pending</h2></center>
				<table style="width:100%" border=yes>
			<c:forEach items="${al}" var="map" varStatus="count">
				<c:if test="${map.getSelfFlag()== 1 and map.getFriendsFlag()  ==0}">
				
			    <tr>	
			        <td><a href="/YouConnect-SocialNetworking/viewProfile?emailId=${map.getFriendId()}">${map.getLastName()}, ${map.getFirstName()}</a></td>
					<td><h3>${map.getEmailId()}</h3></td>
					 
			        
			         <tr>
			         </c:if>
				</c:forEach>
				
				</table>
				<center><h2>Awaiting Response</h2></center>
		<table style="width:100%" border=yes>
			<c:forEach items="${al}" var="map" varStatus="count">
				<c:if test="${map.getSelfFlag()== 0 and map.getFriendsFlag()  ==1}">
				
			    <tr>	
			        <td><a href="/YouConnect-SocialNetworking/viewProfile?emailId=${map.getFriendId()}">${map.getLastName()}, ${map.getFirstName()}</a></td>
					<td><h3>${map.getEmailId()}</h3></td>
					 
			        
			         <tr>
			         </c:if>
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