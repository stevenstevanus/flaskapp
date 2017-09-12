from bottle import route, run, template

@route('/hello/<name>')
def index(name):
	return template('<text-align="center"><h3>Hello {{name}}</h3>!', name=name)

run(host='0.0.0.0', port=8000)
