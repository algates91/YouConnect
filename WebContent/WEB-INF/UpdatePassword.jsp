<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>YouConnect
	:EditPassword
	</title>
	<meta charset="utf-8"/>
	
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.11.4/jquery-ui.min.js"></script>
	<link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.11.4/themes/smoothness/jquery-ui.css">

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
  
  	  <link href="https://s0.assets-yammer.com/assets/yam-requirejs-public-main-06dc7e69a73afa6731d6c09c01221698.css" media="screen" rel="stylesheet" type="text/css" />
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
    <div class="container">
		<div class="edit-password">
  			<form accept-charset="UTF-8" action="/YouConnect-SocialNetworking/submitForm.html" method="post">
				<br>
  				<br>
 				<div class="row login-password">
          			<label for="user_password">New Password*</label><br>
          			<input aria-describedby="pw-str pw-rules" aria-required="true" autocomplete="off" class="yj-validate password wider" id="passWord" name="passWord" size="30" type="password" /><br>
		  			<label for="user_password">Re-type Password*</label><br>
          			<input aria-describedby="pw-str pw-rules" aria-required="true" autocomplete="off" class="yj-validate password wider" id="passWord2" name="passWord2" size="30" type="password" />
          		<br />
          		<div id="pw-rules" class="password-rules">
            		<span class="quiet">
              			<span class="yj-error-container"></span>
              			Passwords must contain at least 6 characters.
              		</span>
            		<span id="password-department-validation-error" class="yj-validation-error password-department-error yj-hide">Password cannot match department name.</span>
          		</div>
        		</div>
				<br>
				<div class="row login-password">
    	    		<div class="action-btns">
        				<button  type="submit" class="yj-btn  yj-btn-secondary "  ><span>Update</span></button>
      				</div>
    			</div>
    		</form>
    	</div>
	</div>
	</div>

</body>
</html>