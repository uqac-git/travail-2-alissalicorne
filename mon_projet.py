from flask import Flask, render_template, request, send_from_directory
app = Flask(__name__, static_url_path='')

@app.route('/static/<path:path>')
def send_static(path):	# Pouvoir aller a n'importe quel fichier dans /static/
    return send_from_directory('static', path)

@app.route('/')
def accueil():	# Aller a la page d'accueil
   return render_template('accueil.tpl')

@app.route('/reponse', methods = ['POST', 'GET'])
def reponse():	# Aller a la page de reponse apres envoi du formulaire
   if request.method == 'POST':
      reponse = request.form.get('liste_algo')
      return render_template("reponse.html", reponse = reponse)

@app.errorhandler(404)
def page_not_found(e):
    # note that we set the 404 status explicitly
    return render_template('erreur404.html'), 404

@app.errorhandler(Exception)
def global_exception_handler(err):
	#print("In global_exception_handler", err)
	#return "From global_exception_handler\n"
	print("ouhhhh")
	return "Erreur autre que 404"





if __name__ == '__main__':
   app.run(debug = True)