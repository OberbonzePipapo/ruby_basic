#Methods to implement the collatz conejecture, checks if it is one and return the index
#Author:: Elina Eickstaedt

#Method which gets a start_value and calculates what the next value would be according to the Collatz conjecture (explanation here => https://en.wikipedia.org/wiki/Collatz_conjecture)
def collatz(current_value)
  if current_value.even?
    current_value / 2
  else
    3 * current_value + 1
  end
end

#Method which checks if the conjecture is a collatz conjecture and return the start_value and the index
def is_collatz_conjecture(start_value, n)
  new_conjecture = [start_value]
  #index to check if n-steps are already reached
  i = 0

  while (new_conjecture.last(4) != [1, 4, 2, 1]) and (i <= n)
    new_conjecture << collatz(new_conjecture.last)
    i += 1
  end
  [start_value, new_conjecture.length - 4]
end

puts(is_collatz_conjecture(1345, 120))