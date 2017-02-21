from __future__ import unicode_literals

from django.db import models

# Create your models here.
class Users(models.Model):
    first_name = models.CharField(max_length=100)
    last_name = models.TextField(max_length=100)
    email = models.TextField(max_length=100)
    password = models.TextField(max_length=6)
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)
