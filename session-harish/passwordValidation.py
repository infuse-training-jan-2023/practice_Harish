import re
from flask import Flask, Response,request

app = Flask(__name__)

@app.route('/validate-password',methods =['POST'])
def get_data():
    request_data = request.get_json()
    password = request_data['password']
    validPasswordPattern ="(?=.*[A-Z])(?=.*[a-z])(?=.*[!@#$%^&*])[a-zA-Z\d!@#$%^&*]{8,}"
    if re.match(validPasswordPattern,password):
        return Response("{'status': 'valid password'}", mimetype='application/json', status=200)
    else:
        return Response("{'status': 'invalid password'}", mimetype='application/json', status=200) 
if __name__ == '__main__':
    app.run(debug=True, port=5000,host='0.0.0.0')