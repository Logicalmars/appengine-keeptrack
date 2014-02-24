from django.conf.urls.defaults import *
from django.contrib import admin
import dbindexer

handler500 = 'djangotoolbox.errorviews.server_error'

# django admin
admin.autodiscover()

# search for dbindexes.py in all INSTALLED_APPS and load them
dbindexer.autodiscover()

urlpatterns = patterns('',
    ('^_ah/warmup$', 'djangoappengine.views.warmup'),
    ('^$', 'keeptrack.views.index'),
    (r'^track/$', 'keeptrack.views.new_track'),    
    (r'^track/(?P<track_id>\d+)/$', 'keeptrack.views.show_track'),
    (r'^track/(?P<track_id>\d+)/new$', 'keeptrack.views.add_entry'),
    ('^admin/', include(admin.site.urls)),
)
