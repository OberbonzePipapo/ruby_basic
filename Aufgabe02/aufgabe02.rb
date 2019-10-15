#Methode which takes an array as param and multiply all Numeric values with each other
#Author:: Elina Eickstaedt

def array_pro(arr)
  #Deletion of non numeric elements and multiplication of all Numeric elements
  arr.select{ |e| e.is_a?(Numeric) }.reduce(1,:*)
end

puts array_pro([1,3])