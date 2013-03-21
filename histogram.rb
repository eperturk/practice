def initial(arr = [1, 1, 2, 2, 2, 3, 3, 4, 4, 4, 4])
  arr_unique = arr.uniq

  new_arr = []
  arr_unique.each{ |number| new_arr << [number,arr.count(number)]}
  p new_arr
end

initial


