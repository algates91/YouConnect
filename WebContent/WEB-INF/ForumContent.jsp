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
		<script language="javascript" type="text/javascript">

/* function popitup(url) {
	newwindow=window.open(url,'name','height=300,width=550');
	if (window.focus) {newwindow.focus()}
	return false;
} */


</script>
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
				
					<br>
					<br>
					<table style="width:100%" border=yes>
				<tr>	
					<td>Topic:     ${title}</td>
					
				</tr>
				<tr><td>Content:<br>
					${content} </td></tr>
				</table>
				
				<br>
				<br>
			<h2>Replies:</h2>			
				<c:forEach items="${forumLists}" var="map">
				<c:if test="${map.getFriendName() !=null && !map.getFriendName().isEmpty()}">	         
				<table>
				<tr>
					<td><h5>${map.getFriendName()} </h5> tells...</td>
					 
			        
			         </tr>
				<tr>
					<td><h4>${map.getComments()}</h4></td>
					 
			        
			         </tr>
			         <br/>
			         <br/>
			   
			     </table>
			     </c:if>
				</c:forEach>
				<br>
				<form name="reply" method="post" action="/YouConnect-SocialNetworking/SubmitForumReply">
						
						Reply:<textarea name="comments"rows="5" cols="5">
						</textarea>
						<br>
						<br>
						<input type="submit" value="Submit" />	
						<a href="/YouConnect-SocialNetworking/popupex.html" onclick="javascript:void window.open('/YouConnect-SocialNetworking/popupex.html','1461642804314','width=550,height=300,toolbar=0,menubar=0,location=0,status=1,scrollbars=1,resizable=1,left=0,top=0');return false;">Invite a Member outside UNCC network</a>
					</form>
					
				
					</section>

			<footer class="global-footer" role="contentinfo">
			  <div class="container">
			    <img id="corporate-logo" src="https://epic.uncc.edu/sites/epic.uncc.edu/files/media/UNCC.jpg" alt="UNCC" width="1000" height="100">
			  </div>
			</footer>

			</div>

		

	</body>
</html>