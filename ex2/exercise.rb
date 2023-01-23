require 'json'

def modifyJsonFile(file)
    puts file
    begin
        read_file =File.read(file)    
        if read_file.size==0
            return "file is empty"
        end
        data = JSON.parse(read_file)
        puts data
        if data.size==0
            return "file is empty"
        end
        
        data["Coach"]="Rahul Dravid"
        data["Captain"]="Rohit Sharma"
        data["Vice Captain"]="KL Rahul"

        puts ARGV[0]
        File.write(ARGV[0],JSON.dump(data))
        return "file modify succefully"
    rescue
        return "file not found"
    end
        
end

puts modifyJsonFile(ENV['FILE'])
