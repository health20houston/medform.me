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
					<td>{{patient.middleName}}</td>
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
					<td>{{patient.race}}</td>
				</tr>
				<tr>
					<td><strong>Ethnicity</strong></td>
					<td>{{patient.ethnicity}}</td>
				</tr>
				<tr>
					<td><strong>Weight</strong></td>
					<td>{{patient.weight}}</td>
				</tr>
				<tr>
					<td><strong>Height</strong></td>
					<td>{{patient.height}}</td>
				</tr>
				<tr>
					<td><strong>SSN</strong></td>
					<td>{{patient.ssn}}</td>
				</tr>
				<tr>
					<td><strong>Gender</strong></td>
					<td>{{patient.gender}}</td>
				</tr>
				<tr>
					<td><strong>Address</strong></td>
					<td>{{patient.address}}</td>
				</tr>
				<tr>
					<td><strong>Address 2</strong></td>
					<td>{{patient.address2}}</td>
				</tr>
				<tr>
					<td><strong>City, State, Postal Code</strong></td>
					<td>{{patient.city}}, {{patient.state}} {{patient.postalCode}}</td>
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
					<td>{{patient.preferredLang}}</td>
				</tr>
				<tr>
					<td><strong>Occupation</strong></td>
					<td>{{patient.occupation}}</td>
				</tr>
				<tr>
					<td><strong>Religion</strong></td>
					<td>{{patient.religion}}</td>
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
							<td>{{ec.lsatName}}</td>
							<td>{{ec.phoneNumber}}</td>
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
	</fieldset>
	
	<table class="table table-striped">
		<thead>
			<tr><th>Key</th><th>Value</th></tr>
		</thead>
		<tbody>
			<tr><td>Insurance Policies</td><td>
				% if len(patient.insurancePolicies) > 0:
				<table class="table table-striped">
					<thead>
						<tr><th>Company Name</th><th>Date Effective</th><th>Policy #</th><th>Group #</th><th>Is Primary</th></tr>
					</thead>
					<tbody>
						% for policy in patient.insurancePolicies:
						<tr><td>{{policy.companyName}}</td><td>{{policy.dateEffective}}</td><td>{{policy.policyNumber}}</td><td>{{policy.groupNumber}}</td><td>{{policy.isPrimary}}</td></tr>
						% end
					</tbody>
				</table>
				% else:
				None
				% end
			</td></tr>
			<tr><td>Primary Care</td><td>
				% if patient.primaryCare is not None:
				<table class="table table-striped">
					<thead>
						<tr><th>First Name</th><th>Last Name</th><th>Phone Number</th></tr>
					</thead>
					<tbody>						
						<tr><td>{{patient.primaryCare.firstName}}</td><td>{{patient.primaryCare.lastName}}</td><td>{{patient.primaryCare.phoneNumber}}</td></tr>
					</tbody>
				</table>
				% else:
				None
				% end
			</td></tr>
			<tr><td>Medical History</td><td>
				% if len(patient.medicalHistory) > 0:
				<table class="table table-striped">
					<thead>
						<tr><th>Item Name</th><th>Sort Order</th></tr>
					</thead>
					<tbody>
						% for history in patient.medicalHistory:
						<tr><td>{{history.itemName}}</td><td>{{history.sortOrder}}</td></tr>
						% end
					</tbody>
				</table>
				% else:
				None
				% end
			</td></tr>
			<tr><td>Surgeries</td><td>
				% if len(patient.surgeries) > 0:
				<table class="table table-striped">
					<thead>
						<tr><th>Name</th><th>Sort Order</th></tr>
					</thead>
					<tbody>
						% for surgery in patient.surgeries:
						<tr><td>{{surgery.name}}</td><td>{{surgery.sortOrder}}</td></tr>
						% end
					</tbody>
				</table>
				% else:
				None
				% end
			</td></tr>
			<tr><td>Marital Status</td><td>{{patient.maritalStatus}}</td></tr>
			<tr><td>Has Advance Will</td><td>{{patient.willAdvance}}</td></tr>
		</tbody>
    </table>
</div>

% rebase homeLayout title = "Home"