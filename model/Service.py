class Service:
	def __init__(self):
		pass

	def inject(self, key, value):
		self.__dict__[key] = value
				
