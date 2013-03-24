import config 

from elixir import *

metadata.bind = config.DB_CONNECTION_STRING
metadata.bind.echo = True

class Allergy(Entity):
	using_options(tablename="allergy")

	name = Field(Unicode(50), nullable=False)
	sortOrder = Field(Integer(), nullable=False, default=0)

	def __repr__(self):
		return "<Allergy %s (%s)>" % (self.name, self.id)