from bottle import view, route, request

from model.model import *

@route("/")
@route("/", method="POST")
@view("home")
def home():
	viewData = { 
		"message": "Hi there!",
		"patients": Patient.query.all()
	}

	if "btnSubmit" in request.all:
		viewData["message"] = "You submitted %s fool!" % request.all["test"]

	return viewData
