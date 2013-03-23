import os, sys
from dateutil.parser import *

sys.path.insert(0, "../")


from elixir import *
from config import *
from model.model import *

metadata.bind = config.DB_CONNECTION_STRING
metadata.bind.echo = True

setup_all(True)

#
# Setup medical groups and items
#
heartProblems = MedicalHistoryGroup(groupName="Heart Problems", sortOrder=1, items=[
	MedicalHistoryItem(itemName="Chest Pain", sortOrder=1),
	MedicalHistoryItem(itemName="Irregular Heartbeat", sortOrder=2),
	MedicalHistoryItem(itemName="Palpitations", sortOrder=3),
	MedicalHistoryItem(itemName="Heart Attack", sortOrder=4),
	MedicalHistoryItem(itemName="Heart Surgery", sortOrder=5),
	MedicalHistoryItem(itemName="Angioplasty", sortOrder=6)
])

lungProblems = MedicalHistoryGroup(groupName="Lung Problems", sortOrder=2, items=[
	MedicalHistoryItem(itemName="Shortness of Breath", sortOrder=1),
	MedicalHistoryItem(itemName="Emphysema", sortOrder=2),
	MedicalHistoryItem(itemName="COPD", sortOrder=3),
	MedicalHistoryItem(itemName="Other", sortOrder=4),
])

diabetes = MedicalHistoryGroup(groupName="Heart Problems", sortOrder=1, items=[
	MedicalHistoryItem(itemName="Chest Pain", sortOrder=1),
	MedicalHistoryItem(itemName="Irregular Heartbeat", sortOrder=2),
	MedicalHistoryItem(itemName="Palpitations", sortOrder=3),
	MedicalHistoryItem(itemName="Heart Attack", sortOrder=4),
	MedicalHistoryItem(itemName="Heart Surgery", sortOrder=5),
	MedicalHistoryItem(itemName="Angioplasty", sortOrder=6)
])

adam = Person(
	firstName="Adam",
	lastName="Presley",
	email="adam@adampresley.com",
	password="password",
	dob=parse("09/29/1978"),
	gender="M",
	phoneNumbers=[
		PhoneNumber(number="9729995466", numType="Mobile")
	]
)


session.commit()


print Person.get_by(firstName="Adam")