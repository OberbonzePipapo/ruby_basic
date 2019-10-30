# Class which creates a code and takes userinput => gives feedback to the user according to masterclass rules
#Author:: Elina Eickstaedt
class CoderMakerMachine
  def initialize
    @code = []
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
    work_arr = @code
    user_input.each { |value|
      while i < work_arr.length
        if value == work_arr[i]
          @wh += 1
          work_arr.delete(i)
          break
        else
          i += 1
        end
      end
    }

  end

  def black_hits(user_input)
    user_input.each { |value|

    }
    end
end


code = CoderMakerMachine.new
puts(code.new_code)