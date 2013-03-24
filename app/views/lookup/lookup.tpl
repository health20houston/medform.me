<div class="row-fluid">
	<table class="table table-striped">
		<thead>
			<tr><th>Key</th><th>Value</th></tr>
		</thead>
		<tbody>
			<tr><td>First Name</td><td>{{patient.firstName}}</td></tr>
			<tr><td>Middle Name</td><td>{{patient.middleName}}</td></tr>
			<tr><td>Last Name</td><td>{{patient.lastName}}</td></tr>
			<tr><td>Email</td><td>{{patient.email}}</td></tr>
			<tr><td>DOB</td><td>{{patient.dob}}</td></tr>
			<tr><td>SSN</td><td>{{patient.ssn}}</td></tr>
			<tr><td>Gender</td><td>{{patient.gender}}</td></tr>
			<tr><td>Address</td><td>{{patient.address}}</td></tr>
			<tr><td>City</td><td>{{patient.city}}</td></tr>
			<tr><td>State</td><td>{{patient.state}}</td></tr>
			<tr><td>Postal Code</td><td>{{patient.postalCode}}</td></tr>
			<tr><td>Phone Numbers</td><td>
				<table class="table table-striped">
					<thead>
						<tr><th>Phone Type</th><th>Number</th></tr>
					</thead>
					<tbody>
						% for phone in patient.phoneNumbers:
						<tr><td>{{phone.numType}}</td><td>{{phone.number}}</td></tr>
						% end
					</tbody>
				</table>
			</td></tr>
			<tr><td>Preferred Language</td><td>{{patient.preferredLang}}</td></tr>
			<tr><td>Occupation</td><td>{{patient.occupation}}</td></tr>
			<tr><td>Religion</td><td>{{patient.religion}}</td></tr>
			<tr><td>Race</td><td>{{patient.race}}</td></tr>
			<tr><td>Ethnicity</td><td>{{patient.ethnicity}}</td></tr>
			<tr><td>Weight</td><td>{{patient.weight}}</td></tr>
			<tr><td>Height</td><td>{{patient.height}}</td></tr>
			<tr><td>Emergency Contacts</td><td>
				% if len(patient.emergencyContacts) > 0:
				<table class="table table-striped">
					<thead>
						<tr><th>First Name</th><th>Last Name</th><th>Phone Number</th><th>Relationship</th></tr>
					</thead>
					<tbody>
						% for contact in patient.emergencyContacts:
						<tr><td>{{contact.firstName}}</td><td>{{contact.lastName}}</td><td>{{contact.phoneNumber}}</td><td>{{contact.relationship}}</td></tr>
						% end
					</tbody>
				</table>
				% else:
				None
				% end
			</td></tr>
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