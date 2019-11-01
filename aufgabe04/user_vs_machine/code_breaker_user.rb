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
      @input << gets.chomp
      i += 1
    end
    puts(@input)
   end

  def start(input)
    game = CoderMakerMachine.new
  end
end

test = CodeBreakerUser.new

test.input