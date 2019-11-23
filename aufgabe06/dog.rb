# Class which describes all the attributes and possible actions for Pets of the type Dog, inheritances the Superclass Pet
# Author:: Elina Eickstaedt

require_relative 'pet'

class Dog < Pet

  attr_reader :owner

  def initialize(name, birthday, owner)
    check_if_person(owner)

    super(name, birthday)
    @owner = owner
    owner.add_pet(self)
  end
  def ==(other)
    return true if self.equal?(other)
    return false unless other.is_a?(Dog)
    return false unless @owner == other.owner
    super
  end
  alias :eql? :==

  def hash
    super + [@owner].hash
  end
end