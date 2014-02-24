from keeptrack.models import Track, Entry
from django.http import HttpResponse
from django.shortcuts import render_to_response
from google.appengine.ext import ndb

def index(request):
	track_list = Track.query().order(Track.name).fetch()
	return render_to_response('keeptrack/index.html', {'track_list': track_list})

def show_track(request, track_id):
	key = ndb.Key('Track', int(track_id))
	track = key.get()
	if track == None:
		return HttpResponse("Wrong track number")
	else:
		entry_list = Entry.query(ancestor=key).order(Entry.timestamp).fetch()
		return render_to_response('keeptrack/track.html', {'track':track, 'entry_list':entry_list})

def add_entry(request, track_id):
	key = ndb.Key('Track', int(track_id))
	track = key.get()
	if track == None:
		return HttpResponse("Wrong track number")
	else:
		track.add_entry()
		return show_track(request, track_id)