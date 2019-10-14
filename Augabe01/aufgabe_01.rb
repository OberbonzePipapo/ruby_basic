# Program to play around with strings
# Author:: Elina Eickstaedt

puts "Hi, welcome to the first Ruby assignment! Lets mix up some strings, please enter a string here!"

input = gets.chomp
puts(input.reverse)
puts(input.downcase)
puts(input.upcase)
puts(input.gsub(/[aeiou]/, '*'))
puts(input.gsub(/[[b-zäöüß]&&[^eiou]]/i, '\0o\0'))
