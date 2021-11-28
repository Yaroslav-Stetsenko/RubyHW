array = [621, 445, 147, 159, 430, 222, 482, 44, 194, 522, 652, 494, 14, 126, 532, 387, 441, 471, 337, 446, 18, 36, 202, 574, 556, 458, 16, 139, 222, 220, 107, 82, 264, 366, 501, 319, 314, 430, 55, 336]
p array.count
p '---------------------'
p array.rotate
p '---------------------'
p array.max
p '---------------------'
p array.min
p '---------------------'
p array.sort
p '---------------------'
p array.sort.reverse
p '---------------------'
p array.select{ |e| e.even? }
p '---------------------'
p array.select{ |e| e % 3 == 0 }
p '---------------------'
p array.select.uniq
p '---------------------'
p array.map{ |e| e/10.0}
p '---------------------'
c=array.index(array.max)
b=array.index(array.min)
a=array.max
array[c]=array[b]
array[b]=a
p array
p '---------------------'
a = (array.index array.min)-1
p array[a]
p '---------------------'
p array.min(3)
p '---------------------'
array_number = []
array_letters = []
array_number[1..26]=('a'..'z').to_a
array.each do |el|
	array_letters << array_number.values_at(el) if el <=
	(array_number.size - 1)
end
p array_letters.flatten
