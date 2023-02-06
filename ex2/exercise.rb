require 'json'

def modify_json_file(file)
    begin
        read_file =File.read(file)    
        if read_file.size==0
            return "file is empty"
        end
        data = JSON.parse(read_file)
        if data.size==0
            return "file is empty"
        end        
        data["Coach"]="Rahul Dravid"
        data["Captain"]="Rohit Sharma"
        data["Vice Captain"]="KL Rahul"
        File.write(ARGV[0],JSON.dump(data))
        return "file modify succefully"
    rescue
        return "file not found"
    end
        
end

puts modify_json_file(ENV['FILE'])
