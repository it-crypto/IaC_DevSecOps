from flask import Flask

# Flask(__name__) -- creates the Flask application
app = Flask(__name__)

# @app.route('/') --  connects the home URL (/) to a function
# The function returns text shown in the browser
@app.route('/')
def hello_world():
    return 'Hello, World!'

# app.run() starts the local server
app.run()