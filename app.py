from flask import Flask
app = Flask('hello-jenkins')

@app.route('/')
def hello():
  return "Hello all!\n"

if __name__ == '__main__':
  app.run(host = '0.0.0.0', port = 8080)
