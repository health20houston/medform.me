from bottle import view, route, request
from model.model import *
from app.decorators.security import *

@route("/api/patient/getcode")
@patientAccount
def api_patientGetCode(viewData):
	return { "test": 1 }
