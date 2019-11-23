# Class which describes all the attributes and possible actions for Pets of the type Cat, enheritates the Superclass Pet
# Author:: Elina Eickstaedt

require_relative 'pet'

class Cat < Pet

  def initialize(name, birthday)
    super(name, birthday)
    # Set lives to 9 as a constant as given in the exercise description
    @butlers = []
    @lives = 9
  end

  def add_butler(butler)
    check_if_person(butler)

    @butlers << butler
    self
  end

  def remove_butler(butler)
    check_if_employed(butler)

    @butlers.delete(butler)
    self
  end

  def order_food(butler)
    check_if_employed(butler)

    butler.feed(self)
    self
  end

  def order_petting(butler)
    check_if_employed(butler)

    butler.pet(self)
    self
  end

  protected

  # Implementing this only in the cat class so only cats can kill cats
  def kill(victim)
    victim.die
  end

  private

  def check_if_employed(person)
    check_if_person(person)
    raise ArgumentError, 'Parameter Butler does not exist in Butlers Array!!' unless @butlers.include?(person)
    self
  end

end