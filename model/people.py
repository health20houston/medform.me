import config 

from elixir import *

metadata.bind = config.DB_CONNECTION_STRING
metadata.bind.echo = True

class Person(Entity):
	using_options(tablename="person")

	firstName = Field(Unicode(30), nullable=False)
	lastName = Field(Unicode(30), nullable=False)
	email = Field(Unicode(255), nullable=False)
	password = Field(Unicode(150), nullable=False)
	dob = Field(Date(), nullable=False)
	gender = Field(Enum("M", "F"), nullable=False)
	willAdvance = Field(Boolean, nullable=True)

	ssn = Field(Unicode(150), nullable=True)
	phoneNumbers = OneToMany("PhoneNumber")
	emergencyContacts = OneToMany("EmergencyContact")
	primaryCare = OneToOne("PrimaryCare")
	middleName = Field(Unicode(), nullable=True)
	maritalStatus = Field(Unicode(), nullable=True)
	preferredLang = Field(Unicode(), nullable=True)
	occupation = Field(Unicode(), nullable=True) 
	religion = Field(Unicode(), nullable=True) 
	race = Field(Unicode(), nullable=True) 
	ethnicity = Field(Unicode(), nullable=True)
	weight = Field(Unicode(), nullable=True)
	height = Field(Unicode(), nullable=True) 




	def __repr__(self):
		return "<Person %s %s (%s)>" % (self.firstName, self.lastName, self.id)
