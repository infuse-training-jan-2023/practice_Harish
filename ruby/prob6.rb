require 'base64'
def encodingBase64(file)
    begin
        file_content =File.read(file)
        if file_content.size()==0
            return "file empty"
        end   
        line_to_be_replace="the string that will be base encoded"
        encoded_line=Base64.encode64(line_to_be_replace).chomp()
        file_content["the string that will be base encoded"] =encoded_line
        write_file=File.open('harish.txt','w')
        write_file.write(file_content)
        return "encoding succesfull"
    rescue
       return "file doesnt exists"

   end
        
end

puts encodingBase64('./te.txt')