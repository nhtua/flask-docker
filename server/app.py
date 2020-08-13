from flask import Flask

app = Flask(__name__)

@app.route('/')
def home():
    return '_home page_'

@app.route('/hello')
def hello():
    return 'hello world!'
