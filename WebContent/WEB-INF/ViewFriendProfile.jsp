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
						<span class="avatar"><img src="resources/images/profilePicture.png" alt="" /></span>
						<ul class="icons">
							
						</ul>
												
						${displayContent}
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