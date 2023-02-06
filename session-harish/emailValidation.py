import re
from flask import Flask, Response,request

app = Flask(__name__)

@app.route('/email-validate',methods =['POST'])
def get_data():
    request_data = request.get_json()
    email = request_data['email']
    validate_email(email)

def validate_email(email):    
    validEmailpattern ="^[a-zA-Z0-9]+[a-zA-Z0-9\._]+[@]\w{2,8}[.]\w{2,4}$"
    if re.match(validEmailpattern, email):
        return Response("{'status': 'valid email'}", mimetype='application/json', status=200)
    else:
        return Response("{'status': 'invalid email'}", mimetype='application/json', status=200)
if __name__ == '__main__':
    app.run(debug=True, port=5000,host='0.0.0.0')