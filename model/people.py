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
	middleName = Field(Unicode(30), nullable=True)
	maritalStatus = Field(Enum("Married", "Single", "Divorced"), nullable=True)
	preferredLang = Field(Unicode(30), nullable=True)
	occupation = Field(Unicode(30), nullable=True) 
	religion = Field(Unicode(30), nullable=True) 
	race = Field(Unicode(30), nullable=True) 
	ethnicity = Field(Unicode(30), nullable=True)
	weight = Field(Integer(), nullable=True)
	height = Field(Unicode(10), nullable=True) 




	def __repr__(self):
		return "<Person %s %s (%s)>" % (self.firstName, self.lastName, self.id)
