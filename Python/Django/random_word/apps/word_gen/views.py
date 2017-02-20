from django.shortcuts import render, redirect
import string
import random

#CONTROLLER
# Create your views here.
def index(request):
    print('8'*100)
    return render(request, 'word_gen/index.html')

def word_gen(request):
    if request.method == "POST":
        characters = ['0', '1', '2', '3', '4', '4', '5', '6',
                      '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H',
                      'I', 'H', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R',
                      'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z']
        generated_word = ''
        for i in range(14):
            letter = random.choice(characters)
            generated_word = generated_word + letter
        request.session['random_word'] = generated_word
    return redirect('/')
