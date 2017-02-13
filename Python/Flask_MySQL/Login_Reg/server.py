from flask import Flask, session, render_template, redirect, flash, request
from flask_bcrypt import Bcrypt
from mysqlconnection import MySQLConnector

app = Flask(__name__)
app.secret_key = 'k3y'
bcrypt = Bcrypt(app)
mysql = MySQLConnector(app, 'mydb')


@app.route('/')
def index():
    return render_template('index.html')



app.run(debug=True)
