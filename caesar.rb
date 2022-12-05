


def caesar(string, integer) 
  rotated = []
  string.bytes.map do
    |value| 
    if value >=65 && value <= 90
      if value + integer <= 90 && value + integer >= 65
      rotated.push(value + integer)
      else 
        if value + integer >= 65 
        rotated.push(64 + (integer - (90 - value)))
        else rotated.push(91 - (integer + (value - 65)).abs)
        end
      end
    elsif value >=97 && value <= 122
      if value + integer <= 122 && value + integer >= 97
      rotated.push(value + integer)
      else
        if value + integer >= 97 
        rotated.push(96 + (integer - (122 - value)))
        else rotated.push(123 - (integer + (value - 97)).abs)
        end
      end
    end
  end
  p rotated.map {|convert| convert.chr }
end

caesar("Bb", -5)
#   elsif current >=65 && current <= 91
#   end

#   else puts "Not a valid string"
#   end
# end

