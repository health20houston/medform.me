import os, sys

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
	dob="09/29/1978",
	gender="M"
)

session.commit()
