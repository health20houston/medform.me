from bottle import view, route, request, redirect

from model.model import *


@route("/lookup/<code>")
@view("lookup")
def lookup(code):
	patientCode = PatientCode.validateCode(code)
	if patientCode is None:
		redirect('/')

	viewData = {
		"patient": patientCode.patient,
		"dateHelper": request.factory.getDateHelper()
	}

	return viewData
