import config 

from elixir import *

metadata.bind = config.DB_CONNECTION_STRING
metadata.bind.echo = True

class Hospitalization(Entity):
	using_options(tablename="hospitalizatoin")
	people = ManyToOne("Patient")

	forWhat = Field(Unicode(50), nullable=False)
	when = Field(Date(), nullable=False)

	def __repr__(self):
		return "<Surgery %s (%s)>" % (self.name, self.id)