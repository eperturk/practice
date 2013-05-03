class StringAndArrayProblems
	def replace_space(input_string)
		input_string.gsub(" ",'%20')
	end

	def longword(words_array)
		longword = ""
		count = 0
		length = 0
		words_array.map{|word|
			current_word_count = 0
			#compare each word to the words and find the highest count of matches
			otherwords = words_array - [word]
			otherwords.each{|other_word|
				current_word_count +=1 if (word.include?(other_word))
			}
			longword = word if current_word_count > 1 && word.length > length
			count = current_word_count
			length = word.length
		}
		longword
	end

	def find_subsquare(matrix)
		col_counter = 0
		col_head = 0
		row_head = 
		row_counter = 0
		matrix.each_with_index{|row, row_index|
			#for each string of consecutive black's, check the column for = consecutive blacks
			top_black_edge = adjacent_b(row)
			top_black_edge.each{|edge|
				#length of edge
				top_length = edge[1] - edge[0] + 1
				length = top_length
				#check left, right and bottom
				left_array = matrix[row_index..matrix.count-1][edge[0]]
				left_edge = adjacent_b(left_array) # count the length here, if not equal, clip the right check end matrix
				#left edge will never be nil since the first index is gauranted to be B
				left_length = left_edge.first[1] - left_edge.first[0] + 1
				length = left_length if left_length < top_length
				
				right_array = matrix[row_index..length+row_index - 1][edge[0] + length - 1]
				right_edge = adjacent_b(right_array) #count the length here, if not equal, clip the bottom row check

				#bottom edge is going to be on the row_index + (min (left_length,right_length))
			}


		}	
	end #def end

	def adjacent_b(array)
		#return start and end index pairs for B's
		head = 0
		tail = 0
		prev = "W"
		adjacent_list = []
		array.each_with_index{|pixel, index|
			if pixel == B && prev == "W"
				head = index
				tail = index
			elsif pixel == B && prev == "B"
				tail = index
			else
				ajacent_list << [head,tail]
			end
			prev = pixel
		}
	end
end

test = StringAndArrayProblems.new

puts test.replace_space("A quick brown fox jumped over a lazy dog")
puts test.replace_space("Too much TV will rot your brainz ")
puts test.replace_space("    hi   ")
puts test.replace_space("BOOM!")
puts test.replace_space("%20 %20")

puts test.longword(["cat", "banana", "dog", "nana", "walk", "walker", "dogwalker"])
puts test.longword(["bluetunafishwhale","fish","bluefish","tuna","whale","whaletunafish"])
puts test.longword(["a","b","efgcba","efg","c","ef","abcdef"])
