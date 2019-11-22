# Class which creates a code and takes user input => gives feedback to the user according to mastermind rules
# Author:: Elina Eickstaedt, Kathleen Neitzel

class CodeMakerMachine
  def initialize
    @code = []
    @possible_numbers = [1, 2, 3, 4, 5, 6]
  end

  def new_code
    @code = @possible_numbers.sample(4)
  end

  # Doubles with other methode implement in own module
  def check_combination(user_input)
    wh = []
    bh = []
    user_input.each_with_index do |value, idx|
      bh << value if value.eql?(@code[idx])
    end
    user_input.each do |value|
      wh << value if @code.include?(value) && !wh.include?(value) && !bh.include?(value)
    end
    { black_hits: bh.length, white_hits: wh.length }
  end
end


