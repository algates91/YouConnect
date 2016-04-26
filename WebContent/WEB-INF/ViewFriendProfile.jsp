<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd"><html>
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
						<span class="avatar"><img src="resources/images/profilePicture.png" alt="" /></span>
						<ul class="icons">
							
						</ul>
						<form method="get" action="/YouConnect-SocialNetworking/homePageRedirect">
			   				<input type="submit" value="Home" />
			   			</form>
						<c:if test="${acctDesc.getSelfFlag()== 1 and acctDesc.getFriendsFlag()  ==0}">
				
			   			<form method="get" action="#">
			   				<input type="submit" value="Request Pending" disabled/>
			   			</form>
			         </c:if>
						<c:if test="${acctDesc.getSelfFlag()== 1 and acctDesc.getFriendsFlag()  ==1}">
				
			   			<form method="get" action="/YouConnect-SocialNetworking/unfriend">
			   				<input type="submit" value="UnFriends" />
			   			</form>
			         </c:if>
			         <c:if test="${acctDesc.getSelfFlag()== 0 and acctDesc.getFriendsFlag()  ==1}">
				
			   			<form method="get" action="/YouConnect-SocialNetworking/accept">
			   				<input type="submit" value="Accept" />
			   			</form>
			   			<form method="get" action="/YouConnect-SocialNetworking/reject">
			   				<input type="submit" value="Reject" />
			   			</form>
			         </c:if>							
						<c:if test="${acctDesc.getSelfFlag()== 0 and acctDesc.getFriendsFlag()  ==0}">
				
			   			<form method="get" action="/YouConnect-SocialNetworking/addasfriend">
			   				<input type="submit" value="Add as a Friend" />
			   			</form>
			   			
			         </c:if>	
					</header>
	<form accept-charset="UTF-8" >
				<br>
  				<br>
 				<div class="row">
      				<label for="user_last_name">Email Id* :</label><h2> ${member.emailId }</h2>
      				<span class="yj-error-container"></span>
    			</div>
				<br>
				<div class="row">
      				<label for="user_first_name">First Name* :</label> <h2>${member.memberFirstName }</h2>
      				<span class="yj-error-container"></span>
	  			</div>
	  			<br>
	  			<div class="row">
     				<label for="user_last_name">Last Name*:</label> <h2>${member.memberLastName }</h2>
      				<span class="yj-error-container"></span>
    			</div>
				<br>
    			<div class="row">
      				<label for="user_job_title">Gender:</label> <h2>${member.memberGender }</h2>
      				<span class="yj-error-container"></span>
    			</div>
				<br>
	  			<div class="row">
      				<label for="user_job_title">Date of Birth:</label> <h2>${member.memberDOB }</h2>
      				<span class="yj-error-container"></span>
    			</div>
				<br>
				<div class="row">
      				<label for="user_job_title">Phone Number:</label><h2> ${member.memberPhoneNumber }</h2>
      				<span class="yj-error-container"></span>
    			</div>
				<br>
				<br>
    		</form>
				<!-- Main -->

			</div>

		<!-- Scripts -->
			<script src="resources/js/jquery.min.js"></script>
			<script src="resources/js/jquery.poptrox.min.js"></script>
			<script src="resources/js/skel.min.js"></script>
			<script src="resources/js/main.js"></script>

	</body>
</html>