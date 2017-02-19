from django.shortcuts import render, HttpResponse
from datetime import datetime, tzinfo

#CONTROLLER
# Create your views here.
def index(request):
    now = datetime.now().strftime('%B %d, %Y\n%I:%M:%S %p')
    print now
    context = {
    "time_display": now
    }
    print ("8"*808)
    return render(request, "timedisplay/index.html",context)
