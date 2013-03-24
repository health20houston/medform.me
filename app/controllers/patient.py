from bottle import view, route, request
from model.model import *
from app.decorators.security import *

from model.model import *

@route("/dashboard")
@view("patient_dashboard")
@patientAccount
def patientDashboard(viewData):
	return viewData

@route("/dashboard/profile")
@view("patient_dashboard_profile")
@patientAccount
def patientDashboardProfile(viewData):
	viewData["medicalHisotryGroups"] = MedicalHistoryGroup.query.all()
	#reload patient object to prevent lazyLoad exception with .medicalHistory
	viewData["patient"] = Patient.get_by(id=viewData["patient"].id)

	return viewData

@route("/api/patient/getcode")
@patientAccount
def api_patientGetCode(viewData):
	#
	# Create a patient code. If we have an active code
	# that isn't expired go grab it.
	#
	code = PatientCode.generateNewCode(patient=request.appSession["patient"])
	session.commit()

	return code
