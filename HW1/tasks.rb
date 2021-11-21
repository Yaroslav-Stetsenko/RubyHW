
p '1. Дан целочисленный массив. 
Необходимо вывести вначале его элементы с четными индексами, а затем - с нечетными.'
array = [1,2,3,4,5,6,7,8,9,10]
a = []
array.each_with_index do |e,i| a << e if i.even?
end
b =[]
array.each_with_index do |e,i| b<<e if i.odd?
end
p a.join(' , ') + (' , ') + b.join(' , ')
p '--------------'
p '2. Дан целочисленный массив. 
Необходимо вывести вначале его элементы с нечетными индексами, а затем - четными.'
p b.join(' , ') + (' , ') + a.join(' , ')
p '--------------'
p '3. Дан целочисленный массив. 
Вывести номер первого из тех его элементов, которые удовлетворяют двойному неравенству: A[0] < A[i] < A[-1]. 
Если таких элементов нет, то вывести [ ].'
array = [22,3,3,5,5,10,7,30,24,25]
p array.index { |i| array[0] < i && i < array[-1] } || []
p '--------------'
p '4. Дан целочисленный массив. 
Вывести номер последнего из тех его элементов, которые удовлетворяют двойному неравенству: A[0] < A[i] < A[-1]. 
Если таких элементов нет, то вывести [ ].'
array = [1,2,3,4,5,6,7,8,9,10]
z = []
array.index { |i| z << i if array[0] < i && i < array[-1] }
p z.last
p '--------------'
p '5. Дан целочисленный массив. 
Преобразовать его, прибавив к четным числам первый элемент. Первый и последний элементы массива не изменять.'
array = [6,23,37,40,51,63,70,80,94,10]
   array.index(array.first)+1.upto(array.rindex(array.last)-1) do |i|
      case array[i] %2 == 0
       when true
          array[i]+=array.first
      end
    end
p array.join(' , ')
p '--------------'
p '6. Дан целочисленный массив. 
Преобразовать его, прибавив к четным числам последний элемент. 
Первый и последний элементы массива не изменять.'
array = [6,23,37,40,51,63,70,80,94,10]
   array.index(array.first)+1.upto(array.rindex(array.last)-1) do |i|
      case array[i] %2 == 0
       when true
          array[i]+=array.last
      end
    end
p array.join(' , ')
p '--------------'
p '7. Дан целочисленный массив. 
Преобразовать его, прибавив к нечетным числам последний элемент. 
Первый и последний элементы массива не изменять.'
array = [6,23,37,40,51,63,70,80,94,10]
   array.index(array.first)+1.upto(array.rindex(array.last)-1) do |i|
      case array[i] %2 == 0
       when false
          array[i]+=array.last
      end
    end
p array.join(' , ')
p '--------------'
p '8. Дан целочисленный массив. 
Преобразовать его, прибавив к нечетным числам первый элемент. 
Первый и последний элементы массива не изменять.'
array = [6,23,37,40,51,63,70,80,94,10]
   array.index(array.first)+1.upto(array.rindex(array.last)-1) do |i|
      case array[i] %2 == 0
       when false
          array[i]+=array.first
      end
    end
p array.join(' , ')
p '--------------'
p '9. Дан целочисленный массив. 
Заменить все положительные элементы на значение минимального.'
array = [6,23,37,40,51,63,70,80,94,10]
  min = array.min(1)
  array.each_with_index do |val,i|
    if array[i]>0
      array[i]=min
    end
  end
p array.join(' , ')
p '--------------'
p '10. Дан целочисленный массив. 
Заменить все положительные элементы на значение максимального.'
array = [6,23,37,40,51,63,70,80,94,10]
  max = array.max(1)
  array.each_with_index do |val,i|
    if array[i]>0
      array[i]=max
    end
  end
p array.join(' , ')
p '--------------'
p '11. Дан целочисленный массив. 
Заменить все отрицательные элементы на значение минимального.'
array = [6,23,37,-40,51,63,70,-80,94,-10]
  min = array.min(1)
  array.each_with_index do |val,i|
    if array[i]<0
      array[i]=min
    end
  end
p array.join(' , ')
p '--------------'
p '12. Дан целочисленный массив. 
Заменить все отрицательные элементы на значение максимального.'
array = [6,23,37,-40,51,63,70,-80,94,10]
  max = array.max(1)
  array.each_with_index do |val,i|
    if array[i]<0
      array[i]=max
    end
  end
p array.join(' , ')
p '--------------'
p '13. Дан целочисленный массив. 
Осуществить циклический сдвиг элементов массива влево на одну позицию.'
array = [6,23,37,-40,51,63,70,-80,94,10]
p array.rotate(1).join(' , ')
p '--------------'
p '14. Дан целочисленный массив. 
Осуществить циклический сдвиг элементов массива вправо на одну позицию.'
array = [6,23,37,-40,51,63,70,-80,94,10]
p array.rotate(-1).join(' , ')
p '--------------'
p '15. Дан целочисленный массив. 
Проверить, образуют ли элементы арифметическую прогрессию. 
Если да, то вывести разность прогрессии, если нет - вывести nil.'
p (' did not do the task ')
p '--------------'
p '16. Дан целочисленный массив. 
Найти количество его локальных максимумов.'
p (' did not do the task ')
p '--------------'
p '17. Дан целочисленный массив. 
Найти количество его локальных максимумов.'
array = [6,23,37,-40,51,63,70,-80,94,10]
p ( (1..array.size-2).to_a.select{ |i| (array[i] > array[i-1])&&(array[i] > array[i+1]) }.size )
p '--------------'
p '18. Дан целочисленный массив. 
Найти количество его локальных минимумов.'
array = [6,23,37,-40,51,63,70,-80,94,10]
p ( (1..array.size-2).to_a.select{ |i| (array[i] < array[i-1])&&(array[i] < array[i+1]) }.size )
p '--------------'
p '19. Дан целочисленный массив. 
Найти максимальный из его локальных максимумов.'
array = [6,23,37,-40,51,63,70,-80,94,10]
z = (1..array.size-2).to_a.select{ |i| (array[i] > array[i-1])&&(array[i] > array[i+1]) }
p z.max
p '--------------'
p '20. Дан целочисленный массив. Найти минимальный из его локальных минимумов.'
array = [6,23,37,-40,51,63,70,-80,94,10]
z = (1..array.size-2).to_a.select{ |i| (array[i] < array[i-1])&&(array[i] < array[i+1]) }
p z.min
p '--------------'
p '21. Дан целочисленный массив. 
Определить количество участков, на которых его элементы монотонно возрастают.'
p (' did not do the task ')
p '--------------'
p '22. Дан целочисленный массив. 
Определить количество участков, на которых его элементы монотонно убывают.'
p (' did not do the task ')
p '--------------'
p '23. Дано вещественное число R и массив вещественных чисел. 
Найти элемент массива, который наиболее близок к данному числу.'
R,array = 13.0, [6.5, 23.4, 37.8, 40.6, 51.1, 63.6, 70.6, 80.1, 94.3, 10.6]
array = array.sort
b = array.select{ |i| i<R }
c = array.select{ |i| i>R }
d = b.max
e = c.min
if (R-d) > (e-R)
  p e 
else
  p d 
end
p '--------------'
p '24. Дано вещественное число R и массив вещественных чисел. 
Найти элемент массива, который наименее близок к данному числу.'
array = array.sort
b = array.select{ |i| i<R }
c = array.select{ |i| i>R }
d = b.max
e = c.min
if (R-d) < (e-R)
  p e 
else
  p d 
end
p '--------------'
p '25. Дан целочисленный массив. 
Преобразовать его, вставив перед каждым отрицательным элементом нулевой элемент.'
p (' did not do the task ')
p '--------------'
p '26. Дан целочисленный массив. 
Преобразовать его, вставив перед каждым отрицательным элементом нулевой элемент.'
p (' did not do the task ')
p '--------------'
p '27. Дан целочисленный массив. 
Преобразовать его, вставив после каждого положительного элемента нулевой элемент.'
p (' did not do the task ')
p '--------------'
p '28. Дан целочисленный массив. 
Преобразовать его, вставив после каждого отрицательного элемента нулевой элемент.'
p (' did not do the task ')
p '--------------'
p '29. Дан целочисленный массив. Упорядочить его по возрастанию.'
array = [6,23,37,-40,51,63,70,-80,94,10]
p array1 = array.sort.join(' , ')
p '--------------'
p '30. Дан целочисленный массив. Упорядочить его по убыванию.'
array = [6,23,37,-40,51,63,70,-80,94,10]
p array1 = array.sort.reverse.join(' , ')
p '--------------'
p '31. Дан целочисленный массив. 
Вывести индексы массива в том порядке, в котором соответствующие им элементы образуют убывающую последовательность.'
array = [6,23,37,-40,51,63,70,-80,94,10]
p (0...array.size).sort_by{ |i| array[i] }.reverse.join(' , ')
p '--------------'
p '32. Дан целочисленный массив. 
Вывести индексы массива в том порядке, в котором соответствующие им элементы образуют возрастающую последовательность.'
array = [6,23,37,-40,51,63,70,-80,94,10]
p (0...array.size).sort_by{ |i| array[i] }.join(' , ')
p '--------------'
p '33. Дан целочисленный массив. Найти индекс минимального элемента.'
array = [6,94,-80,-40,94,63,70,-80,94,10]
p array.index(array.min)
p '--------------'
p '34. Дан целочисленный массив. Найти индекс максимального элемента.'
array = [6,94,-80,-40,94,63,70,-80,94,10]
p array.index(array.max)
p '--------------'
p '35. Дан целочисленный массив. Найти индекс первого минимального элемента.'
array = [6,94,-80,-40,94,63,70,-80,94,10]
p array.index(array.min)
p '--------------'
p '36. Дан целочисленный массив. Найти индекс первого максимального элемента.'
array = [6,94,-80,-40,94,63,70,-80,94,10]
p array.index(array.max)
p '--------------'
p '37. Дан целочисленный массив. Найти индекс последнего минимального элемента.'
p (' did not do the task ')
p '--------------'
p '38. Дан целочисленный массив. Найти индекс последнего максимального элемента.'
p (' did not do the task ')
p '--------------'
p '39. Дан целочисленный массив. Найти количество минимальных элементов.'
p (' did not do the task ')
p '--------------'
p '40. Дан целочисленный массив. Найти количество максимальных элементов.'
p (' did not do the task ')
p '--------------'
p '41. Дан целочисленный массив. Найти минимальный четный элемент.'
array = [6,23,37,-40,51,63,70,-80,94,10]
p array.select{ |i| i.even? }.min
p '--------------'
p '42. Дан целочисленный массив. Найти минимальный нечетный элемент.'
array = [6,23,37,-40,51,63,70,-80,94,10]
p array.select{ |i| i.odd? }.min
p '--------------'
p '43. Дан целочисленный массив. Найти максимальный четный элемент.'
array = [6,23,37,-40,51,63,70,-80,94,10]
p array.select{ |i| i.even? }.max
p '--------------'
p '44. Дан целочисленный массив. Найти максимальный нечетный элемент.'
array = [6,23,37,-40,51,63,70,-80,94,10]
p array.select{ |i| i.odd? }.max
p '--------------'
p '45. Дан целочисленный массив. Найти минимальный положительный элемент.'
array = [6,23,37,-40,51,63,70,-80,94,10]
p array.select{|i| i>=0}.min
p '--------------'
p '46. Дан целочисленный массив. Найти максимальный отрицательный элемент.'
array = [6,23,37,-40,51,63,70,-80,94,10]
p array.select{|i| i<=0}.max
p '--------------'
p '47. Дан целочисленный массив и интервал a..b. Найти минимальный из элементов в этом интервале.'
p (' did not do the task ')
p '--------------'
p '48. Дан целочисленный массив и интервал a..b. Найти максимальный из элементов в этом интервале.'
p (' did not do the task ')
p '--------------'
p '49. Дан целочисленный массив. Найти количество элементов, расположенных перед первым минимальным.'
array = [6,23,37,-40,51,63,70,-80,94,10]
p array.index(array.min)
p '--------------'
p '50. Дан целочисленный массив. Найти количество элементов, расположенных перед первым максимальным.'
array = [6,23,37,-40,51,63,70,-80,94,10]
p array.index(array.max)
p '--------------'
p '51. Дан целочисленный массив. Найти количество элементов, расположенных после первого максимального.'
array = [6,23,37,-40,51,63,70,-80,94,10]
p array.reverse.index(array.max)
p '--------------'
p '52. Дан целочисленный массив. Найти количество элементов, расположенных после первого минимального.'
array = [6,23,37,-40,51,63,70,-80,94,10]
p array.reverse.index(array.min)
p '--------------'
p '53. Дан целочисленный массив. Найти количество элементов, расположенных перед последним максимальным.'
p (' did not do the task ')
p '--------------'
p '54. Дан целочисленный массив. Найти количество элементов, расположенных перед последним минимальным.'
p (' did not do the task ')
p '--------------'
p '55. Дан целочисленный массив. Найти количество элементов, расположенных после последнего максимального.'
p (' did not do the task ')
p '--------------'
p '56. Дан целочисленный массив. Найти количество элементов, расположенных после последнего минимального.'
p (' did not do the task ')
p '--------------'
p '57. Дан целочисленный массив. Найти индекс первого экстремального (то есть минимального или максимального) элемента.'
p (' did not do the task ')
p '--------------'
p '58. Дан целочисленный массив. Найти индекс последнего экстремального (то есть минимального или максимального) элемента.'
p (' did not do the task ')
p '--------------'
p '59. Дан целочисленный массив. Найти количество элементов, между первым и последним минимальным.'
array = [6,23,37,-40,-80,63,70,-80,94,10]
p (array.rindex(array.min) - array.index(array.min) - 1)
p '--------------'
p '60. Дан целочисленный массив. Найти количество элементов, между первым и последним максимальным.'
array = [6,23,94,-40,-80,63,70,-80,94,10]
p (array.rindex(array.max) - array.index(array.max) - 1)
p '--------------'
p '61. Дан целочисленный массив. Найти два наибольших элемента.'
array = [6,23,94,-40,-80,63,70,-80,94,10]
p array.sort.uniq.last 2
p '--------------'
p '62. Дан целочисленный массив. Найти два наименьших элемента.'
array = [6,23,94,-40,-80,63,70,-80,94,10]
p array.sort.uniq.first 2
p '--------------'
p '63. Дан целочисленный массив. Найти максимальное количество подряд идущих минимальных элементов.'
p (' did not do the task ')
p '--------------'
p '64. Дан целочисленный массив. Найти максимальное количество подряд идущих минимальных элементов.'
p (' did not do the task ')
p '--------------'
p '65. Дан целочисленный массив. Вывести вначале все его четные элементы, а затем - нечетные.'
array = [6,23,94,-40,-80,63,70,-80,94,10]
a = []
array.each do |e| a << e if e.even?
end
b =[]
array.each do |e| b << e if e.odd?
end
p a.join(' , ') + (' , ') + b.join(' , ')
p '--------------'
p '66. Дан целочисленный массив. Вывести вначале все его нечетные элементы, а затем - четные.'
array = [6,23,94,-40,-80,63,70,-80,94,10]
a = []
array.each do |e| a << e if e.even?
end
b =[]
array.each do |e| b << e if e.odd?
end
p b.join(' , ') + (' , ') + a.join(' , ')
p '--------------'
p '67. Дан целочисленный массив. Проверить, чередуются ли в нем четные и нечетные числа.'
p (' did not do the task ')
p '--------------'
p '68. Дан целочисленный массив. Проверить, чередуются ли в нем четные и нечетные числа.'
p (' did not do the task ')
p '--------------'
p '69. Дано вещественное число R и массив вещественных чисел. 
Найти два элемента массива, сумма которых наиболее близка к данному числу.'
p (' did not do the task ')
p '--------------'
p '70. Дано вещественное число R и массив вещественных чисел. 
Найти два элемента массива, сумма которых наименее близка к данному числу.'
p (' did not do the task ')
p '--------------'
p '71. Дан целочисленный массив. Удалить все элементы, встречающиеся менее двух раз.'
array = [6,23,94,-40,94,23,70,23,94,23]
skip_elements = array.uniq.select do |value|
  array.count(value) <= 2
end
skip_elements.each do |value|
 array.delete(value)
end 
 p skip_elements
p '--------------'
p '72. Дан целочисленный массив. Удалить все элементы, встречающиеся более двух раз.'
array = [6,23,94,-40,94,23,70,23,94,23]
skip_elements = array.uniq.select do |value|
  array.count(value) >= 2
end
skip_elements.each do |value|
 array.delete(value)
end 
 p skip_elements
p '--------------'
p '73. Дан целочисленный массив. Удалить все элементы, встречающиеся ровно два раза.'
array = [6,23,94,-40,94,94,70,22,94,23]
skip_elements = array.uniq.select do |value|
  array.count(value) == 2
end
skip_elements.each do |value|
 array.delete(value)
end 
 p skip_elements
p '--------------'
p '74. Дан целочисленный массив. Удалить все элементы, встречающиеся ровно три раза.'
array = [6,23,94,-40,94,94,70,22,94,23]
skip_elements = array.uniq.select do |value|
  array.count(value) == 3
end
skip_elements.each do |value|
 array.delete(value)
end 
 p skip_elements
p '--------------'
p '75. Дан целочисленный массив. Найти среднее арифметическое модулей его элементов.'
array = [6,23,94,-40,94,94,70,22,94,23]
p (array.inject(0){ |sum, i| sum + i.abs }.to_f) / array.size
p '--------------'
p '76. Дан целочисленный массив. Найти среднее арифметическое квадратов его элементов.'
array = [6,23,94,-40,94,94,70,22,94,23]
sum=0
for a in array do
    sum=sum+a*a
end
p sum/array.size
p '--------------'
p '77. Дано целое число. Найти сумму его цифр.'
p (' did not do the task ')
p '--------------'
p '78. Дано целое число. Найти произведение его цифр.'
p (' did not do the task ')
p '--------------'



















