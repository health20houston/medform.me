from bottle import view, route, request, redirect

from model.model import *


@route("/lookup")
@view("lookup")
def lookup():
	if "code" not in request.all:
		redirect('/')
	patientCode = PatientCode.validateCode(request.all["code"])
	if patientCode is None:
		redirect('/')

	viewData = {
		"patient": patientCode.patient
	}

	return viewData
