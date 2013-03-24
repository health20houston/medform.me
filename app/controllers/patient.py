from bottle import view, route, request
from model.model import *
from app.decorators.security import *

from model.model import *

@route("/dashboard")
@view("patient_dashboard")
@patientAccount
def patientDashboard(viewData):
	return viewData


@route("/api/patient/getcode")
@patientAccount
def api_patientGetCode(viewData):
	return PatientCode.generateNewCode()
