from django.shortcuts import render, redirect
# CONTROLLER
# Create your views here.
def index(request):
    return render(request, 'survey/index.html')

def process_survey(request):
    if request.method == "POST":
        print 'got post request'
        request.session['firstname'] = request.POST['firstname']
        request.session['lastname'] = request.POST['lastname']
        request.session['languages'] = request.POST['languages']
        request.session['cities'] = request.POST['cities']
    return redirect('/results')

def results(request):
    if request.method == "GET":
        print "showing on results page!!!!!!!!!!!!!!!!!!!!!"
        return render(request, 'survey/results.html')
