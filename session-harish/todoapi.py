import requests
import json
from flask import Flask, Response,request

app = Flask(__name__)

@app.route('/todo/<int:num>',methods =['GET'])
def get_data(num):
    if isinstance(num, int) and num in range(1,200):
        url = "https://jsonplaceholder.typicode.com/todos/{}".format(num)
        res = requests.get(url)
        res_data=res.text
        return Response(res_data , mimetype='application/json', status=200)
    return Response('{"message": "Invalid number supplied"}' , mimetype='application/json', status=200)
if __name__ == '__main__':
    app.run(debug=True, port=5000,host='0.0.0.0')