from flask import Flask, render_template

app = Flask(__name__)

@app.route('/')
@app.route('/index')
def index():
    return render_template('index.html')

@app.route('/favicon.ico')
@app.route('/logo.png')
def logo():
    return app.send_static_file('logo.png')

app.run(debug=True)

