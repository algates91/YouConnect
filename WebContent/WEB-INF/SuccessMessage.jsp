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
		
		<script>
		window.onunload = refreshParent;
	    function refreshParent() {
	        window.opener.location.reload();
	    }
		function loadImage(){
			
			self.close();
		}
		</script>

	</head>
	<body>

		<!-- Wrapper -->
			<div id="wrapper">
			
		Image uploaded successfully. Please close this window.
		    
		    <input type='submit' value='Close' onclick="loadImage()">
					</div>

		

	</body>
</html>