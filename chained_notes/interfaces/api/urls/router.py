from rest_framework.routers import DefaultRouter

import note_url

router = DefaultRouter()
router.registry.extend(note_url.router.registry)
