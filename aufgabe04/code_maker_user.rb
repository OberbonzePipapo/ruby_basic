#Description
#Author:: Elina Eickstaedt
#
require_relative 'code_breaker_machine'

class CodeMakerUser
  def initialize
    @code
  end

  def code_input
    puts("Please enter the code that should be broken by the machine")
    @code = gets.chomp.scan(/[0-9]+/).map{|elem| elem.to_i}
    if code.length != 4
      raise ArgumentError, "Please enter 4 characters and a valid input in the form => 1, 2, 3, 4"
    end
    code
  end

  def code_check(computer_input)
    wh = []
    bh = []
    computer_input.each_with_index do |value, idx|
      bh << value if value.equal?(@code[idx])
      wh << value if @code.include?(value) && !wh.include?(value) && !bh.include?(value)
    end
    { black_hits: bh.length, white_hits: wh.length }
  end

end

maker = CodeMakerUser.new
maker.code_check(CodeBreakerMachine.new.generate_codes)