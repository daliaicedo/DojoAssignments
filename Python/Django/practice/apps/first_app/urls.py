from django.conf.urls import url
from . import views
#Models-- views-- templates
urlpatterns = [
    url(r'^$', views.index)     # This line has changed!
  ]
