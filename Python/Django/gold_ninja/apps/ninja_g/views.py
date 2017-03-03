from django.shortcuts import render
#CONTROLLER
# Create your views here.
def index(request):
    print('8'*100)
    return render(request, 'ninja_g/index.html')
