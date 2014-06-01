from keeptrack.models import Track, Entry
from django.http import HttpResponse, HttpResponseRedirect
from django.shortcuts import render_to_response
from google.appengine.ext import ndb
from django.utils import timezone
import logging
from datetime import datetime
from calendar import HTMLCalendar
import calendar

logger = logging.getLogger('django')


def index(request):
    track_list = Track.query().order(Track.name).fetch()
    return render_to_response('keeptrack/index.html', {'track_list': track_list})


def new_track(request):
    if request.method == 'POST':
        name = request.POST["track_name"]
        description = request.POST["track_description"]
        track = Track(name=name, description=description)
        track.put()
        return HttpResponseRedirect("/")
    else:
        return HttpResponseRedirect("/")


def show_track(request, track_id):
    key = ndb.Key('Track', int(track_id))
    track = key.get()
    if track is None:
        return HttpResponse("Wrong track number")
    else:
        today = datetime.today()
        c = HTMLCalendar()
        monthdays = c.monthdayscalendar(today.year, today.month)
        month_name = calendar.month_name[today.month]

        entry_list = Entry.query(ancestor=key).order(Entry.timestamp).fetch()
        return render_to_response('keeptrack/track.html',
                                  {'track': track,
                                   'entry_list': _correct_timezone(entry_list),
                                   'monthdays': monthdays,
                                   'month_name': month_name,
                                   'year_name': today.year
                                   })


def add_entry(request, track_id):
    key = ndb.Key('Track', int(track_id))
    track = key.get()
    if track is None:
        return HttpResponse("Wrong track number")
    else:
        track.add_entry()
        return HttpResponseRedirect("/track/" + track_id)


def remove_entry(request, entry_key):
    key = ndb.Key(urlsafe=entry_key)
    entry = key.get()
    if entry is None:
        return HttpResponse("Wrong entry key")
    else:
        parent_key = key.parent()
        key.delete()
        return HttpResponseRedirect("/track/" + str(parent_key.id()))


def _correct_timezone(entry_list):
    # Google ndb don't supoort tzinfo, so need to add UTC before displaying for users.
    ret_list = []
    for entry in entry_list:
        entry.timestamp = entry.timestamp.replace(tzinfo=timezone.utc)
        ret_list.append(entry)

    return ret_list
