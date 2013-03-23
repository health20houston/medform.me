import config 

from elixir import *

class PhoneNumber(Entity):
	using_options(tablename="phoneNumber")
	people = ManyToOne("Person")

	number = Field(Integer(10), nullable=False)
	numType = Field(Enum("Home", "Mobile", "Work"), nullable=False)
	exten = Field(Integer(5), nullable=True)

	def __repr__(self):
		return "<Phone %s %s (%s)>" % (self.number, self.numType)