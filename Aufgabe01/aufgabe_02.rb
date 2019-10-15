# Program to read, write,open and manipulate files
# Author:: Elina Eickstaedt

puts("Please enter the filepath to the file you would like to manipulate")
input_file = gets.chomp

#2.1 Read access on the file, putting it out on the command line.
# Saved all lines of the file in an array to later work with it

lines = []

File.open(input_file, 'r:UTF-8') do |file|
  file.each do |line|
    lines << line
    puts(line)
  end
end

#2.2 Created new array and saved all word seperated from each other in downcases, and deleted non wordsigns
words = []

lines.each do |line|
  words.concat(line.downcase.scan(/[a-zäöüß]+/))
end

#kept in code in case of testing later
#puts(words)

# 2.3 Reversed all words and saved it in a new output file

File.open("data/output.txt", 'w') do |file|
  words.each do |word|
    file.puts(word.reverse!)
  end
end


#kept in code in case of testing later
#puts(File.open("data/output.txt", 'r').read)

#2.4 Here words get counted accordingly to how often they are appering in the file. And printing it sorted on the command line

#Hash that counts words
words_counter = Hash.new(0)

# Count words
words.each do |word|
  words_counter[word] += 1
end

#print out sorted
words_counter.sort_by{ |_k, v| v }.each { |word, count| puts("#{word} kommt #{count} vor") }
