from bottle import view, route, request, redirect
from itertools import groupby
from model.model import *

@route("/lookup/<code>")
@view("lookup")
def lookup(code):
	patientCode = PatientCode.validateCode(code)
	if patientCode is None:
		redirect('/')

	medicalHistoryItems = MedicalHistoryItem.query.join("group").order_by("medicalhistorygroup.sortOrder").order_by("medicalhistoryitem.sortOrder").all()
	grouped = {}

	currentGroup = ""
	for item in medicalHistoryItems:
		if currentGroup != item.group.groupName:
			currentGroup = item.group.groupName
			grouped[currentGroup] = []

		print item.itemName
		grouped[currentGroup].append(item)

	viewData = {
		"patient": patientCode.patient,
		"medicalHistoryItems": grouped,
		"dateHelper": request.factory.getDateHelper()
	}

	return viewData
