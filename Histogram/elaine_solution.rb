
def histogram(array)
	array.uniq.map{|number| [number, array.select{|n| n == number}.count]}
end

p histogram([22,33,22,44,44,44,22,33,33,33,33])
p histogram([1,1,1,1,1,1,1,1,1])
p histogram([])
p histogram(["a","apple","b","b","b","works with words!"])