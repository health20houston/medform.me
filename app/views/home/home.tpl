<div class="row-fluid">
	<div class="span6">
		<div class="hero-unit hero-blue">
			<form method="post">
			  <fieldset>
			    <legend>Log In / Sign Up</legend>
					  <div class="control-group">
					    <div class="controls">
					      <input class="span7" type="text" id="inputEmail" placeholder="Email" name="email">
					    </div>
					  </div>
					  <div class="control-group">
					    <div class="controls">
					      <input class="span7" type="password" id="inputPassword" placeholder="Password" name="pwd">
					    	% if loginMessage is not None:
				    		<span class="help-inline">{{!loginMessage}}</span>
				    		% end
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
	
		%if singupMessage is not None
		<div> {{!signupMessage}}</div>
		%end

</div>


% rebase homeLayout title = "Home"