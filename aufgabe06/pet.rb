# Superclass of all existing pets in this universe
# Author:: Elina Eickstaedt

require 'date'
require_relative 'being'

class Pet < Being

  def initialize(name, birthday)
    super(name)
    # Date.parse raises an error if a non valid date was entered
    @birthday = Date.parse(birthday)
    @lives = 1
  end

  def to_s
    "#{super}, Birthday: #{@birthday}, Lives: #{@lives}"
  end

  def ==(other)
    return true if self.equal?(other)
    return false unless other.is_a?(Pet)
    return false unless @lives == other.lives
    return false unless @birthday == other.birthday
    super
  end
  alias :eql? :==

  protected

  attr_reader :birthday, :lives

  def die
    @lives -= 1 if @lives > 1
    @lives.clone
  end

  def dead?
    @lives == 0
  end

  private

  def check_if_person(object)
    raise ArgumentError, 'Parameter Butler always has to be of class Person!' unless object.is_a?(Person)
    self
  end

end