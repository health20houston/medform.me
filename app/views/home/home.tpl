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
	      <!-- Three columns of text below the carousel -->
      <div class="row">
        <div class="span4">
          <img class="img-circle" data-src="holder.js/140x140">
          <h2>Heading</h2>
          <p>Donec sed odio dui. Etiam porta sem malesuada magna mollis euismod. Nullam id dolor id nibh ultricies vehicula ut id elit. Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Praesent commodo cursus magna, vel scelerisque nisl consectetur et.</p>
          <p><a class="btn" href="#">View details &raquo;</a></p>
        </div><!-- /.span4 -->
        <div class="span4">
          <img class="img-circle" data-src="holder.js/140x140">
          <h2>Heading</h2>
          <p>Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Cras mattis consectetur purus sit amet fermentum. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus.</p>
          <p><a class="btn" href="#">View details &raquo;</a></p>
        </div><!-- /.span4 -->
        <div class="span4">
          <img class="img-circle" data-src="holder.js/140x140">
          <h2>Heading</h2>
          <p>Donec sed odio dui. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Vestibulum id ligula porta felis euismod semper. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus.</p>
          <p><a class="btn" href="#">View details &raquo;</a></p>
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
</div>


% rebase homeLayout title = "Home"
