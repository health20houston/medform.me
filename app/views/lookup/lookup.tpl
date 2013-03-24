<div class="row-fluid">
	<fieldset>
		<legend>Demographics</legend>
		<table class="table table-striped">
			<tbody>
				<tr>
					<td><strong>First Name</strong></td>
					<td>{{patient.firstName}}</td>
				</tr>
				<tr>
					<td><strong>Middle Name</strong></td>
					<td>{{!patient.middleName if patient.middleName is not None else ''}}</td>
				</tr>
				<tr>
					<td><strong>Last Name</strong></td>
					<td>{{patient.lastName}}</td>
				</tr>
				<tr>
					<td><strong>DOB</strong></td>
					<td>{{patient.dob}}</td>
				</tr>
				<tr>
					<td><strong>Race</strong></td>
					<td>{{patient.race if patient.race is not None else ''}}</td>
				</tr>
				<tr>
					<td><strong>Ethnicity</strong></td>
					<td>{{patient.ethnicity  if patient.ethnicity is not None else ''}}</td>
				</tr>
				<tr>
					<td><strong>Weight</strong></td>
					<td>{{patient.weight  if patient.weight is not None else ''}}</td>
				</tr>
				<tr>
					<td><strong>Height</strong></td>
					<td>{{patient.height  if patient.height is not None else ''}}</td>
				</tr>
				<tr>
					<td><strong>SSN</strong></td>
					<td>{{patient.ssn  if patient.ssn is not None else ''}}</td>
				</tr>
				<tr>
					<td><strong>Gender</strong></td>
					<td>{{patient.gender if patient.gender is not None else ''}}</td>
				</tr>
				<tr>
					<td><strong>Address</strong></td>
					<td>{{patient.address if patient.address is not None else ''}}</td>
				</tr>
				<tr>
					<td><strong>Address 2</strong></td>
					<td>{{patient.address2 if patient.address2 is not None else ''}}</td>
				</tr>
				<tr>
					<td><strong>City, State, Postal Code</strong></td>
					<td>{{patient.city if patient.city is not None else ''}}, {{patient.state if patient.state is not None else ''}} {{patient.postalCode if patient.postalCode is not None else ''}}</td>
				</tr>
			</tbody>
		</table>
	</fieldset>

	<fieldset class="margin-top-25">
		<legend>Contact Information</legend>

		<table class="table table-striped">
			<tbody>
				<tr>
					<td><strong>Email</strong></td>
					<td>{{patient.email}}</td>
				</tr>
				<tr>
					<td><strong>Phone Numbers</strong></td>
					<td>
						<table class="table table-striped table-condensed">
							<thead>
								<tr>
									<th>Type</th>
									<th>Number</th>
								</tr>
							</thead>
							<tbody>
								% for p in patient.phoneNumbers:
									<tr>
										<td>{{p.numType}}</td>
										<td>{{p.number}}</td>
									</tr>
								% end
							</tbody>
						</table>
					</td>
				</tr>
			</tbody>
		</table>				
	</fieldset>

	<fieldset class="margin-top-25">
		<legend>Additional Info</legend>

		<table class="table table-striped">
			<tbody>
				<tr>
					<td><strong>Preferred Language</strong></td>
					<td>{{patient.preferredLang if patient.preferredLang is not None else ''}}</td>
				</tr>
				<tr>
					<td><strong>Occupation</strong></td>
					<td>{{patient.occupation if patient.occupation is not None else ''}}</td>
				</tr>
				<tr>
					<td><strong>Religion</strong></td>
					<td>{{patient.religion if patient.religion is not None else ''}}</td>
				</tr>
				<tr>
					<td><strong>Marital Status</strong></td>
					<td>{{patient.maritalStatus if patient.maritalStatus is not None else ''}}</td>
				</tr>
				<tr>
					<td><strong>Has Advance Will</strong></td>
					<td>{{patient.willAdvance if patient.willAdvance is not None else ''}}</td>
				</tr>
			</tbody>
		</table>
	</fieldset>

	<fieldset class="margin-top-25">
		<legend>Emergency Contacts</legend>

		% if len(patient.emergencyContacts):
			<table class="table table-striped">
				<thead>
					<tr>
						<th>First Name</th>
						<th>Last Name</th>
						<th>Phone</th>
						<th>Relationship</th>
					</tr>
				</thead>
				<tbody>
					% for ec in patient.emergencyContacts:
						<tr>
							<td>{{ec.firstName}}</td>
							<td>{{ec.lastName}}</td>
							<td>{{ec.phoneNumber.number}}</td>
							<td>{{ec.relationship}}</td>
						</tr>
					% end
				</tbody>
			</table>

		% else:
			<p>None</p>
		% end
	</fieldset>

	<fieldset class="margin-top-25">
		<legend>Insurance Policies</legend>

		% if len(patient.insurancePolicies) > 0:
			<table class="table table-striped">
				<thead>
					<tr>
						<th>Company Name</th>
						<th>Date Effective</th>
						<th>Policy #</th>
						<th>Group #</th>
						<th>Is Primary</th>
					</tr>
				</thead>
				<tbody>
					% for p in patient.insurancePolicies:
						<tr>
							<td>{{p.companyName}}</td>
							<td>{{p.dateEffective}}</td>
							<td>{{p.policyNumber}}</td>
							<td>{{p.groupNumber}}</td>
							<td>{{p.isPrimary}}</td>
						</tr>
					% end
				</tbody>
			</table>

		% else:
			None
		% end
	</fieldset>

	<fieldset class="margin-top-25">
		<legend>Primary Care</legend>

		% if patient.primaryCare:
			<table class="table table-striped">
				<thead>
					<tr>
						<th>First Name</th>
						<th>Last Name</th>
						<th>Phone</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>{{patient.primaryCare.firstName}}</td>
						<td>{{patient.primaryCare.lastName}}</td>
						<td>{{patient.primaryCare.phoneNumber.number}}</td>
					</tr>
				</tbody>
			</table>

		% else:
			None
		% end
	</fieldset>

	<fieldset class="margin-top-25">
		<legend>Hospitalization</legend>

		% if patient.hospitalization:
			<table class="table table-striped">
				<thead>
					<tr>
						<th>For what?</th>
						<th>When?</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>{{patient.hospitalization.forWhat}}</td>
						<td>{{patient.hospitalization.when}}</td>
					</tr>
				</tbody>
			</table>

		% else:
			None
		% end
	</fieldset>

	<fieldset class="margin-top-25">
		<legend>Surgeries</legend>

		% if len(patient.surgeries):
			<table class="table table-striped">
				<thead>
					<tr>
						<th>Name</th>
					</tr>
				</thead>
				<tbody>
					% for s in patient.surgeries:
						<tr>
							<td>{{s.name}}</td>
						</tr>
					% end
				</tbody>
			</table>

		% else:
			None
		% end
	</fieldset>

	<fieldset class="margin-top-25">
		<legend>Medical History</legend>

		% print patient.medicalHistory
		% for group in medicalHistoryItems:
			<h4>{{group}}</h4>
			
			<table class="table table-striped">
				<tbody>
					% for item in medicalHistoryItems[group]:
						% checked = " checked='checked'" if item in patient.medicalHistory else ""
						<tr>
							<td><input type="checkbox"{{checked}} disabled="disabled" /> {{item.itemName}}</td>
						</tr>
					% end
				</tbody>
			</table>
		% end
	</fieldset>
</div>

% rebase homeLayout title="Patient Profile"