import re
from flask import Flask, request, redirect, render_template, session, flash
# from mysqlconnection import MySQLConnector
app = Flask(__name__)
app.secret_key= "K3Y"
# mysql = MySQLConnector(app,'emailValidation')

@app.route('/')
def index():
    query = 'SELECT * FROM emails'                           # define your query
    emails = mysql.query_db(query)                           # run query with query_db()
    return render_template('index.html') # pass data to our template

@app.route('/success', methods=['GET', 'POST'])
def create():
    all_the_emails = mysql.query_db('select * from emails')
    method = request.form.get('_method', '').upper()
    if method == 'DELETE':
        # first lets get the email we want to delete...
        select_query = 'select * from emails where id=:id'
        parameters = {'id': request.form['id']}
        single_email_array = mysql.query_db(select_query, parameters)

        # then let's actually delete the email we want to delete...
        delete_query = 'DELETE FROM emails WHERE id=:id'
        parameters = {'id' : request.form['id']}
        mysql.query_db(delete_query, parameters)
        return render_template('success.html', all_emails=all_the_emails, email=single_email_array[0])
    else:
        print request.form['email']
        email =  request.form['email']
        if not re.match(r"[^@]+@[^@]+\.[^@]+", email):
            session['valid_email'] = False               #if set valid_email to false....
            session['invalid_email'] = email             #if you set the email, it will keep displaying the email...
            #invalid_email depends on valid email being false in HTML
            print "email does not match!"
            return redirect ('/')
        else:
            # here you add email to db in sql (it's the query)

            session['valid_email'] = True                #.... you must also have a way to set to true
            # session['invalid_email'] = ""                 #unless you reset it to an empty string (it doesn't show up)
            #Insert the email in the database
            insert_query = 'insert into emails(email, created_at, updated_at) values (:email, now(), now())'
            parameters = {'email' : email}
            print "email matches"
            inserted_email_id = mysql.query_db(insert_query,parameters) # the query execution returns the ID of the new row

            #Get the row from the database of said email, so that we have a created_at & updated_at
            select_query = 'select * from emails where id=:id'
            parameters = {'id': inserted_email_id}
            single_email_array = mysql.query_db(select_query, parameters)
            print inserted_email_id
            return render_template('success.html', email=single_email_array[0], all_emails=all_the_emails)


app.run(debug=True)
