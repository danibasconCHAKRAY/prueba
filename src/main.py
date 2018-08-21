from flask import Flask
app = Flask(__name__)

def suma(a,b):
	return a+b

@app.route("/")
def hello():
	res = suma(1,2)
	return "Hello World! "+str(res)

if __name__ == "__main__":
	app.run("0.0.0.0", port=5000)
