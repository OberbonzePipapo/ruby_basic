# Class which enables the user to play the game "Mastermind"  in the Role of the Codebreaker against the computer => https://en.wikipedia.org/wiki/Mastermind_(board_game)
# Author:: Elina Eickstaedt, Kathleen Neitzel

require_relative 'code_maker_machine'
class CodeBreakerUser
  # Method which interacts with user and gets proper input from the console
  def input
    puts("Please enter your guessed code in the form => 1, 2, 3, 4")
    # Gets the input from the console and splits numbers from spaces and non numerics
    input = gets.chomp.scan(/[0-9]+/).map{|elem| elem.to_i}

    # Checks if four elements where entered and raises an Argument error otherwise
    if input.length != 4
      raise ArgumentError, "Please enter 4 characters and a valid input in the form => 1, 2, 3, 4"
    end
    input
   end

  #
  def game
    new_game = CodeMakerMachine.new
    new_game.new_code
    # Implement while or repeat until loop here think about the break point
    10.times do
      result = new_game.check_combination(input)
      puts("You had #{result[:black_hits]} blackhits and #{result[:white_hits]} whitehits")
    end

  end
end

CodeBreakerUser.new.game