from django.urls import include, path

from .note_url import urlpatterns as note_urlpatterns

urlpatterns = [
    path('', include(note_urlpatterns)),
]
