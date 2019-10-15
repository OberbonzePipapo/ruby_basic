#Approximation of pi
#Author:: Elina Eickstaedt

#Rename me!!
def aprox_pi(k)
  ((-1) ** k).fdiv((2 * k) + 1)
end

def close_pi(n)
  pi = 0
  for i in (0..n)
    pi += aprox_pi(i)
  end
  puts(pi*4)
end

close_pi(100000)