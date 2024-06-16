from rest_framework import viewsets
from rest_framework.permissions import IsAuthenticated

from chained_notes.adapters.database.models.note_model import Note
from chained_notes.interfaces.api.serializers.note_serializer import NoteSerializer


class NoteViewSet(viewsets.ModelViewSet):
    queryset = Note.objects.all()
    serializer_class = NoteSerializer
    permission_classes = [IsAuthenticated]
