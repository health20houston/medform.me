<ul class="nav nav-tabs" id="myTab">
  <li class="active"><a href="#demographics" data-toggle="tab">Demographics</a></li>
  <li><a href="#insurance" data-toggle="tab">Insurance</a></li>
  <li><a href="#primary-care" data-toggle="tab">Contacts</a></li>
  <li><a href="#medical-history" data-toggle="tab">Medical History</a></li>
  <li><a href="#surgeries" data-toggle="tab">Surgeries</a></li>
  <li><a href="#hospitalization" data-toggle="tab">Hospitalization</a></li>
  <li><a href="#family-history" data-toggle="tab">Family History</a></li>
  <li><a href="#allergies" data-toggle="tab">Allergies</a></li>
  <li><a href="#medications" data-toggle="tab">Medications</a></li>
  <li><a href="#submitTab" data-toggle="tab">Review and Submit</a></li>
</ul>
 
<div class="tab-content">
  <div class="tab-pane active" id="demographics">
		<!-- Text input-->
		<div class="control-group">
		  <label class="control-label">First Name</label>
		  <div class="controls">
			<input id="name" name="firstName" type="text" placeholder="First name" class="input-xlarge" required="" value="{{patient.firstName}}">
		  </div>
		</div>
		<div class="control-group">
		  <label class="control-label">Middle Name</label>
		  <div class="controls">
			<input id="name" name="middleName" type="text" placeholder="Middle name" class="input-xlarge" required="" value="{{patient.middleName}}">
		  </div>
		</div>
		<div class="control-group">
		  <label class="control-label">Last Name</label>
		  <div class="controls">
			<input id="name" name="lastName" type="text" placeholder="Last name" class="input-xlarge" required="" value="{{patient.lastName}}">
		  </div>
		</div>
		<!-- Text input-->
		<div class="control-group">
		  <label class="control-label">Street Address</label>
		  <div class="controls">
			<input id="address" name="address" type="text" placeholder="Street Address" class="input-xlarge" required="" value="{{patient.address}}">
		  </div>
		</div>
		<!-- Text input-->
		<div class="control-group">
		  <label class="control-label">City</label>
		  <div class="controls">
			<input id="city" name="city" type="text" placeholder="City" class="input-xlarge" required="" value="{{patient.city}}">
		  </div>
		</div>
		<!-- Text input-->
		<div class="control-group">
		  <label class="control-label">State</label>
		  <div class="controls">
			<input id="state" name="state" type="text" placeholder="State" class="input-xlarge" required="" value="{{patient.state}}">
		  </div>
		</div>
		<!-- Text input-->
		<div class="control-group">
		  <label class="control-label">Zip Code</label>
		  <div class="controls">
			<input id="zip-code" name="zip-code" type="text" placeholder="Zip Code" class="input-xlarge" required="" value="{{patient.postalCode}}">
		  </div>
		</div>
		% for phoneNumber in patient.phoneNumbers:
		<div class="control-group">
		  <label class="control-label">{{phoneNumber.numType}} Phone</label>
		  <div class="controls">
			<input id="{{phoneNumber.numType}}-phone" name="{{phoneNumber.numType}}-phone" type="text" placeholder="{{phoneNumber.numType}} Phone" class="input-xlarge" required="" value="{{phoneNumber.number}}">
		  </div>
		</div>
		% end
		<!-- Password input-->
		<div class="control-group">
		  <label class="control-label">Social security</label>
		  <div class="controls">
			<input id="social-security" name="social-security" type="password" placeholder="Social Security" class="input-xlarge" value="{{patient.ssn}}">
		  </div>
		</div>
		<!-- Date input-->
		<div class="control-group">
		  <label class="control-label">Date of Birth</label>
		  <div class="controls">
			<input id="dob" name="dob" type="date" placeholder="dob" class="input-xlarge" required="" value="{{patient.dob}}">
		  </div>
		</div>
		<!-- Radio input-->
		<div class="control-group">
		  <label class="control-label">Gender</label>
		  <div class="controls">
			<label class="radio inline">
			  <input type="radio" id="male" {{!'checked="checked"' if patient.gender == 'M' else ''}} value="M">M
			</label>
			<label class="radio inline">
			  <input type="radio" id="female" {{!'checked="checked"' if patient.gender == 'F' else ''}} value="F">F
			</label>	
		  </div>
		</div>
		<!-- Text input-->
		<div class="control-group">
		  <label class="control-label">Preferred Language</label>
		  <div class="controls">
			<input id="preferred-language" name="preferred-language" type="text" placeholder="Preferred Language" class="input-xlarge" required="" value="{{patient.preferredLang}}">
		  </div>
		</div>
		<!-- Text input-->
		<div class="control-group">
		  <label class="control-label">Occupation</label>
		  <div class="controls">
			<input id="occupation" name="occupation" type="text" placeholder="occupation" class="input-xlarge" value="{{patient.occupation}}">
		  </div>
		</div>
		<!-- Text input-->
		<div class="control-group">
		  <label class="control-label">Religion</label>
		  <div class="controls">
			<input id="religion" name="religion" type="text" placeholder="Religion" class="input-xlarge" value="{{patient.religion}}">
		  </div>
		</div>
		<!-- Text input-->
		<div class="control-group">
		  <label class="control-label">Race</label>
		  <div class="controls">
			<input id="race" name="race" type="text" placeholder="Race" class="input-xlarge" value="{{patient.race}}">
		  </div>
		</div>
		<!-- Text input-->
		<div class="control-group">
		  <label class="control-label">Ethnicity</label>
		  <div class="controls">
			<input id="ethnicity" name="ethnicity" type="text" placeholder="Ethnicity" class="input-xlarge" value="{{patient.ethnicity}}">
		  </div>
		</div>
		<!-- Text input-->
		<div class="control-group">
		  <label class="control-label">Weight</label>
		  <div class="controls">
			<input id="weight" name="weight" type="text" placeholder="Weight" class="input-xlarge" required="" value="{{patient.weight}}">
		  </div>
		</div>
		<!-- Text input-->
		<div class="control-group">
		  <label class="control-label">Height</label>
		  <div class="controls">
			<input id="height" name="height" type="text" placeholder="Height" class="input-xlarge" required="" value="{{patient.height}}">
		  </div>
		</div>
  </div><!-- Demographics -->
  <div class="tab-pane" id="insurance">
	% for insuranceIx, insurance in enumerate(patient.insurancePolicies):
	<!-- Text input-->
	<div class="control-group">
	  <label class="control-label">Insurance Policy #{{insuranceIx + 1}}</label>
	  <div class="controls">
		<input id="insurance-company{{insuranceIx}}" name="insurance-company{{insuranceIx}}" type="text" placeholder="Insurance Company" class="input-xlarge" required="" value="{{insurance.companyName}}">
	  </div>
	</div>
	<!-- Date input-->
	<div class="control-group">
	  <label class="control-label">Date Effective</label>
	  <div class="controls">
		<input id="effective-date{{insuranceIx}}" name="effective-date{{insuranceIx}}" type="date" placeholder="Effective Date" class="input-xlarge" required="" value="{{insurance.dateEffective}}">
	  </div>
	</div>
	<!-- Text input-->
	<div class="control-group">
	  <label class="control-label">Policy #</label>
	  <div class="controls">
		<input id="policy{{insuranceIx}}" name="policy{{insuranceIx}}" type="text" placeholder="Policy #" class="input-xlarge" required="" value="{{insurance.policyNumber}}">
	  </div>
	</div>
	<!-- Text input-->
	<div class="control-group">
	  <label class="control-label">Group #</label>
	  <div class="controls">
		<input id="group-num{{insuranceIx}}" name="group-num{{insuranceIx}}" type="text" placeholder="Group #" class="input-xlarge" required="" value="{{insurance.groupNumber}}">
	  </div>
	</div>
	<label class="checkbox">
	  <input type="checkbox" {{!'checked' if insurance.isPrimary else ''}}>
	  is Primary Insurance?
	</label>
	% end
  </div>
  <div class="tab-pane" id="primary-care">
  	% for emergencyContactIx, emergencyContact in enumerate(patient.emergencyContacts):
  	<div class="control-group">
	  <label class="control-label">Emergency Contact #{{emergencyContactIx + 1}}</label>
	  <div class="controls">
		<input id="em-con-fname{{emergencyContactIx}}" name="em-con-fname{{emergencyContactIx}}" type="text" placeholder="Emergency Contact Number" class="input-xlarge" required="" value="{{emergencyContact.firstName}}">
	  </div>
	</div>
	<div class="control-group">
	  <label class="control-label">Emergency Contact Last Name</label>
	  <div class="controls">
		<input id="em-con-lname{{emergencyContactIx}}" name="em-con-lname{{emergencyContactIx}}" type="text" placeholder="Emergency Contact Number" class="input-xlarge" required="" value="{{emergencyContact.lastName}}">
	  </div>
	</div>
	<div class="control-group">
	  <label class="control-label">Emergency Contact Number</label>
	  <div class="controls">
		<input id="em-con-num{{emergencyContactIx}}" name="em-con-num{{emergencyContactIx}}" type="text" placeholder="Emergency Contact Number" class="input-xlarge" required="" value="{{emergencyContact.phoneNumber.number}}">
	  </div>
	</div>
	<!-- Text input-->
	<div class="control-group">
	  <label class="control-label">Emergency Contact Relationship</label>
	  <div class="controls">
		<input id="em-con-rel{{emergencyContactIx}}" name="em-con-rel{{emergencyContactIx}}" type="text" placeholder="Emergency Contact Relationship" class="input-xlarge" required="" value="{{emergencyContact.relationship}}">
	  </div>
	</div>
  	% end
	
	<!-- Text input-->
	<div class="control-group">
	  <label class="control-label">Primary Care Physician</label>
	  <div class="controls">
		<input id="pri-car-phy" name="pri-car-phy" type="text" placeholder="Primary Care Physician" class="input-xlarge" value="{{patient.primaryCare.firstName}} {{patient.primaryCare.lastName}}">
	  </div>
	</div>
	<!-- Text input-->
	<div class="control-group">
	  <label class="control-label">Primary Care Physician Number</label>
	  <div class="controls">
		<input id="pri-car-phy-num" name="pri-car-phy-num" type="text" placeholder="Primary Care Physician Number" class="input-xlarge" value="{{patient.primaryCare.phoneNumber.number}}">
	  </div>
	</div>
	<!-- Check input-->
	<div class="control-group">
	  <label class="control-label">Do you have a Living Will or Medical Advance Directive?</label>
	  <div class="controls">
		<label class="checkbox">
		  <input name="willAdvance" type="checkbox" {{!'checked' if patient.willAdvance else ''}}>
		  Yes
		</label>
	  </div>
	</div>
  </div>
  <div class="tab-pane" id="medical-history">
	<div class="accordion" id="accordionMedicalHistory">
		% for historyIx, historyGroup in enumerate(medicalHisotryGroups):
		<div class="accordion-group">
			<div class="accordion-heading">
				<a class="accordion-toggle" data-toggle="collapse" data-parent="#accordionMedicalHistory" href="#collapseHistory{{historyIx}}">
				{{historyGroup.groupName}}
				</a>
			</div>
			<div id="collapseHistory{{historyIx}}" class="accordion-body collapse">
				<div class="accordion-inner">
				%for i , historyItem in enumerate(historyGroup.items):
					%if i%3 == 0:
					%open = True
						<div class="row formRow">
						%open = True
					%end
					<div class="span3">
					%flag = False
					%for items in patient.medicalHistory:
					%	if historyItem.itemName == items.itemName:
					%		flag = True
					%	end
					%end
						<label class="checkbox">
							<input type="checkbox" value="{{historyItem.itemName}}" {{!'checked="checked"' if flag else ''}} />{{historyItem.itemName}} <br />
						</label>
					</div>
					%if i%3 == 2 or len(historyGroup.items)-1 == i:
						</div>
					%end
					%i+=1
				%end
				</div>
			</div>
		</div>
		% end
	</div>
  </div>
  <div class="tab-pane" id="surgeries">
	<!-- Checkbox input-->
	<div class="control-group">
		<label class="control-label">Have you had an Surgeries</label>
		  <div class="controls">
			%for i, surgery in enumerate(surgeries):
				%if i%3 == 0 & i != len(surgeries):
					
					<div class="row formRow">
				%end
				%flag = False
				%for patSurgery in patient.surgeries:
				%	if surgery.name == patSurgery.name:
				%		flag = True
				%	end
				%end
			<div class="span3">
				<label class="checkbox">
				  <input type="checkbox" id="surgery{{!i}}" value="{{!surgery.name}}" {{!'checked="checked"' if flag else ''}}>{{!surgery.name}}
				</label>
			</div> 
				%if i%3 == 2 or i == len(surgeries)-1:
					
					</div>
				%end
			%end
		  </div>
	</div>
  </div>
  <div class="tab-pane" id="hospitalization">
	<div class="control-group">
	  <label class="control-label">For What?</label>
	  <div class="controls">
		<textarea id="hospitalizationWhy" name="hospitalizationWhy" type="text" placeholder="Why were you hospitalized?" rows="3"></textarea>
	  </div>
	</div>
	<div class="control-group">
	  <label class="control-label">When?</label>
	  <div class="controls">
		<input id="hospitalizationWhen" name="hospitalizationWhen" type="text" placeholder="When were you hospitalized?" class="input-xlarge" required="">
	  </div>
	</div>
  </div>
  <div class="tab-pane" id="family-history">
	<div class="control-group">
		<label class="control-label">Please check all of your family history</label>
		  <div class="controls">
			%for i, familyHistory in enumerate(familyHistories):
				%if i%3 == 0 & i != len(familyHistories):
			<div class="row formRow">
				%end
				%flag = False
				%for items in patient.familyHistories:
				%	if familyHistory.name == items.name:
				%		flag = True
				%	end
				%end

				<div class="span4">
					<label class="checkbox">
					  <input type="checkbox" id="{{!familyHistory.name}}" {{!'checked="checked"' if flag else ''}} >{{!familyHistory.name}}
					</label>
				</div>
				%if i%3 == 2 or i == len(familyHistories)-1:
					</div>
				%end
			%end
		  </div>
		</div>
  </div>
  <div class="tab-pane" id="allergies">
	<!-- Checkbox input-->
	<div class="control-group">
		<label class="control-label">Do you have any Allergies?</label>
		  <div class="controls">
			%for i, allergy in enumerate(allergies):
				%if i%3 == 0 & i != len(allergies):
					
					<div class="row formRow">
				%end

				%flag = False
				%for patAllerg in patient.allergies:
				%	if allergy.name == patAllerg.name:
				%		flag = True
				%	end
				%end
			<div class="span3">
				<label class="checkbox">
				  <input type="checkbox" id="allergy{{!i}}" value="{{!allergy.name}}" {{!'checked="checked"' if flag else ''}}>{{!allergy.name}}
				</label>
			</div> 
				%if i%3 == 2 or i == len(allergies)-1:
					
					</div>
				%end
			%end
		  </div>
	</div>
  </div>
  <div class="tab-pane" id="medications">
	<form class="form-inline">
		<div class="control-group">
			<label class="control-label">Medication</label>
				<input type="text" class="input-large" placeholder="Medication">
				<input type="password" class="input-small" placeholder="Dosage">
				<input type="password" class="input-small" placeholder="frequency">
		</div>
	</form>
	<button class="btn btn-small btn-primary" type="button">Add a Medication</button>
  </div>
  <div class="tab-pane" id="submitTab">
		<div class="row formRow">
			<h3> Please Review that your Information is Correct and Complete and Submit!</h3>
			<button class="btn btn-large btn-primary" type="Submit">Submit</button>
		</div>
  </div>
</div>
 
<script>
  $(function () {
	$('#myTab a:first').tab('show');
  })
</script>

% rebase mainLayout title = "Profile"