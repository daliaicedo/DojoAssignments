from django.conf.urls import url, include
from django.contrib import admin
from datetime import datetime
import random

urlpatterns = [
    url(r'^', include('apps.ninja_g .urls')),
]
