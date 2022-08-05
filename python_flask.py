import flask;
app = flask(__name__)


@app.route('/')
def hello():
    return 'hello'