<!DOCTYPE HTML>
<html>
	<head>
		<title>YouConnect</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		<link rel="stylesheet" href="resources/css/main.css" />

<!------------ Including jQuery Date UI with CSS --------------> 
 <script src="http://code.jquery.com/ui/1.11.0/jquery-ui.js"></script> 
 <link rel="stylesheet" href="http://code.jquery.com/ui/1.11.0/themes/smoothness/jquery-ui.css"> 
 <!-- jQuery Code executes on Date Format option -----> 
 <script src="js/script.js"></script>  
  
    
   <script> 
   $(document).ready(function() { 
 // Datepicker Popups calender to Choose date. 
 $(function() { 
 $("#datepicker").datepicker(); 
 // Pass the user selected date format. 
 $("#format").change(function() { 
 $("#datepicker").datepicker("option", "dateFormat", $(this).val()); 
 }); 
 }); 
 }); 
   </script> 
  


    </head>




<body>

		<!-- Wrapper -->
			<div id="wrapper">

				<!-- Header -->
					<header id="header">
				
  <div class="container">
    <div class="row">
          <a href="/YouConnect-SocialNetworking/"><img alt="YouConnect : The UNCC social networking site" id="logo" src="http://i.imgur.com/yEPWwST.png" title="What you want to do today?" width="600" height="100" /></a>
    </div>   
</div>
  <div class="grid4">
    <div class="side-col" role="complementary">
	  <h3 role="heading" aria-level="2">Already have an account?</h3>
	  <p>
      <a href="login">Log In</a><span> or</span><br />
      <a href="/forgotten_password/new">Reset your password</a>
	  </p>
</div>

  </div>
					</header>

				<!-- Main -->
<section id="main">

<form accept-charset="UTF-8" action="/YouConnect-SocialNetworking/submitForm" method="post">

  <br>
  <br>
 <div class="row">
      <label for="user_last_name">Email Id*</label><br>
      <input aria-required="true" class="yj-validate last-name required wider pw-validate" id="emailId" name="emailId" size="30" type="text" />
      <span class="yj-error-container"></span>
    </div>
	<br>
	<div class="row">
      <label for="user_first_name">First Name*</label><br>
      <input aria-required="true" class="yj-validate first-name required initial-focus wider" id="memberFirstName" name="memberFirstName" size="30" type="text" />
      <span class="yj-error-container"></span>
	  </div>
	  <br>
	  <div class="row">
      <label for="user_last_name">Last Name*</label><br>
      <input aria-required="true" class="yj-validate last-name required wider pw-validate" id="memberLastName" name="memberLastName" size="30" type="text" />
      <span class="yj-error-container"></span>
    </div>
<br>

        <div class="row signup-password">
          <label for="user_password">Password*</label><br>
          <input aria-describedby="pw-str pw-rules" aria-required="true" autocomplete="off" class="yj-validate password wider" id="passWord" name="passWord" size="30" type="password" /><br>
		  <label for="user_password">Re-type Password*</label><br>
          <input aria-describedby="pw-str pw-rules" aria-required="true" autocomplete="off" class="yj-validate password wider" id="passWord2" name="passWord2" size="30" type="password" />
          <br />
          <div id="pw-rules" class="password-rules">
            <span class="quiet">
              <span class="yj-error-container"></span>
              Passwords must contain at least 6 characters.</span>
            <span id="password-department-validation-error" class="yj-validation-error password-department-error yj-hide">Password cannot match department name.</span>
          </div>
        </div>
	
<br>
    <div class="row">
      <label for="user_job_title">Gender</label><br>
      <input autocomplete="off" class="job-title wider pw-validate" id="memberGender" name="memberGender" size="30" type="text" />
      <span class="yj-error-container"></span>
    </div>
	<br>
	  <div class="row">
      <label for="user_job_title">Date of Birth</label><br>
	  <input type="text" name="memberDOB" id="datepicker"/>
    </div>
	<br>
	<div class="row">
      <label for="user_job_title">Phone Number</label><br>
      <input autocomplete="off" class="job-title wider pw-validate" id="memberPhoneNumber" name="memberPhoneNumber" size="30" type="text" />
      <span class="yj-error-container"></span>
    </div>
<br><br>
    <div class="row">
        <div class="action-btns">
        <button  type="submit" class="yj-btn  yj-btn-secondary "  ><span>Sign Up</span></button>
      </div>
    </div>
    

    

</form>

</section>

<footer class="global-footer" role="contentinfo">
			  <div class="container">
			    <img id="corporate-logo" src="https://epic.uncc.edu/sites/epic.uncc.edu/files/media/UNCC.jpg" alt="UNCC" width="1000" height="100">
			  </div>
			</footer>

</div>

			


		<!-- Scripts -->
			<script src="resources/js/jquery.min.js"></script>
			<script src="resources/js/jquery.poptrox.min.js"></script>
			<script src="resources/js/skel.min.js"></script>
			<script src="resources/js/main.js"></script>

	</body>
</html>
