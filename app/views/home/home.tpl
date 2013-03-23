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
	</div>
</div>

<p>{{!message}}</p>

<form method="post">
	<label for="test">Test me</label>
	<input type="text" name="test" />

	<button type="submit" class="btn btn-large btn-primary" name="btnSubmit">Submit!!!</button>
</form>

% for patient in patients:
	% test = 10
	% print test
	<div class="well">
		<h3>{{patient.firstName}} {{patient.lastName}}</h3>

		<div class="address">
			{{patient.address}}
			{{patient.city}}, {{patient.state}}
			{{patient.postalCode}}
		</div>
	</div>
% end

{{patients}}


% rebase mainLayout title = "Home"