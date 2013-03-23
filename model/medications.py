import config 

from elixir import *

metadata.bind = config.DB_CONNECTION_STRING
metadata.bind.echo = True

class Medication(Entity):
	using_options(tablename="medication")

	name = Field(Unicode(50), nullable=False)
	dosage = Field(Unicode(10), nullable=True)
	frequency = Field(Unicode(10), nullable=True)
	length = Field(Unicode(10), nullable=True)
	sortOrder = Field(Integer(), nullable=False, default=0)

	def __repr__(self):
		return "<MedicalHistoryGroup %s (%s)>" % (self.name, self.id)