#Approximation of pi
#Author:: Elina Eickstaedt



def aprox_pi()
  #intialize variables to save the current and last value to compare them later
  pi_last = 0.0
  pi_current = 0.0
  average_last = 0.0
  average_current = 0.0
  difference_averages = 1.0
  k = 0

  while difference_averages >= Float::EPSILON
    pi_last = pi_current
    pi_current += (((-1) ** k.to_f) / ((2 * k.to_f) + 1))
    average_last = average_current
    average_current = (pi_last + pi_current) / 2
    difference_averages = (average_last - average_current).abs
    k += 1
  end
  {pi_float: average_current * 4, pi_rational: average_current.to_r * 4}
end

puts(aprox_pi())