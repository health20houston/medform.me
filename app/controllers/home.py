from bottle import view, route, request, redirect

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

		user = Patient.get_by(email=viewData["email"], password=viewData["pwd"])
		
		if user:
			request.appSession["Patient"] = user
			redirect("/dashboard")
		else:
			viewData["sucess"] = False

		#Patient.query.all()

		#request.all[""]
		#viewData["message"] = "You submitted %s fool!" % request.all["test"]

	return viewData
