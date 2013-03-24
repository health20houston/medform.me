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

bladderProblems = MedicalHistoryGroup(groupName="Bladder Problems?", sortOrder=1, items=[
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

thyroid = MedicalHistoryGroup(groupName="Thyroid", sortOrder=1, items=[
	MedicalHistoryItem(itemName="Hypothyroid", sortOrder=1),
	MedicalHistoryItem(itemName="Hypethyroid", sortOrder=1)
])

stomach = MedicalHistoryGroup(groupName="Stomach/GastroIntestinal", sortOrder=1, items=[
	MedicalHistoryItem(itemName="Duodenal ulcer", sortOrder=1),
	MedicalHistoryItem(itemName="Gastric/stomach ulcer", sortOrder=1),
	MedicalHistoryItem(itemName="Heartburn/Reflux", sortOrder=1)
])

glaucoma = MedicalHistoryGroup(groupName="Glaucoma", sortOrder=1, items=[
	MedicalHistoryItem(itemName="Glaucoma", sortOrder=1)
])

cataracts = Surgery(name="Cataracts", sortOrder=1)

lasik = Surgery(name="LASIK", sortOrder=1)

tonsillectomy = Surgery(name="Tonsillectomy", sortorder=1)

thyroidectomy = Surgery(name="Thyroidectomy", sortorder=1)

adenoidectomy = Surgery(name="Adenoidectomy", sortorder=1)

coronaryBypass = Surgery(name="Coronary Bypass", sortorder=1)

cardiacStents = Surgery(name="Cardiac Stents", sortorder=1)

pacemaker = Surgery(name="Pacemaker", sortorder=1)

heartValve = Surgery(name="Heart Valve", sortorder=1)

gallbladder = Surgery(name="Gallbladder", sortorder=1)

appendectomy = Surgery(name="Appendectomy", sortorder=1)

bowelResection = Surgery(name="Bowel/stomach resection", sortorder=1)

hemorrhoidectomy = Surgery(name="Hemorrhoidectomy", sortorder=1)

bariatric = Surgery(name="Bariatric surgery", sortorder=1)

hysterectomy = Surgery(name="Hysterectomy", sortorder=1)

endoscopy = Surgery(name="Endoscopy", sortorder=1)

colonoscopy = Surgery(name="Colonoscopy", sortorder=1)

hernia = Surgery(name="Hernia", sortorder=1)

spinalSurgery = Surgery(name="Spinal Surgery", sortorder=1)

tubalLigation = Surgery(name="Tubal Ligation", sortorder=1)

bladderSurgery = Surgery(name="Bladder surgery", sortorder=1)

prostateSurgery = Surgery(name="Prostate surgery/resection", sortorder=1)

sSec = Surgery(name="C-Section", sortorder=1)

orthopedicJoints = Surgery(name="Orthopedic/joints", sortorder=1)

penicillin = Allergy(name="Penicillin", sortorder=1)
hypertension = FamilyHistory(name="Hypertension", sortorder=1)
coronaryArteryDisease = FamilyHistory(name="Coronary Artery Disease", sortorder=1)
elevatedCholesterol = FamilyHistory(name="Elevated Cholesterol", sortorder=1)
stroke = FamilyHistory(name="Stroke", sortorder=1)
diabetes = FamilyHistory(name="Diabetes", sortorder=1)
thyroidfh = FamilyHistory(name="Thyroid", sortorder=1)
renalDiseaseDialysis = FamilyHistory(name="Renal Disease/Dialysis", sortorder=1)
cancer = FamilyHistory(name="Cancer", sortorder=1)
arthritis = FamilyHistory(name="Arthritis", sortorder=1)
tb = FamilyHistory(name="TB", sortorder=1)
lungDisease = FamilyHistory(name="Lung disease", sortorder=1)
asthma = FamilyHistory(name="Asthma", sortorder=1)
headache = FamilyHistory(name="Headache", sortorder=1)
seizures = FamilyHistory(name="Seizures", sortorder=1)
mentalIllness = FamilyHistory(name="Mental Illness", sortorder=1)
addictions = FamilyHistory(name="Addictions", sortorder=1)

peanuts = Allergy(name="Peanuts", sortorder=1)

latex = Allergy(name="Latex", sortorder=1)

milk = Allergy(name="Milk", sortorder=1)

eggs = Allergy(name="Eggs", sortorder=1)

almonds = Allergy(name="Almonds", sortorder=1)

cashews = Allergy(name="Cashews", sortorder=1)

walnuts = Allergy(name="Walnut", sortorder=1)

bass = Allergy(name="Bass", sortorder=1)

cod = Allergy(name="Cod", sortorder=1)

flounder = Allergy(name="Flounder", sortorder=1)

crab = Allergy(name="Crab", sortorder=1)

lobster = Allergy(name="Lobster", sortorder=1)

shrimp = Allergy(name="Shrimp", sortorder=1)

Soy = Allergy(name="Soy", sortorder=1)

Wheat = Allergy(name="Wheat", sortorder=1)

Aspirin = Allergy(name="Aspirin", sortorder=1)

history = FamilyHistory(name="testHistory",sortorder=1)






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
	postalCode="77546",

	medicalHistory=[
		MedicalHistoryItem.get_by(itemName="Pills"),
		MedicalHistoryItem.get_by(itemName="Glaucoma")
	]
)

PatientCode.generateNewCode(patient=adam)


session.commit()


print Patient.get_by(firstName="Adam")