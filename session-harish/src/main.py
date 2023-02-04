from flask import Flask, Response,request,send_file
from item_actions import ItemActions
import json

app = Flask(__name__)
item_actions = ItemActions()


@app.route('/item', methods=['GET'])
def get_all_items():
    item=item_actions.get_all_items()
    return Response(json.dumps(item), mimetype='application/json',status=200)

@app.route('/item/<int:id>', methods=['GET'])
def get_items(id):
    item=item_actions.get_item(id)
    if item == {}:
        return Response("{'error': 'Erro addding the item'}", mimetype='application/json', status=500)
    return Response(json.dumps(item), mimetype='application/json',status=200)

@app.route('/item', methods = ['POST'])
def add_new_item():
    request_data = request.get_json()
    item = request_data['item']
    reminder = request_data['reminder']
    added_item = item_actions.add_item(item, reminder)
    if added_item == {}:
        return Response("{'error': 'Erro addding the item'}", mimetype='application/json', status=500)
    return Response(json.dumps(added_item), mimetype='application/json', status=201)

@app.route("/item/<int:id>", methods=["DELETE"])
def delete_one_item(id):
    delete_item=item_actions.delete_item(id)
    if delete_item == {}:
        return Response("{'error':'Erro deleting the item'}", mimetype='application/json', status=500)
    return Response(json.dumps(delete_item), mimetype='application/json', status=200)

@app.route("/item/<int:id>", methods=["PUT"])
def update_item(id):
    request_data = request.get_json()
    update_item = item_actions.update_item(id,request_data)
    if update_item == {}:
        return Response("{'error': 'Erro addding the item'}", mimetype='application/json', status=500)
    return Response(json.dumps(update_item), mimetype='application/json', status=201)

@app.route('/register' , methods=["POST"])
def adduser():
    request_data =request.get_json()
    ursername = request_data['username']
    email = request_data['email']
    phone = request_data['phone']
    added_user = item_actions.add_user(ursername, email, phone)
    if added_user == {}:
        return Response("{'error': 'Erro addding the item'}", mimetype='application/json', status=500)
    return Response('{"message":"user added successfully"}', mimetype='application/json', status=201)

@app.route('/save' , methods=["GET"])
def save_data():
    item_actions.save_data()
    return Response('{"status":"data saved successfully"}',mimetype='application/json', status=200)
    #send_file('../out.csv')

if __name__ == '__main__':
    app.run(debug=True, port=5000,host='0.0.0.0')

