# File to demonstrate created classes in a loop
# Author: : Elina Eickstaedt

require_relative 'cube'
require_relative 'cube_biased'

rolls = [10, 100, 1000, 10000]

def do_the_roll(my_cube, how_many_rolls)
  result = {1 => 0, 2 => 0, 3 => 0, 4 => 0, 5 => 0, 6 => 0}

  (1..how_many_rolls).each { result[my_cube.roll] += 1 }

  result
end

def print_result(result)
  result.each { |k, v| puts "#{k} : #{v}"}
end

rolls.each { |n|
  puts("Normal cube rolls : #{n}" )
  print_result(do_the_roll(Cube.new, n))

  puts("Cube 50% bias rolls : #{n}")
  print_result(do_the_roll(CubeBiased.new(0.5), n))

  puts("Cube 20% bias rolls : #{n}")
  print_result(do_the_roll(CubeBiased.new(0.2), n))
  
  puts("Cube 50% bias rolls : #{n}")
  print_result(do_the_roll(CubeBiased.new(0.3), n))
}