class Exercise2:
    def element_at(self,arr,index):
        listLength = len(arr)
        if(listLength == 0):
            return "array is empty"
        if(index < 0 or index >= listLength):
            return "index out of bound"
        return arr[index]
            
                

    def start_and_length(self,arr,start_pos,length):
            listLength = len(arr)
            if(listLength == 0):
                return "array is empty"
            if (start_pos>listLength or start_pos<-listLength):
                return "index out of bound"
            if(length > 0):
                endIdx=length+abs(start_pos)
                return arr[start_pos:endIdx]
            else:
                return "length  should be greater than zero"
            
    def inclusive_range(self,arr,start_pos,end_pos):
            listLength = len(arr)
            if(listLength == 0):
                return "array is empty"
            is_start_pos_valid =(start_pos>=listLength or start_pos<-listLength or start_pos>(end_pos+listLength) )
            is_end_pos_valid=(end_pos>listLength or end_pos<-(listLength))      
            if(is_end_pos_valid or is_start_pos_valid):
                return "array index out of bound" 
            return arr[start_pos:end_pos-1]   

#todo :check test on one statement missing
    def non_inclusive_range(self,arr,start_pos,end_pos):
            listLength = len(arr)
            if(listLength == 0):
                return "array is empty"
            is_start_pos_valid =(start_pos>=listLength or start_pos<-listLength or start_pos>(end_pos+listLength) )
            is_end_pos_valid=(end_pos>=listLength or end_pos<-(listLength))      
            if(is_end_pos_valid or is_start_pos_valid):
                return "array index out of bound" 
            return arr[start_pos:end_pos]

