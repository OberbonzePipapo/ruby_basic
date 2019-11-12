# Class which implements the Knuth five guess algorithm to make the computer break the code entered by the User
# Author:: Elina Eickstaedt, Kathleen Neitzel


class CodeBreakerMachine

  @@last_rating = nil
  def self.last_rating(new)
    @@last_rating = new
  end

  def initialize
    @possible_combinations = generate_possible_combinations
    @last_guess = nil
    @start_combination = [1, 1, 2, 2]
  end

  # Implemented Knuths "Five Guess Algorithm" => https://en.wikipedia.org/wiki/Mastermind_(board_game)
  def five_guess
    # !Attention permutation is always random, use a array variable here
    return @start_combination if @last_guess.nil?
    update_guessed_code
    @last_guess = @possible_combinations.sample
  end

  private

  # generate all possible combinations
  def generate_possible_combinations
    [1, 2, 3, 4, 5, 6].repeated_permutation(4).to_a
  end

  # Update the possible combinations based on the last guess
  def update_guessed_code
    @possible_combinations.select! do |value|
      code_check(value, @last_guess) == @@last_rating
    end

  end

  # Doubles with the user Checker methode, if possible implement as a module
  def code_check(computer_input, secret_code)
    wh = []
    bh = []
    computer_input.each_with_index do |value, idx|
      bh << value if value.eql?(secret_code[idx])
    end
    computer_input.each do |value|
      wh << value if secret_code.include?(value) && !wh.include?(value) && !bh.include?(value)
    end
    { black_hits: bh.length, white_hits: wh.length }
  end

end

