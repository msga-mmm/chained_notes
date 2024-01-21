from rest_framework import serializers

from chained_notes.adapters.database.models import Note


class NoteSerializer(serializers.ModelSerializer):
    class Meta:
        model = Note
        fields = "__all__"
