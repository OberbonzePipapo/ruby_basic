#Aproximation of one with an accuracy of the Param EPSILON + Help Methode to calculate faculty
#Author:: Elina Eickstaedt

# calculates the faculty of a given number explanation => https://de.wikipedia.org/wiki/Fakult%C3%A4t_(Mathematik)
def faculty(n)
  k = 1
  for i in (1..(n))
    k = k * i
  end
  k
end

#Aproximation of one with an accuracy of the Param EPSILON
def aprox_one
  #fix start value of the conjecture is 2 => k = 2
  k = 2
  #variable to save the continuing value
  current_value = 0.0
  #variable to save the difference of one an the current value, also break argument
  div_conv = 1.0

  #chwe
  while div_conv > Float::EPSILON
    current_value += ((k.to_f) - 1) / ((faculty(k)).to_f)
    div_conv = (1.0 - current_value).abs
    k += 1
    puts(k)
  end
  {Value_float: current_value,Value_rational: current_value.to_r, Index: k}
end

puts(aprox_one)