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
			<br>
			You are inviting a member outside UNCC for contributing to this thread.<br>
			<form name="reply" method="post" action="/YouConnect-SocialNetworking/MakeURLforMember">
				Email ID: <input type="text" name="MemberemailId"/><br>
				<input type="submit" name="send" value="send"/>
			</form>
			</div>

		

	</body>
</html>