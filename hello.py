from flask import Flask
app = Flask(__name__)

@app.route('/hello')
def hello_world():
    return 'Hello, World!'

@app.route("/bye")
def bye():
    return "Goodbye World!"
