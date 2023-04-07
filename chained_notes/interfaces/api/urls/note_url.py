from django.urls import include, path
from rest_framework.routers import SimpleRouter

from chained_notes.interfaces.api.views import NoteViewSet

router = SimpleRouter()
router.register(r'notes', NoteViewSet)

urlpatterns = [
    path('', include(router.urls)),
]
