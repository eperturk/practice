array = ["cat", "banana", "dog", "nana", "walk", "walker", "dogwalker", "pea", "nut", "but", "peanut", "butter", "peanutbutter"]

def ComboMeal(array)
final_array = []
middle_array = []
max = array.count - 1

j = 0
i = 0
for i in i..max

  for j in j..max

    if array[i].include?(array[j])
      puts "#{array[i]} has #{array[j]} in it"
      p array[i].length

    else
      #puts "#{array[i]} does not have #{array[j]} in it"
    end
    j =+ 1
  end

end
puts ""
puts "it was a wild success...   . .. .. "
end





ComboMeal(array)