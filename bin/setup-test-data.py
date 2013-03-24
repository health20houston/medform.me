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

diabetes = MedicalHistoryGroup(groupName="Diabetes", sortOrder=3, items=[
	MedicalHistoryItem(itemName="Borderline", sortOrder=1),
	MedicalHistoryItem(itemName="Diet Controlled", sortOrder=2),
	MedicalHistoryItem(itemName="Pills", sortOrder=3),
	MedicalHistoryItem(itemName="Insulin Injection", sortOrder=4)
])

highBloodPressure = MedicalHistoryGroup(groupName="High Blood Pressure", sortOrder=4, items=[
	MedicalHistoryItem(itemName="On Medications", sortOrder=1)
])

kidneyProblems = MedicalHistoryGroup(groupName="Kidney Problems", sortOrder=5, items=[
	MedicalHistoryItem(itemName="Cancer", sortOrder=1),
	MedicalHistoryItem(itemName="Dialysis", sortOrder=2)
])

liverProblems = MedicalHistoryGroup(groupName="Liver Problems", sortOrder=6, items=[
	MedicalHistoryItem(itemName="Hepatitis A", sortOrder=1),
	MedicalHistoryItem(itemName="Hepatitis B", sortOrder=2),
	MedicalHistoryItem(itemName="Hepatitis C", sortOrder=3),
	MedicalHistoryItem(itemName="Hepatitis D", sortOrder=4),
	MedicalHistoryItem(itemName="Cirhosis", sortOrder=5)
])

cancer = MedicalHistoryGroup(groupName="Cancer", sortOrder=7, items=[
	MedicalHistoryItem(itemName="Bladder", sortOrder=1),
	MedicalHistoryItem(itemName="Blood (Leukemia)", sortOrder=2),
	MedicalHistoryItem(itemName="Bone", sortOrder=3),
	MedicalHistoryItem(itemName="Breast", sortOrder=4),
	MedicalHistoryItem(itemName="Colon", sortOrder=5),
	MedicalHistoryItem(itemName="Lung", sortOrder=6),
	MedicalHistoryItem(itemName="Skin", sortOrder=7)
])

stroke = MedicalHistoryGroup(groupName="Stroke", sortOrder=8, items=[
	MedicalHistoryItem(itemName="Mild", sortOrder=1),
	MedicalHistoryItem(itemName="Severe", sortOrder=2),
	MedicalHistoryItem(itemName="When?", sortOrder=3),
	MedicalHistoryItem(itemName="Any residual problems?", sortOrder=4)
])

bloodClots = MedicalHistoryGroup(groupName="Blood Clots", sortOrder=8, items=[
	MedicalHistoryItem(itemName="Blood Clots", sortOrder=1)
])

bladderProblems = MedicalHistoryGroup(groupName="diabetes", sortOrder=1, items=[
	MedicalHistoryItem(itemName="Stress Incontinence", sortOrder=1),
	MedicalHistoryItem(itemName="Difficulty urinating", sortOrder=2),
	MedicalHistoryItem(itemName="Night time urination (#)", sortOrder=3),
	MedicalHistoryItem(itemName="Frequent Infections", sortOrder=4),
	MedicalHistoryItem(itemName="Bladder Cancer", sortOrder=5)
])

eatingDisorder = MedicalHistoryGroup(groupName="Eating Disorders", sortOrder=1, items=[
	MedicalHistoryItem(itemName="Eating Disorder", sortOrder=1)
])

anemia = MedicalHistoryGroup(groupName="Anemia", sortOrder=1, items=[
	MedicalHistoryItem(itemName="anemia", sortOrder=1)
])

cataract = MedicalHistoryGroup(groupName="Cataract", sortOrder=1, items=[
	MedicalHistoryItem(itemName="Cataract", sortOrder=1)
])


glaucoma = MedicalHistoryGroup(groupName="Glaucoma", sortOrder=1, items=[
	MedicalHistoryItem(itemName="Glaucoma", sortOrder=1)
])

thyroid = MedicalHistoryGroup(groupName="Thyroid", sortOrder=1, items=[
	MedicalHistoryItem(itemName="Hypothyroid", sortOrder=1),
	MedicalHistoryItem(itemName="Hypethyroid", sortOrder=1)
])

stomach = MedicalHistoryGroup(groupName="Stomach/GastroIntestinal", sortOrder=1, items=[
	MedicalHistoryItem(itemName="Duodenal ulcer", sortOrder=1),
	MedicalHistoryItem(itemName="Gastric/stomach ulcer", sortOrder=1),
	MedicalHistoryItem(itemName="Heartburn/Reflux", sortOrder=1)
])

adam = Patient(
	firstName="Adam",
	lastName="Presley",
	email="adam@adampresley.com",
	password="password",
	dob=parse("09/29/1978"),
	gender="M",
	phoneNumbers=[
		PhoneNumber(number="9729995466", numType="Mobile")
	],
	address="555 Another Way",
	city="Friendswood",
	state="Texas",
	postalCode="77546"
)


session.commit()


print Patient.get_by(firstName="Adam")