def skip_sports(arr, skip_index)
    if arr.empty?
        return "array is empty"
    end

    if skip_index>=arr.length || skip_index <-(arr.length)
        return "invalid skip index"
    end

    new_array=[]
    for i in skip_index..arr.length-1
        new_array.push("#{i}:#{arr[i]}")
    end
    return new_array
    
end
input=["Circkeet", "TT", "football", "hockey"]
puts skip_sports([],4)
