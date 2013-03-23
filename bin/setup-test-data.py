import config 

from elixir import *

from model.model import *

setup_all(True)

adam = Person(
	firstName="Adam",
	lastName="Presley",
	email="adam@adampresley.com",
	password="password",
	dob="09/29/1978",
	gender="M"
)

session.commit()
