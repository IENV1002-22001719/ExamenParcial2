from flask import Blueprint, jsonify, request
from database import mysql
 
pizzeria_bp = Blueprint('pizzeria', __name__, url_prefix='/api')
 
@pizzeria_bp.route("/pedidos", methods=['POST'])
def guardar_pedido():
    datos = request.get_json()
    if not datos:
        return jsonify({"mensaje": "No se recibieron datos", "exito": False}), 400
        
    try:
        cursor = mysql.connection.cursor()
        # 1. Insertar el encabezado del pedido
        sql_pedido = """INSERT INTO pedidos (nombre_cliente, direccion, telefono, fecha, total) 
                        VALUES (%s, %s, %s, %s, %s)"""
        cursor.execute(sql_pedido, (
            datos['nombre_cliente'], datos['direccion'], datos['telefono'], 
            datos['fecha'], datos['total']
        ))
        id_pedido = cursor.lastrowid # Obtenemos el ID generado
        
        # 2. Insertar el detalle de las pizzas
        sql_detalle = """INSERT INTO detalle_pedido (id_pedido, tamano, ingredientes, cantidad, subtotal) 
                         VALUES (%s, %s, %s, %s, %s)"""
        for pizza in datos['detalles']:
            cursor.execute(sql_detalle, (
                id_pedido, pizza['tamano'], pizza['ingredientes'], 
                pizza['cantidad'], pizza['subtotal']
            ))
            
        mysql.connection.commit()
        cursor.close()
        return jsonify({"mensaje": "Pedido guardado correctamente", "exito": True, "id_pedido": id_pedido}), 201
        
    except Exception as e:
        mysql.connection.rollback()
        return jsonify({"mensaje": f"Error al guardar: {str(e)}", "exito": False}), 500

@pizzeria_bp.route("/ventas-dia/<string:dia>", methods=['GET'])
def ventas_por_dia(dia):
    try:
        cursor = mysql.connection.cursor()
        # DAYNAME() en MySQL devuelve el día en inglés (Monday, Tuesday...) 
        sql = "SELECT * FROM pedidos WHERE DAYNAME(fecha) = %s"
        cursor.execute(sql, (dia,))
        pedidos = cursor.fetchall()
        cursor.close()
        return jsonify({"pedidos": pedidos, "exito": True}), 200
    except Exception as e:
        return jsonify({"mensaje": str(e), "exito": False}), 500

@pizzeria_bp.route("/ventas-mes/<string:mes>", methods=['GET'])
def ventas_por_mes(mes):
    try:
        cursor = mysql.connection.cursor()
        # MONTHNAME() devuelve el mes en inglés (January, February...)
        sql = "SELECT * FROM pedidos WHERE MONTHNAME(fecha) = %s"
        cursor.execute(sql, (mes,))
        pedidos = cursor.fetchall()
        cursor.close()
        return jsonify({"pedidos": pedidos, "exito": True}), 200
    except Exception as e:
        return jsonify({"mensaje": str(e), "exito": False}), 500

@pizzeria_bp.route("/pedido/<int:id_pedido>", methods=['GET'])
def ver_detalle_pedido(id_pedido):
    try:
        cursor = mysql.connection.cursor()
        cursor.execute("SELECT * FROM pedidos WHERE id_pedido = %s", (id_pedido,))
        pedido = cursor.fetchone()
        
        if not pedido:
            return jsonify({"mensaje": "Pedido no encontrado", "exito": False}), 404
            
        cursor.execute("SELECT * FROM detalle_pedido WHERE id_pedido = %s", (id_pedido,))
        detalles = cursor.fetchall()
        cursor.close()
        
        return jsonify({"pedido": pedido, "detalles": detalles, "exito": True}), 200
    except Exception as e:
        return jsonify({"mensaje": str(e), "exito": False}), 500