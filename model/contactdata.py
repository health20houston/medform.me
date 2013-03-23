import config 

from elixir import *

class PhoneNumber(Entity):
	using_options(tablename="phoneNumber")
	people = ManyToOne("Person")
	emergencyContact = ManyToOne("EmergencyContact")
	primaryCare = ManyToOne("PrimaryCare")

	number = Field(Integer(10), nullable=False)
	numType = Field(Enum("Home", "Mobile", "Work"), nullable=False)
	exten = Field(Integer(5), nullable=True)

	def __repr__(self):
		return "<Phone %s %s (%s)>" % (self.number, self.numType)

class EmergencyContact(Entity):
	using_options(tablename="emergencyContact")
	people = ManyToOne("Person")
	firstName = Field(Unicode(30), nullable=False)
	lastName = Field(Unicode(30), nullable=False)
	phoneNumber = OneToOne("PhoneNumber", inverse="emergencyContact")
	relationship = Field(Unicode(150), nullable=False)

	def __repr__(self):
		return "<EmergencyContact %s %s (%s)>" % (self.firstName, self.lastName)

class PrimaryCare(Entity):
	using_options(tablename="primaryCare")
	people = ManyToOne("Person")
	firstName = Field(Unicode(30), nullable=False)
	lastName = Field(Unicode(30), nullable=False)
	phonenumber = OneToOne("PhoneNumber",  inverse="primaryCare")

	def __repr__(self):
		return "<Primary Care %s %s (%s)>" % (self.firstName, self.lastName)

class InsurancePolicy(Entity):
	using_options(tablename="InsurancePolicy")
	people = ManyToOne("Person")
	companyName = Field(Unicode(30), nullable=False)
	dateEffective = Field(Date, nullable=False)
	policyNumber = Field(Unicode(30), nullable=False)
	groupNumber = Field(Unicode(30), nullable=False)
	isPrimary = Field(Boolean, nullable=True)

	def __repr__(self):
		return "<Insurance %s %s %s (%s)>" % (self.company, self.policyNumber, self.groupNumber)
