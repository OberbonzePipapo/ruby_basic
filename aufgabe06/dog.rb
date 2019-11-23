# Description
# Author:: Elina Eickstaedt

require_relative 'pet'

class Dog < Pet
  def initialize(name, birthday, owner)
    check_if_person(owner)

    super(name, birthday)
    @owner = owner
  end
end