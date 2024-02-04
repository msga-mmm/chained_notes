from django.contrib import admin

from chained_notes.adapters.database.models.note_model import Note


@admin.register(Note)
class NoteAdmin(admin.ModelAdmin):
    list_display = ('id', 'title')
