from flask import Flask, request, redirect, render_template, session, flash
from mysqlconnection import MySQLConnector
app = Flask(__name__)
mysql = MySQLConnector(app,'friendsdb')

@app.route('/')
def index():
    query = "SELECT * FROM friends"                           # define your query
    friends = mysql.query_db(query)                           # run query with query_db()
    return render_template('index.html', all_friends=friends) # pass data to our template

@app.route('/friends', methods=['POST'])
def create():
    print request.form['first_name']
    print request.form['last_name']
    print request.form['occupation']

    fname =  request.form['first_name']
    lname =  request.form['last_name']
    occ =  request.form['occupation']
    # add a friend to the database!
    query = 'insert into friends(first_name, last_name, occupation) values (:first, :last, :occ)'
    data = {'first' : fname, 'last' : lname, 'occ' : occ}

    inserted_friend = mysql.query_db(query,data)
    print inserted_friend
    return redirect('/')
app.run(debug=True)
