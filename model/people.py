import config 

from elixir import *

class Person(Entity):
	using_options(tablename="person")

	firstName = Field(Unicode(30), nullable=False)
	lastName = Field(Unicode(30), nullable=False)
	email = Field(Unicode(255), nullable=False)
	password = Field(Unicode(150), nullable=False)
	dob = Field(DateTime(), nullable=False)
	gender = Field(Enum("M", "F"), nullable=False)

	ssn = Field(Unicode(150), nullable=True)
	
