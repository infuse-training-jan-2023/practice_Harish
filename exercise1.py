import re

class Exercise1:
    def __init__(self):
        self.inputString=""
        
    def get_inputString(self,inputString):
        self.inputString = inputString
        
    def serial_average(self):
            inputPattern="\\d{3}-\\d{2}.\\d{2}-\\d{2}.\\d{2}"
            if bool(re.search(inputPattern,self.inputString)):
                arr = self.inputString.split('-', 3)
                avg = (((float(arr[1]) + float(arr[2])) / 2))
                return (f"{arr[0]}-%05.2f"%avg)
            return ("invalid input string")

exercise1_obj = Exercise1()
exercise1_obj.get_inputString('123-09.89-09.78')            
result = exercise1_obj.serial_average()
print(result)