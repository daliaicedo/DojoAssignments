from flask import Flask, render_template, request, redirect
app = Flask(__name__)

@app.route('/', methods=['GET'])
def index():
    return render_template("index.html")

@app.route('/result', methods = ['GET', 'POST'])
def result():
    if request.method == 'POST':
        n = request.form['name']
        c = request.form['cities']
        l = request.form['languages']

        return render_template('result.html', name = n, cities = c, languages = l)

    return redirect('/')
app.run(debug=True) 
