from flask import Flask, request, redirect, render_template, session, flash
import re
from mysqlconnection import MySQLConnector

app = Flask(__name__)
app.secret_key = "K3Y"
mysql = MySQLConnector(app,'emailValidation')

@app.route('/')
def index():
    return render_template('index.html')

@app.route('/process', methods = ['POST'])
def process():
    email_regex = re.compile(r"[^@]+@[^@]+\.[^@]+")
    if email_regex.match(request.form['email']):
        print  "this is a valid email"
        query ='insert into emails(email, created_at, updated_at) values(:email, now(), now())'
        data = {'email': request.form['email']}
        mynewid = mysql.query_db(query,data)
        print "i just inserted this", mynewid
        flash('This is a valid email! Your email {} is valid!'.format(request.form['email   ']))
        return redirect('/success')
    else:
        print "this is not valid email"
        flash('this is not a valid email!!!')
    return redirect('/')

@app.route('/success')
def success():
    query = 'select * from emails'
    listofemails = mysql.query_db(query)
    return render_template('success.html', emails = listofemails)

app.run(debug=True)
