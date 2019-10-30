#Methode which takes an array as param and adds up all Numeric values
#Author:: Elina Eickstaedt

def array_sum(arr)
 #Deletion of non numeric elements and addition of all Numeric elements
 arr.select{ |e| e.is_a?(Numeric) }.reduce(0,:+)
end

puts array_sum([1.0,"2",3])
