import bottle, config, re
from bottle import request, response, redirect

from model.Factory import Factory

def preRequest(callback):
	def wrapper(*args, **kwargs):
		if not request.path.startswith("/resources"):
			#
			# Setup session and environment stuff
			#
			request.appSession = request.environ.get("beaker.session")
			request.all = dict(request.query.items() + request.forms.items())

			request.factory = Factory()

			# 
			# Finally call the the next method in the chain
			#
			body = callback(*args, **kwargs)
			return body

		else:
			body = callback(*args, **kwargs)
			return body
			
	return wrapper
