def histogram(arr = [22,33,22,44,44,44,22,33,33,33,33])
	arr_u = arr.uniq
	final_arr = []
	arr_u.each{|x| final_arr << [x,arr.count(x)]}
	p final_arr
end

histogram

histogram(["this", "this", "is", "a", "a", "a", "test"])



