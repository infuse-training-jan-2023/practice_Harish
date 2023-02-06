import re
from flask import Flask, Response,request

app = Flask(__name__)

@app.route('/validate-password',methods =['POST'])
def get_data():
    request_data = request.get_json()
    password = request_data['password']
    return validate_password(password)
    
def validate_password(password):
    validPasswordPattern ="(?=.*[A-Z])(?=.*[a-z])(?=.*[!@#$%^&*])[a-zA-Z\d!@#$%^&*]{8,}"
    if re.match(validPasswordPattern,password):
        return {'status': 'valid password'}
    else:
        return {'status': 'invalid password'} 
if __name__ == '__main__':
    app.run(debug=True, port=5000,host='0.0.0.0')