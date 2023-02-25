import re

class Exercise1:

    def serial_average(self,inputString):
            inputPattern="\\d{3}-\\d{2}.\\d{2}-\\d{2}.\\d{2}"
            if bool(re.search(inputPattern,inputString)):
                arr = inputString.split('-', 3)
                avg = (((float(arr[1]) + float(arr[2])) / 2))
                return (f"{arr[0]}-%05.2f"%avg)
            return ("invalid input string")