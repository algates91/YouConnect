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
						<span class="avatar"><a href="homePageRedirect"><img src="/YouConnect-SocialNetworking/getProfilePic" alt="" /></a></span>
						<ul class="icons">
							<li><a href="/YouConnect-SocialNetworking/editprofile.html" class="fa fa-pencil-square-o"><span class="label"> Edit Profile</span></a></li>
							<li><a href="#" class="fa fa-camera-retro"><span class="label"> Edit Photo</span></a></li>
							<li><a href="#" class="fa fa-sign-out"><span class="label"> Sign Out</span></a></li>
						</ul>
					</header>


	<form accept-charset="UTF-8" action="/YouConnect-SocialNetworking/updateForm.html" method="post">
				<br>
  				<br>
 				<div class="row">
      				<label for="user_last_name">Email Id*</label><br>
      				<input aria-required="true" class="yj-validate last-name required wider pw-validate" id="emailId" name="emailId" size="30" type="text"   readonly/>
      				<span class="yj-error-container"></span>
    			</div>
				<br>
				<div class="row">
      				<label for="user_first_name">First Name*</label><br>
      				<input aria-required="true" class="yj-validate first-name required initial-focus wider" id="memberFirstName" name="memberFirstName" size="30" type="text" readonly/>
      				<span class="yj-error-container"></span>
	  			</div>
	  			<br>
	  			<div class="row">
     				<label for="user_last_name">Last Name*</label><br>
      				<input aria-required="true" class="yj-validate last-name required wider pw-validate" id="memberLastName" name="memberLastName" size="30" type="text" readonly/>
      				<span class="yj-error-container"></span>
    			</div>
				<br>
    			<div class="row">
      				<label for="user_job_title">Gender</label><br>
      				<input autocomplete="off" class="job-title wider pw-validate" id="memberGender" name="memberGender" size="30" type="text" readonly/>
      				<span class="yj-error-container"></span>
    			</div>
				<br>
	  			<div class="row">
      				<label for="user_job_title">Date of Birth</label><br>
	  				<input type="text" name="memberDOB" id="datepicker" readonly/>
      				<span class="yj-error-container"></span>
    			</div>
				<br>
				<div class="row">
      				<label for="user_job_title">Phone Number</label><br>
      				<input autocomplete="off" class="job-title wider pw-validate" id="memberPhoneNumber" name="memberPhoneNumber" size="30" type="text" readonly/>
      				<span class="yj-error-container"></span>
    			</div>
				<br>
				<br>
    		</form>
				<!-- Main -->
					<section id="main">

						<!-- Thumbnails -->
							<section class="thumbnails">
							
								<div>
									<a href="/YouConnect-SocialNetworking/home.html">
										<img src="resources/images/groups.jpg" alt="" />
										<h3>Groups</h3>
									</a>
									<a href="resources/images/fulls/03.jpg">
										<img src="resources/images/friends.jpg" alt="" />
										<h3>Friends</h3>
									</a>
								</div>
								<div></div>
								<div>
									<a href="resources/images/fulls/02.jpg">
										<img src="resources/images/forums.jpg" alt="" />
										<h3>Forums</h3>
									</a>
									<a href="resources/images/fulls/04.jpg">
										<img src="resources/images/documents.jpg" alt="" />
										<h3>Documents</h3>
									</a>
								</div>
							</section>

					</section>

			</div>

		<!-- Scripts -->
			<script src="resources/js/jquery.min.js"></script>
			<script src="resources/js/jquery.poptrox.min.js"></script>
			<script src="resources/js/skel.min.js"></script>
			<script src="resources/js/main.js"></script>

	</body>
</html>