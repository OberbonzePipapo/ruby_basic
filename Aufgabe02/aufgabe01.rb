#Description
#Author:: Elina Eickstaedt

def array_sum(arr)
 arr.delete_if{ |e| !e.is_a?(Numeric) }.reduce(0,:+)
end

puts array_sum([1.0,"2",3])
