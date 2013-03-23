import config 

from elixir import *

class PhoneNumber(Entity):
	using_options(tablename="phoneNumber")
	people = ManyToOne("Patient")

	number = Field(Integer(10), nullable=False)
	numType = Field(Enum("Home", "Mobile", "Work"), nullable=False)
	exten = Field(Integer(5), nullable=True)

	def __repr__(self):
		return "<Phone %s %s (%s)>" % (self.number, self.numType)

class EmergencyContact(Entity):
	using_options(tablename="emergencyContact")
	people = ManyToOne("Patient")
	firstName = Field(Unicode(30), nullable=False)
	lastName = Field(Unicode(30), nullable=False)
	phonenumber = OneToOne("PhoneNumber")
	relationship = Field(Unicode(150), nullable=False)

	def __repr__(self):
		return "<EmergencyContact %s %s >" % (self.firstName, self.lastName)

class PrimaryCare(Entity):
	using_options(tablename="primaryCare")
	people = ManyToOne("Patient")
	firstName = Field(Unicode(30), nullable=False)
	lastName = Field(Unicode(30), nullable=False)
	phonenumber = OneToOne("PhoneNumber")

	def __repr__(self):
		return "<Primary Care %s %s >" % (self.firstName, self.lastName)