import config 
import random
import string
import datetime

from elixir import *

metadata.bind = config.DB_CONNECTION_STRING
metadata.bind.echo = True

class EventLog(Entity):
	using_options(tablename="eventlog") 

	eventType = Field(Enum("info", "error"), nullable=False)
	eventTimeStamp = Field(DateTime(), nullable=False)
	errorMessage = Field(Unicode(100), nullable=False)
	origFunction = Field(Unicode(25), nullable=True)
	userAssoc = ManyToOne("Patient")

	def __repr__(self):
		return "<Access Log Time: %s, Type: %s, ErrorMessage: (%s)>" % (self.eventTimeStamp, self.eventType, self.errorMessage)

class AccessLog(Entity):
	using_options(tablename="accessLog")

	patient = ManyToOne("Patient")
	code = Field(Unicode(5), nullable=False)
	ipAddress = Field(Unicode(45), nullable=False) #taking into account IPv6
	expirationDateTime = Field(DateTime(), nullable=False)
	accessTime = Field(DateTime(), nullable=False)
	accessingPractice = Field(Unicode(50), nullable=False)
	accessingPerson = Field(Unicode(50), nullbale=False)

	def __repr__(self):
		return "<Accessed By: %s, @: %s, for: %s >" % (self.accessingPerson, self.accessTime, self.patient)