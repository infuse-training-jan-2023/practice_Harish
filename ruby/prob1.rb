class Problem1
    def serial_average(input)
        if input.match(/[0-9]{3}-[0-9]{2}.[0-9]{2}-[0-9]{2}.[0-9]{2}/)
          arr = input.split('-', 3)
          avg = (((arr[1].to_f + arr[2].to_f) / 2))
          return ("#{arr[0]}-%05.2f"%avg)
        end
        else
          return "invalid input"
      end
end
Problem1_ref= Problem1.new()
input = '124-01.00-02.00'
puts Problem1_ref.serial_average(input)