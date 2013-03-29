import config 
import random
import string
import datetime

from elixir import *

metadata.bind = config.DB_CONNECTION_STRING
metadata.bind.echo = True

class Patient(Entity):
	using_options(tablename="patient")

	firstName = Field(Unicode(30), nullable=False)
	lastName = Field(Unicode(30), nullable=False)
	email = Field(Unicode(255), nullable=False)
	password = Field(Unicode(150), nullable=False)
	dob = Field(Date(), nullable=False)
	gender = Field(Enum("M", "F"), nullable=False)
	willAdvance = Field(Boolean, nullable=True)

	address = Field(Unicode(100), nullable=False)
	address2 = Field(Unicode(100), nullable=True)
	city = Field(Unicode(100), nullable=False)
	state = Field(Unicode(100), nullable=False)
	postalCode = Field(Unicode(10), nullable=False)

	ssn = Field(Unicode(150), nullable=True)
	middleName = Field(Unicode(30), nullable=True)
	maritalStatus = Field(Enum("Married", "Single", "Divorced"), nullable=True)
	preferredLang = Field(Unicode(30), nullable=True)
	occupation = Field(Unicode(30), nullable=True) 
	religion = Field(Unicode(30), nullable=True) 
	race = Field(Unicode(30), nullable=True) 
	ethnicity = Field(Unicode(30), nullable=True)
	weight = Field(Integer(), nullable=True)
	height = Field(Unicode(10), nullable=True)

####Relationships
	phoneNumbers = OneToMany("PhoneNumber")
	emergencyContacts = OneToMany("EmergencyContact")
	insurancePolicies = OneToMany("InsurancePolicy")
	primaryCare = OneToOne("PrimaryCare")
	medicalHistory = OneToMany("MedicalHistoryItem")
	hospitalization = OneToOne("Hospitalization")
	familyHistories = ManyToMany("FamilyHistory")
	allergies = ManyToMany("Allergy")
	surgeries = ManyToMany("Surgery")
	code = OneToMany("PatientCode")

####Relationships to event Logging
	eventLog = OneToMany("EventLog")
	accessLog = OneToMany("AccessLog")

	def __repr__(self):
		return "<Patient %s %s (%s)>" % (self.firstName, self.lastName, self.id)


class PatientCode(Entity):
	using_options(tablename="patientcode")

	patient = ManyToOne("Patient")
	code = Field(Unicode(5), nullable=False)
	expirationDateTime = Field(DateTime(), nullable=False)

	EXPIRATION_MINUTES = 30

	def __repr__(self):
		return "<PatientCode %s>" % self.code

	@staticmethod
	def removeExpiredCodes():
		currentDateTime = datetime.datetime.now()
		oldEntries = PatientCode.query.filter(PatientCode.expirationDateTime <= currentDateTime).all()

		[e.delete() for e in oldEntries]

	@staticmethod
	def generateNewCode(patient):
		#
		# First remove old entries. Then see if we have a current one we can
		# pilfer. If not make a new one.
		#
		PatientCode.removeExpiredCodes()

		currentDateTime = datetime.datetime.now()
		currentCode = PatientCode.query.filter(PatientCode.expirationDateTime > currentDateTime).all()

		if currentCode:
			code = currentCode[0].code
			print "Reusing current code: %s" % code
		else:
			print "Generating new code."
			code = "".join(random.choice(string.ascii_letters) for i in xrange(8)).lower()
			newExpirationDateTime = datetime.datetime.now() + datetime.timedelta(minutes=PatientCode.EXPIRATION_MINUTES)
			PatientCode(patient=patient, code=code, expirationDateTime=newExpirationDateTime)

		return code

	@staticmethod
	def validateCode(code):
		return PatientCode.get_by(code=code)

class EventLog(Entity):
	using_options(tablename="eventLog") 

	eventType = Field(Enum("info", "error"), nullable=False)
	eventTimeStamp = Field(DateTime(), nullable=False)
	errorMessage = Field(Unicode(100), nullable=False)
	origFunction = Field(Unicode(25), nullable=True)
	userAssoc = ManyToOne("Patient")

	def __repr__(self):
		return "<Access Log Time: %s, Type: %s, ErrorMessage: (%s)>" % (self.eventTimeStamp, self.eventType, self.errorMessage)

class AccessLog(Entity):
	using_options(tablename="accessLog")

	code = Field(Unicode(5), nullable=False)
	ipAddress = Field(Unicode(45), nullable=False) #taking into account IPv6
	expirationDateTime = Field(DateTime(), nullable=False)
	accessTime = Field(DateTime(), nullable=False)
	accessingPractice = Field(Unicode(50), nullable=False)
	accessingPerson = Field(Unicode(50), nullable=False)
	patient = ManyToOne("Patient")

	def __repr__(self):
		return "<Accessed By: %s, @: %s, for: %s >" % (self.accessingPerson, self.accessTime, self.patient)