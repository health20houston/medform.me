<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8" />
	<title>{{title}} // Medform.me</title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	<meta name="description" content="" />
	<meta name="author" content="" />

	<!--CSS-START-->
	<link href="../resources/css/bootstrap.css" rel="stylesheet" />
	    <style type="text/css">
      body {
        padding-top: 20px;
        padding-bottom: 60px;
      }
      </style>
	<link href="../resources/css/bootstrap-responsive.css" rel="stylesheet" />
	<link href="../resources/css/style.css" rel="stylesheet" />
	<!--CSS-END-->

	<!--[if lt IE 9]>
	<script src="/resources/js/html5.js"></script>
	<![endif]-->
</head>

<body>

	<div class="container-fluid">
	      <!-- Main hero unit for a primary marketing message or call to action -->
      <div class="hero-unit hero-bg">
      	<div class="home-logo"><img src="../resources/images/logo.png"></div>
        <h2>Never fill out a doctor's form again</h2>
        <p><span class="banner-shadow">Secure, easy-to-use and confidential. Store your common patient registration information on our HIPAA-secure encrypted service and never fill out another registration form again. Share your registration information with any doctor's office.</span></p>
        <!-- <p><a href="#" class="btn btn-primary btn-large">Sign Up &raquo;</a></p> -->
      </div>
		<div class="row-fluid">
			<div class="span6">
				<div class="hero-unit hero-blue">
					<form>
					  <fieldset>
					    <legend>Log In / Sign Up</legend>
								  <div class="control-group">
							    <div class="controls">
							      <input class="span7" type="text" id="inputEmail" placeholder="Email">
							    </div>
							  </div>
							  <div class="control-group">
							    <div class="controls">
							      <input class="span7" type="password" id="inputPassword" placeholder="Password">
							    </div>
							  </div>
							  <div class="control-group">
							    <div class="controls">
							      </label>
							      <button type="submit" class="btn btn-primary btn-large">Sign in/Sign Up</button>
							    </div>
							  </div>
					  </fieldset>
					</form>
				</div>
			</div><!--/span-->

			<div class="span6">
				<div class="hero-unit hero-green">
					<form>
					  <fieldset>
					    <legend>Enter Code</legend>
					    <p>Enter the encrypted code here now!</p>
					    <div class="control-group">
						    <div class="controls">
						    	<input type="text" class="span7" placeholder="Please Enter Code Here..">
							</div><!--/controls-->
						</div><!--/control-group-->
						<div class="control-group">
							<div class="controls">
					    		<button type="submit" class="btn btn-primary btn-large">Submit Code</button>
					    	</div><!--/controls-->
						</div><!--/control-group-->	
					  </fieldset>
					</form>
				</div>

				<!--JS-START-->
				<script src="/resources/js/jquery.js"></script>
				<script src="/resources/js/bootstrap.js"></script>
				<!--JS-END-->
				
				<!-- CONTENT -->
				<div class="row-fluid">
					<div class="span12" id="contentContainer">
						%include
					</div>
				</div>
				<!-- END-CONTENT -->
			</div><!--/span-->
		</div><!--/row-->

		<hr>

		<footer>
			<p>&copy; 2013 <a href="http://medform.me">medform.me</a> - Never fill out a doctor’s form again!</p>
		</footer>
	</div><!--/.fluid-container-->
</body>
</html>