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
      if number == /^([1-6.]+)/
        @input << number.to_i
        i += 1
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