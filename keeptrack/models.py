import cgi
from google.appengine.ext import ndb
from django.utils import timezone

# Create your models here.

class Track(ndb.Model):
	name = ndb.StringProperty()
	description = ndb.StringProperty()
	
	def add_entry(self):
		entry = Entry(parent=self.key)
		entry.put()

class Entry(ndb.Model):
	timestamp = ndb.DateTimeProperty(auto_now_add=True)
	