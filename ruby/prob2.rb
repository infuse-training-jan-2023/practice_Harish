
    def element_at(arr,index)
        if arr.empty?
            return "array is empty"
        end
        return index>=arr.length() || index<-(arr.length) ? "array index out of bound" : arr.at(index)
    end

    def start_and_length(arr,start_pos,length)
        if arr.empty?
            return "array is empty"
        end
        if start_pos>arr.length ||start_pos<(-arr.length)
            return "index out of bound"
        end
        return length > 0  ? arr[start_pos,length] : "length  should be greater than zero"
    end

    def inclusive_range(arr,start_pos,end_pos)
        if arr.empty?
            return "array is empty"
        end
        return start_pos>arr.length || start_pos<-(arr.length) || end_pos>arr.length || end_pos<-(arr.length())||start_pos>(end_pos+arr.length) ? "array index out of bound" : arr[start_pos-1..end_pos-1]      
    end

    def non_inclusive_range(arr,start_pos,end_pos)
        if arr.empty?
            return "array is empty"
        end
        end_pos=end_pos-1
        return start_pos>arr.length || start_pos<-(arr.length) || end_pos>arr.length || end_pos<-(arr.length()) ||start_pos>(end_pos+arr.length)? "array index out of bound" : arr[start_pos..end_pos]
       
    end

   

input = [9, 5, 1, 2, 3, 4, 0, -1]
puts start_and_length([],-9,2)
 element_at([],-9)
inclusive_range(input,1, -8)
non_inclusive_range(input,2,-2)
 

  