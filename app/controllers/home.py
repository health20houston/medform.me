from bottle import view, route, request, redirect

from model.model import *

@route("/")
@route("/", method="POST")
@view("home")
def home():
	viewData = {
		"email": "",
		"pwd": "",
		"loginMessage": "",
		"signupMessage": "",
		"message": "Test message",
		"patients": None,
		"codeErrorCss": "",
		"nameDocErrorCss": "",
		"nameHospitalErrorCss": "",
		"codeError": None,
		"nameDocError": None,
		"nameHospitalError": None,
		"codeValue": "",
		"nameDocValue": "",
		"nameHospitalValue": "",
		"codeRedirect": True
	}

	#
	# Validation for code submission
	#
	if "codeBtn" in request.all:
		if len(request.all["code"]) == 0:
			viewData["codeErrorCss"] = "error"
			viewData["codeError"] = "Please supply the code."
			viewData["codeRedirect"] = False
		elif PatientCode.validateCode(request.all["code"]) is None:
			viewData["codeErrorCss"] = "error"
			viewData["codeError"] = "Please supply a valid code."
			viewData["codeRedirect"] = False
		else:
			viewData["codeValue"] = request.all["code"]
	
		if len(request.all["nameDoc"]) == 0:
			viewData["nameDocErrorCss"] = "error"
			viewData["nameDocError"] = "Please supply Doctor name."
			viewData["codeRedirect"] = False
		else:
			viewData["nameDocValue"] = request.all["nameDoc"]
		
		if len(request.all["nameHospital"]) == 0:
			viewData["nameHospitalErrorCss"] = "error"
			viewData["nameHospitalError"] = "Please supply admin name."
			viewData["codeRedirect"] = False
		else:
			viewData["nameHospitalValue"] = request.all["nameHospital"]

		if viewData["codeRedirect"]:
			redirect("/lookup/" + request.all["code"])

	if "userBtn" in request.all:
		viewData["email"] = request.all["email"]
		viewData["pwd"] = request.all["pwd"]
		user = Patient.get_by(email=viewData["email"], password=viewData["pwd"])
		print "user = %s" % user
		if user:
			request.appSession["patient"] = user
			redirect("/dashboard")
		else:
			if Patient.get_by(email=viewData["email"]):
				viewData["loginMessage"] = "Your Password is incorrect"
			else:
				viewData["signupMessage"] = "This email %s is not registered would you like to sign up?" % viewData["email"]
	return viewData


@route("/api/patient/validateCred", method="POST")
def api_validateUser():
	viewData = {
		"success": True,
		"message": "",
		"isNewUser": False,
		"email": request.all["email"],
		"pwd": request.all["pwd"]
	}

	user = Patient.get_by(email=viewData["email"])

	print "user = %s" % user
	if user:
		if user.password == viewData["pwd"]:
			request.appSession["patient"] = user
		else:
			viewData["success"] = False
			viewData["message"] = "Invalid user name and/or password"

	else:
		viewData["success"] = False
		viewData["isNewUser"] = True
		
	return viewData