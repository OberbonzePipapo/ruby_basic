#Description
#Author:: Elina Eickstaedt

def array_pro(arr)
  arr.delete_if{ |e| !e.is_a?(Numeric) }.reduce(1,:*)
end

puts array_pro([1,3])