from django.conf.urls import url
from . import views
urlpatterns = [
    url(r'^$', views.index),
    url(r'^ninjas$', views.turtle),
    url(r'^ninjas/(?P<ninja_color>.+)?$', views.colors),
    url(r'^.+$', views.index)
]
