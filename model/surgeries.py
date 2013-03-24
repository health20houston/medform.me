import config 

from elixir import *

metadata.bind = config.DB_CONNECTION_STRING
metadata.bind.echo = True

class Surgery(Entity):
	using_options(tablename="surgery")
	people = ManyToOne("Patient")

	name = Field(Unicode(50), nullable=False)
	sortOrder = Field(Integer(), nullable=False, default=0)

	def __repr__(self):
		return "<Surgery %s (%s)>" % (self.name, self.id)