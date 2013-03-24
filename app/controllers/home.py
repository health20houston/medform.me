from bottle import view, route, request

from model.model import *

@route("/")
@route("/", method="POST")
@view("home")
def home():
	viewData = { 
		"email": "",
		"pwd": "",
		"success": True
	}

	if "userBtn" in request.all:
		viewData["email"] = request.all["email"]
		viewData["pwd"] = request.all["pwd"]

		if Patient.get_by(email=viewData["email"], password=viewData["pwd"]):
			
		else:
			viewData["sucess"] = False

		#Patient.query.all()

		#request.all[""]
		#viewData["message"] = "You submitted %s fool!" % request.all["test"]

	return viewData
