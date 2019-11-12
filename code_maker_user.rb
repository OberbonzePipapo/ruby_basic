# Class which deals with user input, with user as the "Codemaker" according to the mastermind rules
# Author:: Elina Eickstaedt, Kathleen Neitzel

require_relative 'code_breaker_machine'

class CodeMakerUser
  def initialize
    @code = code_input
  end

  def code_input
    puts("Please enter the code that should be broken by the machine")
    @code = gets.chomp.scan(/[0-9]+/).map{|elem| elem.to_i}
    if @code.length != 4
      raise ArgumentError, "Please enter 4 characters and a valid input in the form => 1, 2, 3, 4"
    end
    @code
  end

  # Method need still implementation, get computer code and let the user rate the code
  def code_check(computer_input)
    wh = []
    bh = []
    puts("Please rate the Code guessed by the computer")
    CodeBreakerMachine.last_rating({ black_hits: bh.length, white_hits: wh.length })
  end

end

