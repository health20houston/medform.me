from bottle import view, route, request

@route("/")
@view("home")
def home():
	viewData = { "message": "Hi there!" }
	return viewData
