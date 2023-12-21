from flask import Flask

app = Flask(__name__)

@app.route('/')
def hello_world():
    return 'Check if its working2'

if __name__ == '__main__':
    app.run(debug=True)
 