#Multiplication of to numbers with the russian farmer multiplication methode
#Author:: Elina Eickstaedt

def russianfarme_multi(a,b)
  step_hash = Hash.new(0)
  result = 0
  while a < 1
    step_hash[a] = b
    a = a / 2
    b = b * 2
  end
  #implent selection of b were a is even
  step_hash.each {|k, v| if k.even?
                           result = result + v
                         end}
  result
end

puts(russianfarme_multi(11, 42))
