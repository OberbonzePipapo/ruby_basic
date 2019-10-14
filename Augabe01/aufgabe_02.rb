# Program to read, write and open files
# Author:: Elina Eickstaedt
# Gross und Kleinschreibung eleminieren => alles klein
# Entfernen von Wortzeichen
# Wortzeichen umdrehen (reverse) ein Wort pro zeile => split.join("\n")
# Anzahl mehrfach vorkommender Worte zählen

puts("Geben Sie den Dateipfad fuer die Datei ein die Sie bearbeiten moechten!")
input_file = gets.chomp

#2.1 Text einlesen, hier Text auch in einen array schreiben um spaeter damit arbeiten zu koennen

lines = []

File.open(input_file, 'r:UTF-8') do |file|
  file.each do |line|
    lines << line
    puts(line)
  end
end

#2.2
words = []

lines.each do |line|
  words.concat(line.downcase.scan(/[a-zäöüß]+/))
end

#puts(words)

# 2.3

File.open("data/output.txt", 'w') do |file|
  words.each do |word|
    file.puts(word.reverse!)
  end
end

#puts(File.open("data/output.txt", 'r').read)

#2.4

words_counter = Hash.new(0)

words.each do |word|
  words_counter[word] += 1
end

words_counter.sort_by{ |_k, v| v }.each { |word, count| puts("#{word} kommt #{count} vor") }
