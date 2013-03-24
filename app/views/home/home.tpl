<div class="row-fluid">
	<div class="span6">
		<div class="hero-unit hero-blue">
			<form method="post" id="signUpForm">
			  <fieldset>
			    <legend>Log In / Sign Up</legend>
			    	<div class="alert alert-error hide" id="helpinline">
			    	</div>

					  <div class="control-group">
					    <div class="controls">
					      <input class="span7" type="text" id="inputEmail" placeholder="Email" name="email">
					    </div>
					  </div>
					  <div class="control-group">
					    <div class="controls">
					      <input class="span7" type="password" id="inputPassword" placeholder="Password" name="pwd">
					    </div>
					  </div>
					  <div class="control-group">
					    <div class="controls">
					      </label>
					      <button type="button" class="btn btn-primary btn-large" id="userBtn">Sign in/Sign Up</button>
					    </div>
					  </div>
			  </fieldset>
			</form>
		</div>
	</div><!--/span-->

	<div class="span6">
		<div class="hero-unit hero-green">
			<form method="post">
			  <fieldset>
			    <legend>Enter Code</legend>
			    <p>Enter the encrypted code here now!</p>
			    <div class="control-group {{codeErrorCss}}">
				    <div class="controls">
				    	<input type="text" class="span7" name="code" placeholder="Please Enter Code Here.." value="{{codeValue}}">
				    	% if codeError is not None:
				    	<span class="help-inline">{{!codeError}}</span>
				    	% end
					</div><!--/controls-->
				</div><!--/control-group-->
			    <div class="control-group {{nameDocErrorCss}}">
					<div class="controls">
				    	<input type="text" class="span7" name="nameDoc" placeholder="Please Enter Doctor Name Here.." value="{{nameDocValue}}">
				    	% if nameDocError is not None:
				    	<span class="help-inline">{{!nameDocError}}</span>
				    	% end
					</div><!--/controls-->
				</div><!--/control-group-->
			    <div class="control-group {{nameHospitalErrorCss}}">
					<div class="controls">
				    	<input type="text" class="span7" name="nameHospital" placeholder="Please Enter Hospital Admin Name Here.." value="{{nameHospitalValue}}">
				    	% if nameHospitalError is not None:
				    	<span class="help-inline">{{!nameHospitalError}}</span>
				    	% end
					</div><!--/controls-->
				</div><!--/control-group-->
				<div class="control-group">
					<div class="controls">
			    		<button type="submit" class="btn btn-primary btn-large" name="codeBtn">Submit Code</button>
			    	</div><!--/controls-->
				</div><!--/control-group-->	
			  </fieldset>
			</form>
		</div>
			

	</div>
	<div class="clear"></div>
	<div class="container-fluid">
		<hr>
	      <!-- Three columns of text below the carousel -->
      <div class="row-fluid marketing">
        <div class="span4">
          <img class="img-circle" data-src="holder.js/140x140">
          <h2>Secure</h2>
          <p>HIPAA-secure encrypted service with temporary time-sensitive pass codes</p>
        </div><!-- /.span4 -->
        <div class="span4">
          <img class="img-circle" data-src="holder.js/140x140">
          <h2>Accessible</h2>
          <p>Generate access code on your mobile phone, tablet or computer at any time</p>
        </div><!-- /.span4 -->
        <div class="span4">
          <img class="img-circle" data-src="holder.js/140x140">
          <h2>Save Time</h2>
          <p>All your registration information is prepared at your leisure and ready for the doctor</p>
        </div><!-- /.span4 -->
      </div><!-- /.row -->

      <!-- Modal for sign up prompt -->
	<div id="signUpPrompt" class="modal fade">
	  <div class="modal-header">
	    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
	    <h3>Sign Up</h3>
	  </div>
	  <div class="modal-body">
	    <p><span id="signUpMessage"></span></p>
	  </div>
	  <div class="modal-footer">
	    <a href="javascript:void" class="btn" id="signUpNo">No</a>
	    <a href="javascipt:void" class="btn btn-primary" id="signUpYes">Yes</a>
	  </div>
	</div>

	<script>
		$(function() {
			new Medform.Patient.signUp();
		});
	</script>
	</div><!-- Container for marketing -->
</div><!-- Row Fluid End -->


% rebase homeLayout title = "Home"
