import os, sys
from dateutil.parser import *

sys.path.insert(0, "../")


from elixir import *
from config import *
from model.model import *

metadata.bind = config.DB_CONNECTION_STRING
metadata.bind.echo = True

setup_all(True)

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