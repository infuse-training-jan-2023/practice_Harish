require 'json'
#if file exists
def modifyJsonFile(file)
    begin
        read_file =File.read(file)    
        if read_file.size==0
            return "file is empty"
        end
        data_hash = JSON.parse(read_file)
        if data_hash.size==0
            return "file is empty"
        end

        data_hash['firstname'],data_hash['lastname']= data_hash['name'].split(' ',2)
        data_hash.delete('name')
        File.write("./harish_#{Time.now.strftime("%Y-%m-%d_%H-%M-%S")}.json",JSON.dump(data_hash))
        return "file modify succefully"
    rescue
        return "file not found"
    end
        
end

puts modifyJsonFile('./test.json')