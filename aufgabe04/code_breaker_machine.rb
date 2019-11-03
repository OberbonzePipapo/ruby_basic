#Description
#Author:: Elina Eickstaedt

#require_relative 'code_maker_user'

class CodeBreakerMachine
  def generate_codes
    [1, 2, 3, 4, 5, 6].repeated_permutation(4).to_a
  end

  def guess_code


  end

end

#puts(CodeBreakerMachine.new.generate_codes.to_s)