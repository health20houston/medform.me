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

	ssn = Field(Unicode(150), nullable=True)
	phoneNumbers = OneToMany("PhoneNumber")
	emergencies = OneToMany("Emergency")

	def __repr__(self):
		return "<Person %s %s (%s)>" % (self.firstName, self.lastName, self.id)
