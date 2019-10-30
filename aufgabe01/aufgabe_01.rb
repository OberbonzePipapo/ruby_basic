# Program to play around with strings
# Author:: Elina Eickstaedt

puts "Hi, welcome to the first Ruby assignment! Lets mix up some strings, please enter a string here!"

input = gets.chomp.force_encoding('UTF-8')
#reversing the entered word
puts(input.reverse)

# converting everything into small letters
puts(input.downcase)

#convertig everything into uppercase letters
puts(input.upcase)

# substitute aeiou with *
puts(input.gsub(/[aeiou]/, '*'))

# Encrypt word with the code of the white rose
puts(input.gsub(/[[b-zäöüß]&&[^eiou]]/i, '\0o\0'))
