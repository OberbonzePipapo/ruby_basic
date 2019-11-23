#
# Author:: Elina Eickstaedt

require_relative 'being'


class Person < Being

  attr_reader :pets, :owners

  def initialize(name)
    super
    @pets = []
    @owners = []
  end

  def add_pet(pet)
    raise ArgumentError, 'Parameter pet always has to be of class Dog!' unless pet.is_a?(Dog)
    @pets << pet
    self
  end

  def add_owner(cat)
    raise ArgumentError, 'Parameter owner always has to be of class Cat!' unless cat.is_a?(Cat)
    @owners << cat
    cat.add_butler(self)
    self
  end

  def feed(pet)
    raise ArgumentError, 'Parameter pet always has to be of class Pet!' unless pet.is_a?(Pet)

    pet.fed_by(self)
  end

  def pet(pet)
    raise ArgumentError, 'Parameter pet always has to be of class Pet!' unless pet.is_a?(Pet)

    pet.petted_by(self)
  end

  def ==(other)
    return true if self.equal?(other)
    return false unless other.is_a?(Person)
    return false unless @pets == other.pets
    return false unless @owners == other.owners
    super
  end
  alias :eql? :==

  def hash
    super + [@pets, @owners].hash
  end




end