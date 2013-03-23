import config 

from elixir import *

metadata.bind = config.DB_CONNECTION_STRING
metadata.bind.echo = True

class MedicalHistoryGroup(Entity):
	using_options(tablename="medicalhistorygroup")

	groupName = Field(Unicode(50), nullable=False)
	sortOrder = Field(Integer(), nullable=False, default=0)
	items = OneToMany("MedicalHistoryItem")

	def __repr__(self):
		return "<MedicalHistoryGroup %s (%s)>" % (self.groupName, self.id)


class MedicalHistoryItem(Entity):
	using_options(tablename="medicalhistoryitem")

	itemName = Field(Unicode(150), nullable=False)
	sortOrder = Field(Integer(), nullable=False, default=0)
	group = ManyToOne("MedicalHistoryGroup")
	person = ManyToOne("Patient")

	def __repr__(self):
		return "<MedicalHistoryItem %s (%s)>" % (self.itemName, self.id)

