import random
from flask import Flask, render_template, request, redirect, session
app = Flask(__name__)
app.secret_key= "K3Y"

@app.route('/')
def index():
    return render_template('index.html')

@app.route('/guess', methods=['POST'])
def guess():
    if 'num' not in session:
        session['num'] = random.randint(1,101)
    print "the number is: {}" .format(session['num'])

    guess = int(request.form['guessBox'])
    print "the guess is: {}".format(guess)
    print type(session['num'])  #check the type of session['num']

    if guess > session['num']:
        session['result']= "too high"
    elif guess < session['num']:
        session['result']= " too small"
    elif guess == session['num']:
        session['result']= "winner"
    return redirect('/')
    

app.run(debug=True)
