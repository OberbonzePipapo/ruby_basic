# Superclass for all existing beings in this universe
# Author:: Elina Eickstaedt

class Being
  # individual name of every existing being in this universe
  def initialize(name)
    @name = name
  end

  def to_s
    "#{self.class.name} | Name: #{@name}"
  end

  def ==(other)
    return true if self.equal?(other)
    return false unless other.is_a?(Being)
    @name == other.name
  end
  alias :eql? :==

  protected

  attr_reader :name

end