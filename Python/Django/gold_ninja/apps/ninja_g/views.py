from django.shortcuts import render, redirect, HttpResponse
import random
from datetime import datetime
#CONTROLLER
# Create your views here.
def index(request):
    if 'activities' not in request.session:
        request.session['activities'] = ''
    if 'goldcount' not in request.session:
        request.session['goldcount'] = 0
    return render(request, 'ninja_g/index.html')

def results(request, place):
    gold_won = 0
    if place == 'farm':
        gold_won = random.randint(10,20)
        request.session['activities'] += 'You won ' + str(gold_won) + ' gold at farm (' + str(datetime.now()) + ')\n'
        print request.session['goldcount']
    if place == 'cave':
        gold_won = random.randint(5,10)
        request.session['activities'] += 'You won ' + str(gold_won) + ' gold at cave (' + str(datetime.now()) + ')\n'
    if place == 'house':
        gold_won = random.randint(2,5)
        request.session['activities'] += 'You won ' + str(gold_won) + ' gold at house (' + str(datetime.now()) + ')\n'
    if place == 'casino':
        chance = random.randint(0,3)
        gold_won = random.randint(0,50)
        if chance >= 1:
            gold_won *= -1
            request.session['activities'] += 'You lost ' + str(gold_won) + ' gold at casino (' + str(datetime.now()) + ')\n'
        else:
            request.session['activities'] += 'You won ' + str(gold_won) + ' gold at casino (' + str(datetime.now()) + ')\n'
    request.session['goldcount'] += gold_won

    return redirect('/')
