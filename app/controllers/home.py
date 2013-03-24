from bottle import view, route, request

from model.model import *


@route("/")
@route("/", method="POST")
@view("home")
def home():
    viewData = {
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
        "nameHospitalValue": ""
    }
    # validation for code submission
    if "codeBtn" in request.all:
        if len(request.all["code"]) == 0:
            viewData["codeErrorCss"] = "error"
            viewData["codeError"] = "Please supply the code."
        else:
            viewData["codeValue"] = request.all["code"]
        if len(request.all["nameDoc"]) == 0:
            viewData["nameDocErrorCss"] = "error"
            viewData["nameDocError"] = "Please supply Doctor name."
        else:
            viewData["nameDocValue"] = request.all["nameDoc"]
        if len(request.all["nameHospital"]) == 0:
            viewData["nameHospitalErrorCss"] = "error"
            viewData["nameHospitalError"] = "Please supply admin name."
        else:
            viewData["nameHospitalValue"] = request.all["nameHospital"]

    return viewData
