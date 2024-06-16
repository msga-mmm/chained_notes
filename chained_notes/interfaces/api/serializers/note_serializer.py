from rest_framework import serializers

from chained_notes.adapters.database.models.note_model import Note


class NoteSerializer(serializers.ModelSerializer):
    class Meta:  # pyright: ignore [reportIncompatibleVariableOverride]
        model = Note
        fields = "__all__"
