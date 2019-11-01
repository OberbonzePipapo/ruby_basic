# Class which creates a code and takes userinput => gives feedback to the user according to masterclass rules
#Author:: Elina Eickstaedt
class CoderMakerMachine
  def initialize
    @code = [4, 3, 2, 1]
    @wh = 0
    @bh = 0
  end

  def new_code
    i = 0
    while i < 4
      @code << rand(1..6)
      i += 1
    end
    @code
  end

  def white_hits(user_input)
    i = 0
    user_input.each { |value|
      while i < @code.length
        if value <=> @code[i]
          @wh += 1
        end
        i += 1
      end
    }
    puts("You had #{@wh} white hits in this series, press enter to continue")
  end

  # method which checks for "Black Hits", which means the numbers the user entered are at the same position in the codemakers array
  def black_hits(user_input)
    i = 0
    # iterate over each value in the input_array and check at the same position in the maker arr for a match
    user_input.each { |value|
      if value == @code[i]
        @bh += 1
      end
      i += 1
    }
    puts("You had #{i} white hits in this series, press enter to continue")
  end
end


code = CoderMakerMachine.new
#puts(code.new_code)
#code.black_hits([1, 2, 3, 4])
puts(code.white_hits([1, 2, 3, 4]))