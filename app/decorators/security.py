from bottle import request, redirect
from model.model import *

def patientAccount(fn):
	def wrapper(*args, **kwargs):
		if "patient" not in request.appSession:
			redirect("/")

		viewData = {
			"patient": request.appSession["patient"]
		}

		return fn(viewData, *args, **kwargs)

	return wrapper

