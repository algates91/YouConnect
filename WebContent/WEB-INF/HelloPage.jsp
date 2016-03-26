

<!DOCTYPE html>
<html lang="en-US" dir="ltr">
  <head>

    
    <title>YouConnect
      : Sign Up
    </title>

	<meta charset="utf-8">
<link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.11.4/themes/smoothness/jquery-ui.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.11.4/jquery-ui.min.js"></script>
  
  <script>
  $(document).ready(function() {
    $("#memberDOB").datepicker();
  });
  </script>



	<link href="https://s0.assets-yammer.com/assets/resources/yam-application-7c3e2c0eadd794a4e9033e558ba59c76.css" media="screen, projection, print" rel="stylesheet" type="text/css" />

<link href="https://s0.assets-yammer.com/assets/resources/yam-yamkit-ng-20dc3db842399d4842acc796b0b83b41.css" media="screen, projection, print" rel="stylesheet" type="text/css" />

<link href="https://s0.assets-yammer.com/assets/resources/yam-feeds-e4dd05000c5e4c20f6c0b5e95356a86e.css" media="screen, projection, print" rel="stylesheet" type="text/css" />
<link href="https://s0.assets-yammer.com/assets/resources/yam-common-ui-fbe11afcd4a9a5daa8f4658b5cb4be57.css" media="screen, projection, print" rel="stylesheet" type="text/css" />
<link href="https://s0.assets-yammer.com/assets/resources/yam-workfeed-app-a0a4e1932aaba50d2f3ae5443bcf3759.css" media="screen, projection, print" rel="stylesheet" type="text/css" />

  <link href="https://s0.assets-yammer.com/assets/resources/yam-pages-ad5e5eb86809ef5ea82aa7f045a4525d.css" media="screen, projection, print" rel="stylesheet" type="text/css" />

<link href="https://s0.assets-yammer.com/assets/yam-requirejs-complete-302ee9e92e848c68219b749b338eac39.css" media="screen" rel="stylesheet" type="text/css" />

  <link href="https://s0.assets-yammer.com/assets/resources/yam-signup-f77683ce25f316a537debfb9012a3c20.css" media="screen" rel="stylesheet" type="text/css" />
	
    <link href="https://s0.assets-yammer.com/assets/resources/yam-public-0dc15da2f7f42f41bad2c11cd33e5848.css" media="screen, projection, print" rel="stylesheet" type="text/css" />
    <link href="https://s0.assets-yammer.com/assets/resources/yam-common-ui-fbe11afcd4a9a5daa8f4658b5cb4be57.css" media="screen, projection, print" rel="stylesheet" type="text/css" />

    </head>

  <div class="wrapper yj-clearfix">
    <div class="global-header global-header-ps3" role="banner">
  <div class="container">
    <div class="row">
          <a href="/YouConnect-SocialNetworking/welcome.html"><img alt="YouConnect : The UNCC social networking site" id="logo" src="http://i.imgur.com/yEPWwST.png" title="What are you working on?" width="600" height="100" /></a>
    </div>    
  </div>
</div>

 <div class="container">
<div class="signup-form">
  <form accept-charset="UTF-8" action="/YouConnect-SocialNetworking/submitForm.html" method="post">

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
	  <input type="text" id="memberDOB" name="memberDOB">
      <span class="yj-error-container"></span>
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
    </div>

    

</form>
</div>
  <div class="grid4">
    <div class="side-col" role="complementary">
	  <h3 role="heading" aria-level="2">Already have an account?</h3>
	  <p>
      <a href="/session/new">Log In</a><span> or</span><br />
      <a href="/forgotten_password/new">Reset your password</a>
	  </p>
</div>

  </div>

    </div>
    <div class="footer-push"></div>
  </div>
  <footer class="global-footer" role="contentinfo">
  <div class="container">
    <img id="corporate-logo" src="https://epic.uncc.edu/sites/epic.uncc.edu/files/media/UNCC.jpg" alt="UNCC" width="1000" height="100">
  </div>
</footer>

  <link href="https://s0.assets-yammer.com/assets/yam-requirejs-public-main-06dc7e69a73afa6731d6c09c01221698.css" media="screen" rel="stylesheet" type="text/css" />

<script src="https://s0.assets-yammer.com/assets/yam-vendor-0d3c9a2ace68d753448750e774bd604d.js" type="text/javascript"></script>
<script src="https://s0.assets-yammer.com/assets/yam-requirejs-redirector-ff9cc0ddc9993b7aaeac1cbf535471f0.js" type="text/javascript"></script>
<script src="https://s0.assets-yammer.com/assets/yam-en-us-dict-87286f9e6ecc05a3f747c5936bd47126.js" type="text/javascript"></script>
<script src="https://s0.assets-yammer.com/assets/yam-bootstrap-3a2876ed28752f527f5419f89e0cd8d7.js" type="text/javascript"></script>
<script src="https://s0.assets-yammer.com/assets/yam-requirejs-public-main-5dd028f1900185544a78e4a31e6a85bd.js" type="text/javascript"></script>

<script type="text/javascript">
//<![CDATA[
var AUTH_TOKEN = "VBFIKdywpfiRa8FDZoh7VoJA9r8z81kXf0q3n4zBTOc=";
//]]>
</script>

<script>yam.ready.configure({"assetHost":"https://s0.assets-yammer.com","cdnAssetHost":"https://s0.assets-yammer.com","mugshotHost":"https://www.yammer.com/mugshot","cdnMugshotHost":"https://mug0.assets-yammer.com/mugshot","baseURI":"https://www.yammer.com","apiBaseURI":"https://api.yammer.com","filesHost":"https://files.yammer.com/v2/files","currentUser":null,"currentNetwork":null})</script>



  <img width="0" height="0" class="yj-hide" src="/images/public-site-spacer.gif" />




  <img src="https://secure.adnxs.com/seg?add=85297&t=2" width="0" height="0" style="float:left;" alt=""/>

<iframe src="https://view.atdmt.com/iaction/SMG_MRTINX_Yammer_LP" width="1" height="1" frameborder="0" scrolling="No" marginheight="0" marginwidth="0" topmargin="0" leftmargin="0" title="" aria-hidden="true"></iframe>

</body>
</html>
