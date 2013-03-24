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
					      <button type="submit" class="btn btn-primary btn-large" name="userBtn">Sign in/Sign Up</button>
					    </div>
					  </div>
			  </fieldset>
			</form>
		</div>
	</div><!--/span-->

	<div class="span6">
		<div class="hero-unit">
			<form method="post">
			  <fieldset>
			    <legend>For Doctor, Please Enter Code</legend>
			    <p>Enter the patient provided code here!</p>
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
</div>

<p>{{!message}}</p>

<form method="post">
	<label for="test">Test me</label>
	<input type="text" name="test" />

	<button type="submit" class="btn btn-large btn-primary" name="btnSubmit">Submit!!!</button>
</form>


% rebase mainLayout title = "Home"