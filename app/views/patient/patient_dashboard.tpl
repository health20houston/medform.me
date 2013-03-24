<h1>Welcome to your Dashboard!</h1>

<div class="row-fluid">
	<div class="span6">
		<button type="button" class="btn btn-large btn-success" id="btnGenerateCode">Generate Code</button>
	</div>

	<div class="span6">
		<button type="button" class="btn btn-large btn-primary" id="btnMyProfile">My Profile</button>
	</div>
</div>

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