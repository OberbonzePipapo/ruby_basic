# Description
# Author:: Elina Eickstaedt
class UserInput
  def initialize
    @enteredUnit = 0
    @enteredValue = 0
    @targetUnit = 0
  end

  def get_input
    loop  do
      puts("Please enter the value and the unit you want to convert from, in the format. To end this converting journey, please type E.")
      input =  gets
      break if input.is_a?(NilClass) || (input.strip).upcase.equal?("E")
      user_input = /^(?<value>[0-9.]+) ?(?<enteredunit>[[:alpha:]]+)?$/.match(input.strip)
      @enteredUnit = user_input["enteredunit"]
      @enteredValue = user_input["value"]
      puts("Now please enter the ")
    rescue Interrupt
      break
    end
    puts("Ok, lets stop this converting journey")
  end

  #private
  # method which calls the right unit converter from coversion class
  #def call_converter
  #  if LengthConversion.units.include?(enteredUnit)
   #   unit = LengthConversion.new(enteredUnit, enteredValue)
   # end
  #end
end


result = (UserInput.new)
result.get_input
