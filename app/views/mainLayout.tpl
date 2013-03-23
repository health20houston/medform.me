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
	<link href="../resources/css/bootstrap-responsive.css" rel="stylesheet" />
	<link href="../resources/css/style.css" rel="stylesheet" />
	<!--CSS-END-->

	<!--[if lt IE 9]>
	<script src="/resources/js/html5.js"></script>
	<![endif]-->
</head>

<body>
	<div class="navbar navbar-inverse navbar-fixed-top">
		<div class="navbar-inner">
			<div class="container-fluid">
				<a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</a>
				<a class="brand" href="#">Medform.me</a>
				<div class="nav-collapse collapse">
					<p class="navbar-text pull-right">
						Logged in as <a href="#" class="navbar-link">Username</a>
					</p>
					
					<ul class="nav">
						<li class="active"><a href="#">Home</a></li>
						<li><a href="#about">About</a></li>
						<li><a href="#contact">Contact</a></li>
					</ul>
				</div>
			</div>
		</div>
	</div>

	<div class="container-fluid">
		<div class="row-fluid">
			<div class="span6">
				<div class="hero-unit">
					<form>
					  <fieldset>
					    <legend>Sign Up/Login</legend>
					    <p>Type in your email and password to login, if you are not a member this will automaticly take you to the sign up page.</p>
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
				<div class="hero-unit">
					<form>
					  <fieldset>
					    <legend>Enter Code</legend>
					    <p>Enter the encrpted code here now!</p>
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
			<p>&copy; Company 2012</p>
		</footer>
	</div><!--/.fluid-container-->
</body>
</html>