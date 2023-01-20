
def hashModification(inputHash)
    if inputHash.empty?
        return "empty"
    end
    inputHash.each_key do |key|
        if !key.is_a? Integer
            inputHash.delete(key)
        end
        if key.is_a? Integer and key % 2==0
            inputHash.delete(key)
        end
    end
    return inputHash
end

hashes = {1=>2, 2=>4,"name":"harish", 3=>6, :code=>"hello"}
puts hashModification(hashes)