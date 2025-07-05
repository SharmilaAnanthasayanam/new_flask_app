from flask import Flask

app = Flask(__name__)

@app.route("/")
def hello_world():
    return "<p>Hello, World, This is a new app!</p>"

app.run(host="0.0.0.0")