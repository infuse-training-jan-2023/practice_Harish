import requests
import json
from flask import Flask, Response,request

app = Flask(__name__)
@app.route('/todo/<int:num>',methods =['GET'])
def get_data(num):
    return get_todo(num)
    
    
def get_todo(num):    
    if isinstance(num, int) and num in range(1,200):
        url = "https://jsonplaceholder.typicode.com/todos/{}".format(num)
        res = requests.get(url)
        return res.json() 
    return {"message": "Invalid number supplied"}
if __name__ == '__main__':
    app.run(debug=True, port=5000,host='0.0.0.0')