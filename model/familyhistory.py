import config 

from elixir import *

metadata.bind = config.DB_CONNECTION_STRING
metadata.bind.echo = True

class FamilyHistory(Entity):
	using_options(tablename="familyhistory")
	people = ManyToMany("Patient")

	name = Field(Unicode(50), nullable=False)
	sortOrder = Field(Integer(), nullable=False, default=0)

	def __repr__(self):
		return "<Family History %s (%s)>" % (self.name, self.id)