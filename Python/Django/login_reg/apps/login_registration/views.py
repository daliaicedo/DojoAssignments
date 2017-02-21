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
    return redirect('/')
