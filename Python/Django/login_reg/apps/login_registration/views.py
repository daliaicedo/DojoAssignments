from django.shortcuts import render, redirect
from .models import Users
# CONTROLLER
# Create your views here.
def index(request):
    return render(request, 'login_registration/index.html')

def registration(request):
    print "registration in process"
    print Users
    print request.POST['first_name']
    Users.objects.create(first_name=request.POST['first_name'], last_name=request.POST['last_name'], email=request.POST['email'], password=request.POST['password'])

    print "page loading"
    return success(request, request.POST['first_name'])

def success(request, first_name=''):
    print "PRINGINT NAME " + first_name
    print "made it to success"
    users = Users.objects.get(first_name=first_name)
    print str(users)

    context = {
    'first_name': 'hi',
    'user':users
    }
    return render(request, 'login_registration/success.html', context)
