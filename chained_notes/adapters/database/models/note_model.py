from django.db import models


class Note(models.Model):
    title = models.CharField()
    body = models.TextField()
