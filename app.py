from flask import Flask, render_template
from asgiref.wsgi import WsgiToAsgi

app = Flask(__name__)

@app.route('/')
def index():
    return render_template('base.html')

asgi_app = WsgiToAsgi(app)