<!DOCTYPE html>
<html lang="en">
<head>
	<title>YouConnect
	:Edit Profile</title>
	<meta name="robots" content="noindex, nofollow"/>
<!------------ Including jQuery Date UI with CSS -------------->
<link rel="stylesheet" href="resources/css/main.css" />

<script src="http://code.jquery.com/jquery-1.10.2.js"></script>
<script src="http://code.jquery.com/ui/1.11.0/jquery-ui.js"></script>
<link rel="stylesheet" href="http://code.jquery.com/ui/1.11.0/themes/smoothness/jquery-ui.css">
<!-- jQuery Code executes on Date Format option ----->
<script src="js/script.js"></script>
<link rel="stylesheet" href="resources/css/style.css">

  <script>
  
  window.onload =onLoad;
  
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
  
  
  function onLoad(){
	  
	  var emailId = ${emailId};
	  
	  alert("emailId--> "+ emailId);
	  
	  document.getElementById("emailId").value =emailId;
	  
  }
  </script>
</head>
<body>
<div class="wrapper yj-clearfix">
    <div class="global-header global-header-ps3" role="banner">
  		<div class="container">
    		<div class="row">
          		<a href="/YouConnect-SocialNetworking/welcome.html"><img alt="YouConnect : The UNCC social networking site" id="logo" src="http://i.imgur.com/yEPWwST.png" title="What are you working on?" width="600" height="100" /></a>
    		</div>    
  		</div>
	</div>
    <!-- <div class="container"> -->
		<!-- <div class="edit-profile"> -->
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
    			<div class="row">
      				<label for="user_job_title">Gender</label><br>
      				<input autocomplete="off" class="job-title wider pw-validate" id="memberGender" name="memberGender" size="30" type="text" />
      				<span class="yj-error-container"></span>
    			</div>
				<br>
	  			<div class="row">
      				<label for="user_job_title">Date of Birth</label><br>
	  				<input type="text" name="memberDOB" id="datepicker"/>
      				<span class="yj-error-container"></span>
    			</div>
				<br>
				<div class="row">
      				<label for="user_job_title">Phone Number</label><br>
      				<input autocomplete="off" class="job-title wider pw-validate" id="memberPhoneNumber" name="memberPhoneNumber" size="30" type="text" />
      				<span class="yj-error-container"></span>
    			</div>
				<br>
				<br>
	    		<div class="row">
    	    		<div class="action-btns">
        				<button type="submit" class="yj-btn  yj-btn-secondary "  ><span>Update</span></button>
      				</div>
    			</div>
    		</form>
    		<br/>
    		<br/>
    		<form accept-charset="UTF-8" action="/YouConnect-SocialNetworking/editpassword.html" method="get">
    			<button type="submit" class="yj-btn  yj-btn-secondary "><span>Edit Password</span></button>
    		</form>
    	</div>
	<!-- </div> -->
	<!-- </div> -->

<%-- <script src="${pageContext.request.contextPath}/static/libs/jquery.validate.min.js"></script>
<script src="${pageContext.request.contextPath}/static/js/profile-edit-validation-rules.js"></script> --%>

</body>
</html>