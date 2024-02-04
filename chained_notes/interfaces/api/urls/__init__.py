from rest_framework.routers import DefaultRouter

from . import note_url

router = DefaultRouter()
router.registry.extend(note_url.router.registry)
