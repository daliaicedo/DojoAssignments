from django.shortcuts import render, redirect
from .models import Courses
# CONTROLLER
# Create your views here.
def index(request):
    print('8'*100)
    print Courses
    context = {
        "courses": Courses.objects.all()
    }
    return render(request, 'courses_log/index.html', context)

def add_course(request):
    #using ORM
    Courses.objects.create(classtitle=request.POST['classtitle'], description=request.POST['description'])
    #insert into ...
    return redirect ('/')

def destroy_course(request, classtitle):
    context = {
        "course": Courses.objects.filter(classtitle=classtitle).first()
    }
    print "moose is CUTE AF"
    print str(context['course'])
    # Courses.objects.filter(classtitle=classtitle).delete()
    return render(request, 'courses_log/destroy.html',context)
