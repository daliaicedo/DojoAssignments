from django.shortcuts import render
#CONTROLLER
# Create your views here.
def index(request):
    print('8'*100)
    return render(request, 'ninja_diss/index.html')

def turtle(request):
    context = {
    'img_path' : 'img/tmnt.jpg'
    }
    return render(request, 'ninja_diss/ninjas.html', context)

def colors(request, ninja_color):
    context = {
    'img_path' : ''
    }
    if ninja_color == 'blue':
        context['img_path']= 'img/tmnt-blue.jpg'
    elif ninja_color == 'purple':
        context['img_path']= 'img/tmnt-purple.jpg'
    elif ninja_color == 'red':
        context['img_path']= 'img/tmnt-red.jpg'
    elif ninja_color == 'orange':
        context['img_path']= 'img/tmnt-orange.jpg'
    else:
        print 'no'
        context['img_path']= 'img/april.png'

    return render(request, 'ninja_diss/ninjas.html', context)
