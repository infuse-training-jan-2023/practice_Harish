class Exercise2

    def start_and_length(arr,start_pos,length)
        if arr.empty?
            return "array is empty"
        end
        if start_pos>arr.length ||start_pos<(-arr.length)
            return "index out of bound"
        end
        return length > 0  ? arr[start_pos,length] : "length should be greater than zero"
    end
end   

input = [9, 5, 1, 2, 3, 4, 0, -1]

exercise2_obj = Exercise2.new()
puts exercise2_obj.start_and_length([],-9,2)
