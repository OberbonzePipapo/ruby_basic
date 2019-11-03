#Description
#Author:: Elina Eickstaedt

require_relative 'code_maker_machine'
class CodeBreakerUser
  def input
    puts("Please enter your guessed code in the form => 1, 2, 3, 4")
    input = gets.chomp.scan(/[0-9]+/).map{|elem| elem.to_i}
    if input.length != 4
      raise ArgumentError, "Please enter 4 characters and a valid input in the form => 1, 2, 3, 4"
    end
    input
   end

  def game
    new_game = CodeMakerMachine.new
    new_game.new_code
    10.times do
      result = new_game.check_combination(input)
      puts("You had #{result[:black_hits]} blackhits and #{result[:white_hits]} whitehits")
    end

  end
end

CodeBreakerUser.new.game