from rest_framework import serializers

from chained_notes.adapters.database.models import Note


class NoteSerializer(serializers.ModelSerializer):
    # pylint: disable=no-member
    class Meta(serializers.ModelSerializer.Meta):
        model = Note
        fields = "__all__"
