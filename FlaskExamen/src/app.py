from flask import Flask, jsonify
from flask_cors import CORS
from database import mysql
from blueprints.routes import pizzeria_bp 
from config import config
 
app = Flask(__name__)
app.config.from_object(config['development'])

mysql.init_app(app)

app.register_blueprint(pizzeria_bp)
CORS(app)
 
def pagina_no_encontrada(error):
    return "<h1>Pagina no encontrada</h1>"
 
if __name__=="__main__":
    app.register_error_handler(404, pagina_no_encontrada)
    app.run(host='0.0.0.0', port=5000)