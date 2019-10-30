#Description
#Author:: Elina Eickstaedt
class CodeBreakerUser
  def initialize
    @input = []
  end

  def input
    i = 1
    while i <= 4
      puts("Please enter the #{i}. number of your code")
      number = gets.chomp
      number.to_i
      if number.is_a?(Integer)
        if number < 7
          @input << number
          i += 1
        else
          raise ArgumentError, "Please enter a number between 1-6"
        end
      else
        raise ArgumentError, "Please enter something valid"
      end

    end
    puts(@input)
   end

  def start(input)
    game = CoderMakerMachine.new
  end
end

test = CodeBreakerUser.new

test.input