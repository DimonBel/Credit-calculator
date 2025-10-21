from flask import Flask
from flask_restful import Api


app = Flask(__name__)
api = Api(app)


@app.route("/")
def hello_world():
    return "Hello World"


app.debug = True


from src import routes
