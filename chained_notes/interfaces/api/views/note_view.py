from rest_framework import viewsets

from chained_notes.adapters.database.models import Note
from chained_notes.interfaces.api.serializers import NoteSerializer


class NoteViewSet(viewsets.ModelViewSet):
    queryset = Note.objects.all()
    serializer_class = NoteSerializer
