import os

DEBUG = True
BIND_TO_OUTSIDE_IP = False
BIND_TO_PORT = 8080
ROOT_PATH = os.path.abspath(os.path.dirname(__file__))
APP_PATH = os.path.join(ROOT_PATH, "app")
RESOURCES_PATH = os.path.join(APP_PATH, "resources")
BASE_TEMPLATE_PATH = os.path.join(APP_PATH, "views")
SESSION_PATH = os.path.join(APP_PATH, "sessions")


ENV = "dev"
DBNAME = "medformme"

ENVIRONMENTS = {
	"dev": "sqlite:///%s/%s.db" % (ROOT_PATH, DBNAME),
	"test": "sqlite:///%s/%s.db" % (ROOT_PATH, DBNAME),
	"beta": "sqlite:///%s/%s.db" % (ROOT_PATH, DBNAME),
	"demo": "mysql://root:password@localhost/%s" % DBNAME,
	"prod": "mysql://root:password@localhost/%s" % DBNAME
}

DB_CONNECTION_STRING = ENVIRONMENTS[ENV]

#
# Session settings
#
SESSION_OPTS = {
	"session.type": "ext:database",
	"session.cookie_expires": 14400,
	"session.auto": True,
	"session.url": DB_CONNECTION_STRING,
	"session.table_name": "admin_session",
	"session.lock_dir": os.path.join(SESSION_PATH, "lock"),
	"session.data_dir": os.path.join(SESSION_PATH, "data")
}
