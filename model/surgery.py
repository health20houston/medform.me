import config 

from elixir import *

metadata.bind = config.DB_CONNECTION_STRING
metadata.bind.echo = True

class Surgery(Entity):
	using_options(tablename="surgery")
	people = ManyToOne("Patient")

	surgeryName = Field(Unicode(50), nullable=False)

	def __repr__(self):
		return "<Surgery %s (%s)>" % (self.surgeryName, self.id)