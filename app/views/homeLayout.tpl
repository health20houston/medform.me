<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8" />
	<title>{{title}} // Medform.me</title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	<meta name="description" content="Never fill out a doctor's form again" />
	<meta name="author" content="Medform.me" />

	<!--CSS-START-->
	<link href="/resources/css/bootstrap.css" rel="stylesheet" />
	<style type="text/css">
		body {
			padding-top: 20px;
			padding-bottom: 60px;
		}
	</style>
	<link href="/resources/css/bootstrap-responsive.css" rel="stylesheet" />
	<link href="/resources/css/style.css" rel="stylesheet" />
	<!--CSS-END-->

	<!--JS-START-->
	<script src="/resources/js/jquery.js"></script>
	<script src="/resources/js/bootstrap.js"></script>
	<script src="/resources/js/medform.js"></script>
	<script src="/resources/js/medform.patient.js"></script>
	<!--JS-END-->

	<!--[if lt IE 9]>
	<script src="/resources/js/html5.js"></script>
	<![endif]-->
</head>

<body>
	<div class="container-fluid">
		<!-- Main hero unit for a primary marketing message or call to action -->
		<div class="hero-unit hero-bg">
			<div class="home-logo"><img src="/resources/images/logo.png" /></div>
			<h2>Never fill out a doctor's form again</h2>
			<p>
				<span class="banner-shadow">
					Secure, easy-to-use and confidential. Store your common patient registration information on our 
					HIPAA-secure encrypted service and never fill out another registration form again. Share your 
					registration information with any doctor's office.
				</span>
			</p>
		</div>
		<div class="row-fluid">
			<!-- CONTENT -->
			<div class="row-fluid">
				<div class="span12" id="contentContainer">
					%include
				</div>
			</div>
			<!-- END-CONTENT -->
		</div><!--/row-->

		<hr />

		<footer>
			<p>&copy; 2013 <a href="http://medform.me">medform.me</a> - Never fill out a doctor’s form again!</p>
		</footer>
	</div><!--/.fluid-container-->
</body>
</html>