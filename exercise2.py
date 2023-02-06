class Exercise2:
    def validate_input(self,arr,start_pos=0,end_pos=0,index=0):
        listLength = len(arr)
        if(listLength == 0):
            return "array is empty"
        if(index < 0 or index >= listLength):
            return "index out of bound"
        is_start_pos_valid = (start_pos>=listLength or start_pos<-listLength or start_pos>(end_pos+listLength))
        is_end_pos_valid = (end_pos>=listLength or end_pos<-(listLength))      
        if(is_end_pos_valid or is_start_pos_valid):
            return "array index out of bound"
        return 1

    def element_at(self,arr,index):
        result =self.validate_input(arr=arr, index=index)
        if (result != 1): 
            return result
        return arr[index]
            
    def start_and_length(self,arr,start_pos,length):
            result =self.validate_input(arr=arr,start_pos=start_pos)
            if (result != 1): 
                return result
            if(length > 0):
                endIdx=length+abs(start_pos)
                return arr[start_pos:endIdx]
            else:
                return "length  should be greater than zero"
            
    def inclusive_range(self,arr,start_pos,end_pos):
            result =self.validate_input(arr,start_pos,end_pos)
            if (result != 1): 
                return result 
            return arr[start_pos:end_pos-1]   

    def non_inclusive_range(self,arr,start_pos,end_pos): 
            result =self.validate_input(arr,start_pos,end_pos)
            if (result != 1): 
                return result
            return arr[start_pos:end_pos]

