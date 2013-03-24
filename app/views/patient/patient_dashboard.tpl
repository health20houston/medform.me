		<div class="row-fluid show-grid">
			<div class="span3 offset3">
				<h4>Share Info</h4>
				<button type="button" class="btn btn-large btn-success" id="btnGenerateCode">Generate Code</button>
				<p>Ready for your appointment? Get a secure code you can share with your provider.</p>
			</div>
			<div class="span3">
				<h4>Manage Profile</h4>
				<a href="/dashboard/profile"><button type="button" class="btn btn-large btn-primary" id="btnMyProfile">Update Profile</button></a>
				<p>Need to update your information quickly? Click here to manage your profile.</p>
			</div>
		</div>
<!--Code for the Modal-->
<div id="generateCodeModal" class="modal hide fade">
	<div class="modal-header">
		<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
		<h3>Generate Code</h3>
	</div>

	<div class="modal-body">
		<h1>Your Code: <span id="codeSpan"></span></h1>
	</div>

	<div class="modal-footer">
		<a href="#" class="btn" data-dismiss="modal">Close</a>
	</div>
</div>

<script>
	$(function() {
		new Medform.Patient.GenerateCode();
	});
</script>

% rebase mainLayout title = "Home"