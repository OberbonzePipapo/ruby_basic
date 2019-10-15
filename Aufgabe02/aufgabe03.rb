#Description
#Author:: Elina Eickstaedt

#Method which gets a start_value and calculates what the next value would be according to the Collatz conjecture (explenation here => https://en.wikipedia.org/wiki/Collatz_conjecture)
def collatz(current_value)
  if current_value.even?
    current_value / 2
  else
    3 * current_value + 1
  end
end

#Method which checks if the conjecture is a collatz conjecture and return the start_value and the index
def is_collatz_conjecture(start_value)
  new_conjecture = [start_value]

  while new_conjecture.last(4) != [1, 4, 2, 1]
    new_conjecture << collatz(new_conjecture.last)
  end

  puts("The start value was #{start_value}, this conjecture is a collatz conjecture and the index is #{new_conjecture.length - 4}")
  puts(new_conjecture)
end

is_collatz_conjecture(1345)